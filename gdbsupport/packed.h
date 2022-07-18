/* Copyright (C) 2022 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#ifndef PACKED_H
#define PACKED_H

#include "traits.h"
#include <atomic>

/* Each instantiation and full specialization of the packed template
   defines a type that behaves like a given scalar type, but that has
   byte alignment, and, may optionally have a smaller size than the
   given scalar type.  This is typically used as alternative to
   bit-fields (and ENUM_BITFIELD), when the fields must have separate
   memory locations to avoid data races.  */

/* We need gcc_struct on Windows GCC, as otherwise the size of e.g.,
   "packed<int, 1>" will be larger than what we want.  */
#if defined _WIN32
# define ATTRIBUTE_GCC_STRUCT __attribute__((__gcc_struct__))
#else
# define ATTRIBUTE_GCC_STRUCT
#endif

template<typename T, size_t Bytes = sizeof (T)>
struct ATTRIBUTE_GCC_STRUCT packed
{
public:
  packed () noexcept = default;

  packed (T val)
  {
    m_val = val;

    /* Ensure size and aligment are what we expect.  */
    gdb_static_assert (sizeof (packed) == Bytes);
    gdb_static_assert (alignof (packed) == 1);

    /* Make sure packed can be wrapped with std::atomic.  */
#if HAVE_IS_TRIVIALLY_COPYABLE
    gdb_static_assert (std::is_trivially_copyable<packed>::value);
#endif
    gdb_static_assert (std::is_copy_constructible<packed>::value);
    gdb_static_assert (std::is_move_constructible<packed>::value);
    gdb_static_assert (std::is_copy_assignable<packed>::value);
    gdb_static_assert (std::is_move_assignable<packed>::value);
  }

  operator T () const noexcept
  {
    return m_val;
  }

private:
  T m_val : (Bytes * HOST_CHAR_BIT) ATTRIBUTE_PACKED;
};

/* Add some comparisons between std::atomic<packed<T>> and packed<T>
   and T.  We need this because even though std::atomic<T> doesn't
   define these operators, the relational expressions still work via
   implicit conversions.  Those wouldn't work when wrapped in packed
   without these operators, because they'd require two implicit
   conversions to go from T to packed<T> to std::atomic<packed<T>>
   (and back), and C++ only does one.  */

#define PACKED_ATOMIC_OP(OP)						\
  template<typename T, size_t Bytes>					\
  bool operator OP (const std::atomic<packed<T, Bytes>> &lhs,		\
		    const std::atomic<packed<T, Bytes>> &rhs)		\
  {									\
    return lhs.load () OP rhs.load ();					\
  }									\
									\
  template<typename T, size_t Bytes>					\
  bool operator OP (T lhs, const std::atomic<packed<T, Bytes>> &rhs)	\
  {									\
    return lhs OP rhs.load ();						\
  }									\
									\
  template<typename T, size_t Bytes>					\
  bool operator OP (const std::atomic<packed<T, Bytes>> &lhs, T rhs)	\
  {									\
    return lhs.load () OP rhs;						\
  }									\
									\
  template<typename T, size_t Bytes>					\
  bool operator OP (const std::atomic<packed<T, Bytes>> &lhs,		\
		    packed<T, Bytes> rhs)				\
  {									\
    return lhs.load () OP rhs;						\
  }									\
									\
  template<typename T, size_t Bytes>					\
  bool operator OP (packed<T, Bytes> lhs,				\
		    const std::atomic<packed<T, Bytes>> &rhs)		\
  {									\
    return lhs OP rhs.load ();						\
  }

PACKED_ATOMIC_OP (==)
PACKED_ATOMIC_OP (!=)
PACKED_ATOMIC_OP (>)
PACKED_ATOMIC_OP (<)
PACKED_ATOMIC_OP (>=)
PACKED_ATOMIC_OP (<=)

#undef PACKED_ATOMIC_OP

#endif
