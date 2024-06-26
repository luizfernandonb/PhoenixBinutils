source_sh ${srcdir}/emulparams/dt-relr.sh

ARCH=aarch64
MACHINE=
NOP=0x1f2003d5

SCRIPT_NAME=elf
ELFSIZE=64
OUTPUT_FORMAT="elf64-littleaarch64"
BIG_OUTPUT_FORMAT="elf64-bigaarch64"
LITTLE_OUTPUT_FORMAT="elf64-littleaarch64"
NO_REL_RELOCS=yes

TEMPLATE_NAME=elf
EXTRA_EM_FILE=aarch64elf

GENERATE_SHLIB_SCRIPT=yes
GENERATE_PIE_SCRIPT=yes

MAXPAGESIZE="CONSTANT (MAXPAGESIZE)"
COMMONPAGESIZE="CONSTANT (COMMONPAGESIZE)"
SEPARATE_GOTPLT=24
IREL_IN_PLT=

TEXT_START_ADDR=0x400000

DATA_START_SYMBOLS='PROVIDE (__data_start = .);';

# AArch64 does not support .s* sections.
NO_SMALL_DATA=yes

OTHER_BSS_SYMBOLS="${CREATE_SHLIB+PROVIDE (}__bss_start__ = .${CREATE_SHLIB+)};"
OTHER_BSS_END_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_bss_end__ = .${CREATE_SHLIB+)}; ${CREATE_SHLIB+PROVIDE (}__bss_end__ = .${CREATE_SHLIB+)};"
OTHER_END_SYMBOLS="${CREATE_SHLIB+PROVIDE (}__end__ = .${CREATE_SHLIB+)};"

OTHER_SECTIONS='.note.gnu.arm.ident 0 : { KEEP (*(.note.gnu.arm.ident)) }'
ATTRS_SECTIONS='.ARM.attributes 0 : { KEEP (*(.ARM.attributes)) KEEP (*(.gnu.attributes)) }'
# Ensure each PLT entry is aligned to a cache line.
PLT=".plt          ${RELOCATING-0} : ALIGN(16) { *(.plt)${RELOCATING+${IREL_IN_PLT+ *(.iplt)}} }"

# Linux modifies the default library search path to first include
# a 64-bit specific directory.
case "$target" in
  aarch64*-linux*)
    case "$EMULATION_NAME" in
      aarch64linux*) LIBPATH_SUFFIX=64 ;;
    esac
    ;;
esac

ELF_INTERPRETER_NAME=\"/lib/ld-linux-aarch64.so.1\"
