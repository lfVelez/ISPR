#pragma line 1 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul_test.cpp"
#pragma line 1 "<interno>"
#pragma line 1 "<línea-de-órdenes>"
#pragma line 1 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul_test.cpp"
#pragma line 66 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul_test.cpp"
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 3
#pragma empty_line
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 1 3
#pragma line 153 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 393 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/os_defines.h" 1 3
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/os_defines.h" 3
#pragma line 1 "/usr/include/features.h" 1 3 4
#pragma line 439 "/usr/include/features.h" 3 4
#pragma line 1 "/usr/include/stdc-predef.h" 1 3 4
#pragma line 440 "/usr/include/features.h" 2 3 4
#pragma line 461 "/usr/include/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
#pragma line 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
#pragma line 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 462 "/usr/include/features.h" 2 3 4
#pragma line 485 "/usr/include/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
#pragma line 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
#pragma line 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#pragma line 486 "/usr/include/features.h" 2 3 4
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/os_defines.h" 2 3
#pragma line 394 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/cpu_defines.h" 1 3
#pragma line 397 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 2 3
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 1 3
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
#pragma empty_line
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 3
#pragma empty_line
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 1 3
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 3
#pragma empty_line
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Alloc>
    class allocator;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<class _CharT>
    struct char_traits;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
           typename _Alloc = allocator<_CharT> >
    class basic_string;
#pragma empty_line
  template<> struct char_traits<char>;
#pragma empty_line
  typedef basic_string<char> string;
#pragma empty_line
#pragma empty_line
  template<> struct char_traits<wchar_t>;
#pragma empty_line
  typedef basic_string<wchar_t> wstring;
#pragma line 85 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 3
#pragma empty_line
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 1 3
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
#pragma empty_line
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/wchar.h" 1 3 4
#pragma line 27 "/usr/include/wchar.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
#pragma line 28 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
#pragma line 75 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
typedef _Complex float __cfloat128 __attribute__ ((__mode__ (__TC__)));
#pragma line 87 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
typedef __float128 _Float128;
#pragma line 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
#pragma line 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
#pragma line 214 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef float _Float32;
#pragma line 251 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float64;
#pragma line 268 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float32x;
#pragma line 285 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef long double _Float64x;
#pragma line 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
#pragma line 31 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 212 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef long unsigned int size_t;
#pragma line 36 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdarg.h" 1 3 4
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
#pragma line 39 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
#pragma line 41 "/usr/include/wchar.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h" 1 3 4
#pragma line 20 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h" 3 4
typedef unsigned int wint_t;
#pragma line 42 "/usr/include/wchar.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
#pragma line 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
#pragma line 5 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h" 2 3 4
#pragma empty_line
typedef __mbstate_t mbstate_t;
#pragma line 43 "/usr/include/wchar.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
#pragma line 44 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct _IO_FILE;
#pragma empty_line
#pragma empty_line
typedef struct _IO_FILE FILE;
#pragma line 47 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{
#pragma empty_line
  struct __locale_data *__locales[13];
#pragma empty_line
#pragma empty_line
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
#pragma empty_line
#pragma empty_line
  const char *__names[13];
};
#pragma empty_line
typedef struct __locale_struct *__locale_t;
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4
#pragma empty_line
typedef __locale_t locale_t;
#pragma line 50 "/usr/include/wchar.h" 2 3 4
#pragma line 79 "/usr/include/wchar.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct tm;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcscpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern wchar_t *wcscat (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
extern wchar_t *wcsncat (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int wcscmp (const wchar_t *__s1, const wchar_t *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
extern int wcsncmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcscasecmp (const wchar_t *__s1, const wchar_t *__s2) throw ();
#pragma empty_line
#pragma empty_line
extern int wcsncasecmp (const wchar_t *__s1, const wchar_t *__s2,
   size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcscasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
    locale_t __loc) throw ();
#pragma empty_line
extern int wcsncasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
     size_t __n, locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcscoll (const wchar_t *__s1, const wchar_t *__s2) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsxfrm (wchar_t *__restrict __s1,
         const wchar_t *__restrict __s2, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcscoll_l (const wchar_t *__s1, const wchar_t *__s2,
        locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsxfrm_l (wchar_t *__s1, const wchar_t *__s2,
    size_t __n, locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
extern wchar_t *wcsdup (const wchar_t *__s) throw () __attribute__ ((__malloc__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wcschr (wchar_t *__wcs, wchar_t __wc)
     throw () __asm ("wcschr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcschr (const wchar_t *__wcs, wchar_t __wc)
     throw () __asm ("wcschr") __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wcsrchr (wchar_t *__wcs, wchar_t __wc)
     throw () __asm ("wcsrchr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcsrchr (const wchar_t *__wcs, wchar_t __wc)
     throw () __asm ("wcsrchr") __attribute__ ((__pure__));
#pragma line 181 "/usr/include/wchar.h" 3 4
extern wchar_t *wcschrnul (const wchar_t *__s, wchar_t __wc)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcscspn (const wchar_t *__wcs, const wchar_t *__reject)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern size_t wcsspn (const wchar_t *__wcs, const wchar_t *__accept)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wcspbrk (wchar_t *__wcs, const wchar_t *__accept)
     throw () __asm ("wcspbrk") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcspbrk (const wchar_t *__wcs,
         const wchar_t *__accept)
     throw () __asm ("wcspbrk") __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wcsstr (wchar_t *__haystack, const wchar_t *__needle)
     throw () __asm ("wcsstr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcsstr (const wchar_t *__haystack,
        const wchar_t *__needle)
     throw () __asm ("wcsstr") __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcstok (wchar_t *__restrict __s,
   const wchar_t *__restrict __delim,
   wchar_t **__restrict __ptr) throw ();
#pragma empty_line
#pragma empty_line
extern size_t wcslen (const wchar_t *__s) throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wcswcs (wchar_t *__haystack, const wchar_t *__needle)
     throw () __asm ("wcswcs") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcswcs (const wchar_t *__haystack,
        const wchar_t *__needle)
     throw () __asm ("wcswcs") __attribute__ ((__pure__));
#pragma line 240 "/usr/include/wchar.h" 3 4
extern size_t wcsnlen (const wchar_t *__s, size_t __maxlen)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" wchar_t *wmemchr (wchar_t *__s, wchar_t __c, size_t __n)
     throw () __asm ("wmemchr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wmemchr (const wchar_t *__s, wchar_t __c,
         size_t __n)
     throw () __asm ("wmemchr") __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wmemcmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
    const wchar_t *__restrict __s2, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wmemmove (wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw ();
#pragma empty_line
#pragma empty_line
extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wmempcpy (wchar_t *__restrict __s1,
     const wchar_t *__restrict __s2, size_t __n)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t btowc (int __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wctob (wint_t __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int mbsinit (const mbstate_t *__ps) throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t mbrtowc (wchar_t *__restrict __pwc,
         const char *__restrict __s, size_t __n,
         mbstate_t *__restrict __p) throw ();
#pragma empty_line
#pragma empty_line
extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
         mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
extern size_t __mbrlen (const char *__restrict __s, size_t __n,
   mbstate_t *__restrict __ps) throw ();
extern size_t mbrlen (const char *__restrict __s, size_t __n,
        mbstate_t *__restrict __ps) throw ();
#pragma line 337 "/usr/include/wchar.h" 3 4
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
    const char **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsrtombs (char *__restrict __dst,
    const wchar_t **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
     const char **__restrict __src, size_t __nmc,
     size_t __len, mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsnrtombs (char *__restrict __dst,
     const wchar_t **__restrict __src,
     size_t __nwc, size_t __len,
     mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcwidth (wchar_t __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wcswidth (const wchar_t *__s, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double wcstod (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float wcstof (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
extern long double wcstold (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
#pragma line 396 "/usr/include/wchar.h" 3 4
extern _Float32 wcstof32 (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 wcstof64 (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 wcstof128 (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x wcstof32x (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x wcstof64x (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
#pragma line 428 "/usr/include/wchar.h" 3 4
extern long int wcstol (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, int __base) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern unsigned long int wcstoul (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr,
     int __base) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__
extern long long int wcstoq (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__
extern unsigned long long int wcstouq (const wchar_t *__restrict __nptr,
           wchar_t **__restrict __endptr,
           int __base) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int wcstol_l (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr, int __base,
     locale_t __loc) throw ();
#pragma empty_line
extern unsigned long int wcstoul_l (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr,
        int __base, locale_t __loc) throw ();
#pragma empty_line
__extension__
extern long long int wcstoll_l (const wchar_t *__restrict __nptr,
    wchar_t **__restrict __endptr,
    int __base, locale_t __loc) throw ();
#pragma empty_line
__extension__
extern unsigned long long int wcstoull_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       int __base, locale_t __loc)
     throw ();
#pragma empty_line
extern double wcstod_l (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, locale_t __loc)
     throw ();
#pragma empty_line
extern float wcstof_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, locale_t __loc)
     throw ();
#pragma empty_line
extern long double wcstold_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) throw ();
#pragma line 511 "/usr/include/wchar.h" 3 4
extern _Float32 wcstof32_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 wcstof64_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 wcstof128_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x wcstof32x_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x wcstof64x_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) throw ();
#pragma line 551 "/usr/include/wchar.h" 3 4
extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw ();
#pragma line 567 "/usr/include/wchar.h" 3 4
extern __FILE *open_wmemstream (wchar_t **__bufloc, size_t *__sizeloc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fwide (__FILE *__fp, int __mode) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fwprintf (__FILE *__restrict __stream,
       const wchar_t *__restrict __format, ...)
                                                           ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wprintf (const wchar_t *__restrict __format, ...)
                                                           ;
#pragma empty_line
extern int swprintf (wchar_t *__restrict __s, size_t __n,
       const wchar_t *__restrict __format, ...)
     throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int vfwprintf (__FILE *__restrict __s,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
                                                           ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int vwprintf (const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                           ;
#pragma empty_line
#pragma empty_line
extern int vswprintf (wchar_t *__restrict __s, size_t __n,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fwscanf (__FILE *__restrict __stream,
      const wchar_t *__restrict __format, ...)
                                                          ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int wscanf (const wchar_t *__restrict __format, ...)
                                                          ;
#pragma empty_line
extern int swscanf (const wchar_t *__restrict __s,
      const wchar_t *__restrict __format, ...)
     throw () ;
#pragma line 671 "/usr/include/wchar.h" 3 4
extern int vfwscanf (__FILE *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                          ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int vwscanf (const wchar_t *__restrict __format,
      __gnuc_va_list __arg)
                                                          ;
#pragma empty_line
extern int vswscanf (const wchar_t *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     throw () ;
#pragma line 726 "/usr/include/wchar.h" 3 4
extern wint_t fgetwc (__FILE *__stream);
extern wint_t getwc (__FILE *__stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t getwchar (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t fputwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwc (wchar_t __wc, __FILE *__stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t putwchar (wchar_t __wc);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *fgetws (wchar_t *__restrict __ws, int __n,
   __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fputws (const wchar_t *__restrict __ws,
     __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t ungetwc (wint_t __wc, __FILE *__stream);
#pragma line 781 "/usr/include/wchar.h" 3 4
extern wint_t getwc_unlocked (__FILE *__stream);
extern wint_t getwchar_unlocked (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t fgetwc_unlocked (__FILE *__stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t fputwc_unlocked (wchar_t __wc, __FILE *__stream);
#pragma line 807 "/usr/include/wchar.h" 3 4
extern wint_t putwc_unlocked (wchar_t __wc, __FILE *__stream);
extern wint_t putwchar_unlocked (wchar_t __wc);
#pragma line 817 "/usr/include/wchar.h" 3 4
extern wchar_t *fgetws_unlocked (wchar_t *__restrict __ws, int __n,
     __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fputws_unlocked (const wchar_t *__restrict __ws,
       __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsftime (wchar_t *__restrict __s, size_t __maxsize,
   const wchar_t *__restrict __format,
   const struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t wcsftime_l (wchar_t *__restrict __s, size_t __maxsize,
     const wchar_t *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) throw ();
#pragma line 856 "/usr/include/wchar.h" 3 4
}
#pragma line 47 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 2 3
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
namespace std
{
  using ::mbstate_t;
}
#pragma line 137 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  using ::wint_t;
#pragma empty_line
  using ::btowc;
  using ::fgetwc;
  using ::fgetws;
  using ::fputwc;
  using ::fputws;
  using ::fwide;
  using ::fwprintf;
  using ::fwscanf;
  using ::getwc;
  using ::getwchar;
  using ::mbrlen;
  using ::mbrtowc;
  using ::mbsinit;
  using ::mbsrtowcs;
  using ::putwc;
  using ::putwchar;
#pragma empty_line
  using ::swprintf;
#pragma empty_line
  using ::swscanf;
  using ::ungetwc;
  using ::vfwprintf;
#pragma empty_line
  using ::vfwscanf;
#pragma empty_line
#pragma empty_line
  using ::vswprintf;
#pragma empty_line
#pragma empty_line
  using ::vswscanf;
#pragma empty_line
  using ::vwprintf;
#pragma empty_line
  using ::vwscanf;
#pragma empty_line
  using ::wcrtomb;
  using ::wcscat;
  using ::wcscmp;
  using ::wcscoll;
  using ::wcscpy;
  using ::wcscspn;
  using ::wcsftime;
  using ::wcslen;
  using ::wcsncat;
  using ::wcsncmp;
  using ::wcsncpy;
  using ::wcsrtombs;
  using ::wcsspn;
  using ::wcstod;
#pragma empty_line
  using ::wcstof;
#pragma empty_line
  using ::wcstok;
  using ::wcstol;
  using ::wcstoul;
  using ::wcsxfrm;
  using ::wctob;
  using ::wmemcmp;
  using ::wmemcpy;
  using ::wmemmove;
  using ::wmemset;
  using ::wprintf;
  using ::wscanf;
  using ::wcschr;
  using ::wcspbrk;
  using ::wcsrchr;
  using ::wcsstr;
  using ::wmemchr;
#pragma line 234 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  using ::wcstold;
#pragma line 259 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
  using ::wcstoll;
  using ::wcstoull;
#pragma empty_line
}
#pragma empty_line
namespace std
{
  using ::__gnu_cxx::wcstold;
  using ::__gnu_cxx::wcstoll;
  using ::__gnu_cxx::wcstoull;
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 2 3
#pragma line 70 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 90 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
  typedef long streamoff;
#pragma line 100 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
  typedef ptrdiff_t streamsize;
#pragma line 113 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
  template<typename _StateT>
    class fpos
    {
    private:
      streamoff _M_off;
      _StateT _M_state;
#pragma empty_line
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      fpos()
      : _M_off(0), _M_state() { }
#pragma line 135 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
      fpos(streamoff __off)
      : _M_off(__off), _M_state() { }
#pragma empty_line
#pragma empty_line
      operator streamoff() const { return _M_off; }
#pragma empty_line
#pragma empty_line
      void
      state(_StateT __st)
      { _M_state = __st; }
#pragma empty_line
#pragma empty_line
      _StateT
      state() const
      { return _M_state; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      fpos&
      operator+=(streamoff __off)
      {
 _M_off += __off;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      fpos&
      operator-=(streamoff __off)
      {
 _M_off -= __off;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      fpos
      operator+(streamoff __off) const
      {
 fpos __pos(*this);
 __pos += __off;
 return __pos;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      fpos
      operator-(streamoff __off) const
      {
 fpos __pos(*this);
 __pos -= __off;
 return __pos;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      streamoff
      operator-(const fpos& __other) const
      { return _M_off - __other._M_off; }
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _StateT>
    inline bool
    operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
    { return streamoff(__lhs) == streamoff(__rhs); }
#pragma empty_line
  template<typename _StateT>
    inline bool
    operator!=(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
    { return streamoff(__lhs) != streamoff(__rhs); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef fpos<mbstate_t> streampos;
#pragma empty_line
  typedef fpos<mbstate_t> wstreampos;
#pragma line 241 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
#pragma empty_line
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 76 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 3
  class ios_base;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ios;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_streambuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_istream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ostream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_iostream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
     typename _Alloc = allocator<_CharT> >
    class basic_stringbuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_istringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_ostringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_stringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_filebuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ifstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ofstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_fstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class istreambuf_iterator;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class ostreambuf_iterator;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef basic_ios<char> ios;
#pragma empty_line
#pragma empty_line
  typedef basic_streambuf<char> streambuf;
#pragma empty_line
#pragma empty_line
  typedef basic_istream<char> istream;
#pragma empty_line
#pragma empty_line
  typedef basic_ostream<char> ostream;
#pragma empty_line
#pragma empty_line
  typedef basic_iostream<char> iostream;
#pragma empty_line
#pragma empty_line
  typedef basic_stringbuf<char> stringbuf;
#pragma empty_line
#pragma empty_line
  typedef basic_istringstream<char> istringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_ostringstream<char> ostringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_stringstream<char> stringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_filebuf<char> filebuf;
#pragma empty_line
#pragma empty_line
  typedef basic_ifstream<char> ifstream;
#pragma empty_line
#pragma empty_line
  typedef basic_ofstream<char> ofstream;
#pragma empty_line
#pragma empty_line
  typedef basic_fstream<char> fstream;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef basic_ios<wchar_t> wios;
#pragma empty_line
#pragma empty_line
  typedef basic_streambuf<wchar_t> wstreambuf;
#pragma empty_line
#pragma empty_line
  typedef basic_istream<wchar_t> wistream;
#pragma empty_line
#pragma empty_line
  typedef basic_ostream<wchar_t> wostream;
#pragma empty_line
#pragma empty_line
  typedef basic_iostream<wchar_t> wiostream;
#pragma empty_line
#pragma empty_line
  typedef basic_stringbuf<wchar_t> wstringbuf;
#pragma empty_line
#pragma empty_line
  typedef basic_istringstream<wchar_t> wistringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_ostringstream<wchar_t> wostringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_stringstream<wchar_t> wstringstream;
#pragma empty_line
#pragma empty_line
  typedef basic_filebuf<wchar_t> wfilebuf;
#pragma empty_line
#pragma empty_line
  typedef basic_ifstream<wchar_t> wifstream;
#pragma empty_line
#pragma empty_line
  typedef basic_ofstream<wchar_t> wofstream;
#pragma empty_line
#pragma empty_line
  typedef basic_fstream<wchar_t> wfstream;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 1 3
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
#pragma empty_line
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" {
#pragma empty_line
namespace std
{
#pragma line 61 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
  class exception
  {
  public:
    exception() throw() { }
    virtual ~exception() throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
    virtual const char* what() const throw();
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  class bad_exception : public exception
  {
  public:
    bad_exception() throw() { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
    virtual ~bad_exception() throw();
#pragma empty_line
#pragma empty_line
    virtual const char* what() const throw();
  };
#pragma empty_line
#pragma empty_line
  typedef void (*terminate_handler) ();
#pragma empty_line
#pragma empty_line
  typedef void (*unexpected_handler) ();
#pragma empty_line
#pragma empty_line
  terminate_handler set_terminate(terminate_handler) throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  void terminate() throw() __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
  unexpected_handler set_unexpected(unexpected_handler) throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  void unexpected() __attribute__ ((__noreturn__));
#pragma line 118 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
  bool uncaught_exception() throw() __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma line 143 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
  void __verbose_terminate_handler();
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
}
#pragma empty_line
#pragma GCC visibility pop
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 1 3
#pragma line 61 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/functexcept.h" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/functexcept.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/exception_defines.h" 1 3
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/functexcept.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  void
  __throw_bad_exception(void) __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
  void
  __throw_bad_alloc(void) __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
  void
  __throw_bad_cast(void) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_bad_typeid(void) __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
  void
  __throw_logic_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_domain_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_invalid_argument(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_length_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_out_of_range(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_runtime_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_range_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_overflow_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_underflow_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
  void
  __throw_ios_failure(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_system_error(int) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_future_error(int) __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
  void
  __throw_bad_function_call() __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
}
#pragma line 62 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 1 3
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
#pragma empty_line
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
#pragma line 69 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Iterator, typename _Container>
    class __normal_iterator;
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  struct __true_type { };
  struct __false_type { };
#pragma empty_line
  template<bool>
    struct __truth_type
    { typedef __false_type __type; };
#pragma empty_line
  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<class _Sp, class _Tp>
    struct __traitor
    {
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
      typedef typename __truth_type<__value>::__type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename, typename>
    struct __are_same
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_void
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_void<void>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_integer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<bool>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma line 199 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
  template<>
    struct __is_integer<short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_floating
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_floating<float>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<long double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer<_Tp*>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_normal_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Iterator, typename _Container>
    struct __is_normal_iterator< __gnu_cxx::__normal_iterator<_Iterator,
             _Container> >
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_fundamental
    : public __traitor<__is_void<_Tp>, __is_arithmetic<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_char
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_char<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_char<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_byte
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_move_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma line 422 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
#pragma empty_line
}
#pragma line 63 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/type_traits.h" 1 3
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/type_traits.h" 3
#pragma empty_line
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/type_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool, typename>
    struct __enable_if
    { };
#pragma empty_line
  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };
#pragma empty_line
  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __add_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __add_unsigned<bool>;
#pragma empty_line
  template<>
    struct __add_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __remove_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __remove_unsigned<bool>;
#pragma empty_line
  template<>
    struct __remove_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __promote<_Tp, false>
    { };
#pragma empty_line
  template<>
    struct __promote<long double>
    { typedef long double __type; };
#pragma empty_line
  template<>
    struct __promote<double>
    { typedef double __type; };
#pragma empty_line
  template<>
    struct __promote<float>
    { typedef float __type; };
#pragma empty_line
  template<typename _Tp, typename _Up,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type>
    struct __promote_2
    {
      typedef __typeof__(_Tp2() + _Up2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type>
    struct __promote_3
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp, typename _Wp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type,
           typename _Wp2 = typename __promote<_Wp>::__type>
    struct __promote_4
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2() + _Wp2()) __type;
    };
#pragma empty_line
#pragma empty_line
}
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 1 3
#pragma line 32 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
#pragma empty_line
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 54 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
  template<typename _Value>
    struct __numeric_traits_integer
    {
#pragma empty_line
      static const _Value __min = (((_Value)(-1) < 0) ? (_Value)1 << (sizeof(_Value) * 8 - ((_Value)(-1) < 0)) : (_Value)0);
      static const _Value __max = (((_Value)(-1) < 0) ? (((((_Value)1 << ((sizeof(_Value) * 8 - ((_Value)(-1) < 0)) - 1)) - 1) << 1) + 1) : ~(_Value)0);
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static const bool __is_signed = ((_Value)(-1) < 0);
      static const int __digits = (sizeof(_Value) * 8 - ((_Value)(-1) < 0));
    };
#pragma empty_line
  template<typename _Value>
    const _Value __numeric_traits_integer<_Value>::__min;
#pragma empty_line
  template<typename _Value>
    const _Value __numeric_traits_integer<_Value>::__max;
#pragma empty_line
  template<typename _Value>
    const bool __numeric_traits_integer<_Value>::__is_signed;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_integer<_Value>::__digits;
#pragma line 99 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
  template<typename _Value>
    struct __numeric_traits_floating
    {
#pragma empty_line
      static const int __max_digits10 = (2 + (std::__are_same<_Value, float>::__value ? 24 : std::__are_same<_Value, double>::__value ? 53 : 64) * 643L / 2136);
#pragma empty_line
#pragma empty_line
      static const bool __is_signed = true;
      static const int __digits10 = (std::__are_same<_Value, float>::__value ? 6 : std::__are_same<_Value, double>::__value ? 15 : 18);
      static const int __max_exponent10 = (std::__are_same<_Value, float>::__value ? 38 : std::__are_same<_Value, double>::__value ? 308 : 4932);
    };
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__max_digits10;
#pragma empty_line
  template<typename _Value>
    const bool __numeric_traits_floating<_Value>::__is_signed;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__digits10;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__max_exponent10;
#pragma empty_line
  template<typename _Value>
    struct __numeric_traits
    : public __conditional_type<std::__is_integer<_Value>::__value,
    __numeric_traits_integer<_Value>,
    __numeric_traits_floating<_Value> >::__type
    { };
#pragma empty_line
#pragma empty_line
}
#pragma line 65 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 1 3
#pragma line 60 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/concept_check.h" 1 3
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/concept_check.h" 3
#pragma empty_line
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/concept_check.h" 3
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline _Tp*
    __addressof(_Tp& __r)
    {
      return reinterpret_cast<_Tp*>
 (&const_cast<char&>(reinterpret_cast<const volatile char&>(__r)));
    }
#pragma empty_line
#pragma empty_line
}
#pragma line 109 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 120 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 3
  template<typename _Tp>
    inline void
    swap(_Tp& __a, _Tp& __b)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      _Tp __tmp = (__a);
      __a = (__b);
      __b = (__tmp);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp, size_t _Nm>
    inline void
    swap(_Tp (&__a)[_Nm], _Tp (&__b)[_Nm])
    {
      for (size_t __n = 0; __n < _Nm; ++__n)
 swap(__a[__n], __b[__n]);
    }
#pragma empty_line
#pragma empty_line
}
#pragma line 61 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 86 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
  template<class _T1, class _T2>
    struct pair
    {
      typedef _T1 first_type;
      typedef _T2 second_type;
#pragma empty_line
      _T1 first;
      _T2 second;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      pair()
      : first(), second() { }
#pragma empty_line
#pragma empty_line
      pair(const _T1& __a, const _T2& __b)
      : first(__a), second(__b) { }
#pragma empty_line
#pragma empty_line
      template<class _U1, class _U2>
 pair(const pair<_U1, _U2>& __p)
 : first(__p.first), second(__p.second) { }
#pragma line 196 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
    };
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __x.first == __y.first && __x.second == __y.second; }
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator<(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __x.first < __y.first
      || (!(__y.first < __x.first) && __x.second < __y.second); }
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator!=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__x == __y); }
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator>(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __y < __x; }
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator<=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__y < __x); }
#pragma empty_line
#pragma empty_line
  template<class _T1, class _T2>
    inline bool
    operator>=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__x < __y); }
#pragma line 270 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
  template<class _T1, class _T2>
    inline pair<_T1, _T2>
    make_pair(_T1 __x, _T2 __y)
    { return pair<_T1, _T2>(__x, __y); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 66 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 1 3
#pragma line 63 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
#pragma empty_line
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 90 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
  struct input_iterator_tag { };
#pragma empty_line
#pragma empty_line
  struct output_iterator_tag { };
#pragma empty_line
#pragma empty_line
  struct forward_iterator_tag : public input_iterator_tag { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  struct bidirectional_iterator_tag : public forward_iterator_tag { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  struct random_access_iterator_tag : public bidirectional_iterator_tag { };
#pragma line 117 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
  template<typename _Category, typename _Tp, typename _Distance = ptrdiff_t,
           typename _Pointer = _Tp*, typename _Reference = _Tp&>
    struct iterator
    {
#pragma empty_line
      typedef _Category iterator_category;
#pragma empty_line
      typedef _Tp value_type;
#pragma empty_line
      typedef _Distance difference_type;
#pragma empty_line
      typedef _Pointer pointer;
#pragma empty_line
      typedef _Reference reference;
    };
#pragma line 163 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
  template<typename _Iterator>
    struct iterator_traits
    {
      typedef typename _Iterator::iterator_category iterator_category;
      typedef typename _Iterator::value_type value_type;
      typedef typename _Iterator::difference_type difference_type;
      typedef typename _Iterator::pointer pointer;
      typedef typename _Iterator::reference reference;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct iterator_traits<_Tp*>
    {
      typedef random_access_iterator_tag iterator_category;
      typedef _Tp value_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef _Tp& reference;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct iterator_traits<const _Tp*>
    {
      typedef random_access_iterator_tag iterator_category;
      typedef _Tp value_type;
      typedef ptrdiff_t difference_type;
      typedef const _Tp* pointer;
      typedef const _Tp& reference;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Iter>
    inline typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    { return typename iterator_traits<_Iter>::iterator_category(); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Iterator, bool _HasBase>
    struct _Iter_base
    {
      typedef _Iterator iterator_type;
      static iterator_type _S_base(_Iterator __it)
      { return __it; }
    };
#pragma empty_line
  template<typename _Iterator>
    struct _Iter_base<_Iterator, true>
    {
      typedef typename _Iterator::iterator_type iterator_type;
      static iterator_type _S_base(_Iterator __it)
      { return __it.base(); }
    };
#pragma empty_line
#pragma empty_line
}
#pragma line 67 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 1 3
#pragma line 63 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
#pragma empty_line
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _InputIterator>
    inline typename iterator_traits<_InputIterator>::difference_type
    __distance(_InputIterator __first, _InputIterator __last,
               input_iterator_tag)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typename iterator_traits<_InputIterator>::difference_type __n = 0;
      while (__first != __last)
 {
   ++__first;
   ++__n;
 }
      return __n;
    }
#pragma empty_line
  template<typename _RandomAccessIterator>
    inline typename iterator_traits<_RandomAccessIterator>::difference_type
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
               random_access_iterator_tag)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      return __last - __first;
    }
#pragma line 111 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
  template<typename _InputIterator>
    inline typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    {
#pragma empty_line
      return std::__distance(__first, __last,
        std::__iterator_category(__first));
    }
#pragma empty_line
  template<typename _InputIterator, typename _Distance>
    inline void
    __advance(_InputIterator& __i, _Distance __n, input_iterator_tag)
    {
#pragma empty_line
#pragma empty_line
      while (__n--)
 ++__i;
    }
#pragma empty_line
  template<typename _BidirectionalIterator, typename _Distance>
    inline void
    __advance(_BidirectionalIterator& __i, _Distance __n,
       bidirectional_iterator_tag)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__n > 0)
        while (__n--)
   ++__i;
      else
        while (__n++)
   --__i;
    }
#pragma empty_line
  template<typename _RandomAccessIterator, typename _Distance>
    inline void
    __advance(_RandomAccessIterator& __i, _Distance __n,
              random_access_iterator_tag)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      __i += __n;
    }
#pragma line 169 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
  template<typename _InputIterator, typename _Distance>
    inline void
    advance(_InputIterator& __i, _Distance __n)
    {
#pragma empty_line
      typename iterator_traits<_InputIterator>::difference_type __d = __n;
      std::__advance(__i, __d, std::__iterator_category(__i));
    }
#pragma line 200 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
#pragma empty_line
}
#pragma line 68 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 1 3
#pragma line 68 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 96 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Iterator>
    class reverse_iterator
    : public iterator<typename iterator_traits<_Iterator>::iterator_category,
        typename iterator_traits<_Iterator>::value_type,
        typename iterator_traits<_Iterator>::difference_type,
        typename iterator_traits<_Iterator>::pointer,
                      typename iterator_traits<_Iterator>::reference>
    {
    protected:
      _Iterator current;
#pragma empty_line
      typedef iterator_traits<_Iterator> __traits_type;
#pragma empty_line
    public:
      typedef _Iterator iterator_type;
      typedef typename __traits_type::difference_type difference_type;
      typedef typename __traits_type::pointer pointer;
      typedef typename __traits_type::reference reference;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator() : current() { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      explicit
      reverse_iterator(iterator_type __x) : current(__x) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator(const reverse_iterator& __x)
      : current(__x.current) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      template<typename _Iter>
        reverse_iterator(const reverse_iterator<_Iter>& __x)
 : current(__x.base()) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      iterator_type
      base() const
      { return current; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reference
      operator*() const
      {
 _Iterator __tmp = current;
 return *--__tmp;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      pointer
      operator->() const
      { return &(operator*()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator&
      operator++()
      {
 --current;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      operator++(int)
      {
 reverse_iterator __tmp = *this;
 --current;
 return __tmp;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator&
      operator--()
      {
 ++current;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      operator--(int)
      {
 reverse_iterator __tmp = *this;
 ++current;
 return __tmp;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      operator+(difference_type __n) const
      { return reverse_iterator(current - __n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator&
      operator+=(difference_type __n)
      {
 current -= __n;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      operator-(difference_type __n) const
      { return reverse_iterator(current + __n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator&
      operator-=(difference_type __n)
      {
 current += __n;
 return *this;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reference
      operator[](difference_type __n) const
      { return *(*this + __n); }
    };
#pragma line 283 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Iterator>
    inline bool
    operator==(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return __x.base() == __y.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator<(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y.base() < __x.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator!=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__x == __y); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator>(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y < __x; }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator<=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__y < __x); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator>=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__x < __y); }
#pragma empty_line
  template<typename _Iterator>
    inline typename reverse_iterator<_Iterator>::difference_type
    operator-(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y.base() - __x.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline reverse_iterator<_Iterator>
    operator+(typename reverse_iterator<_Iterator>::difference_type __n,
       const reverse_iterator<_Iterator>& __x)
    { return reverse_iterator<_Iterator>(__x.base() - __n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator==(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return __x.base() == __y.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator<(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
    { return __y.base() < __x.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator!=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__x == __y); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator>(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
    { return __y < __x; }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator<=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__y < __x); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator>=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__x < __y); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    inline typename reverse_iterator<_IteratorL>::difference_type
    operator-(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
#pragma empty_line
    { return __y.base() - __x.base(); }
#pragma line 395 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container>
    class back_insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
#pragma empty_line
    public:
#pragma empty_line
      typedef _Container container_type;
#pragma empty_line
#pragma empty_line
      explicit
      back_insert_iterator(_Container& __x) : container(&__x) { }
#pragma line 422 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      back_insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 container->push_back(__value);
 return *this;
      }
#pragma line 445 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      back_insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
#pragma empty_line
      back_insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
#pragma empty_line
      back_insert_iterator
      operator++(int)
      { return *this; }
    };
#pragma line 471 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container>
    inline back_insert_iterator<_Container>
    back_inserter(_Container& __x)
    { return back_insert_iterator<_Container>(__x); }
#pragma line 486 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container>
    class front_insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
#pragma empty_line
    public:
#pragma empty_line
      typedef _Container container_type;
#pragma empty_line
#pragma empty_line
      explicit front_insert_iterator(_Container& __x) : container(&__x) { }
#pragma line 512 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      front_insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 container->push_front(__value);
 return *this;
      }
#pragma line 535 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      front_insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
#pragma empty_line
      front_insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
#pragma empty_line
      front_insert_iterator
      operator++(int)
      { return *this; }
    };
#pragma line 561 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container>
    inline front_insert_iterator<_Container>
    front_inserter(_Container& __x)
    { return front_insert_iterator<_Container>(__x); }
#pragma line 580 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container>
    class insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
      typename _Container::iterator iter;
#pragma empty_line
    public:
#pragma empty_line
      typedef _Container container_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      insert_iterator(_Container& __x, typename _Container::iterator __i)
      : container(&__x), iter(__i) {}
#pragma line 623 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 iter = container->insert(iter, __value);
 ++iter;
 return *this;
      }
#pragma line 649 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
#pragma empty_line
      insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
#pragma empty_line
      insert_iterator&
      operator++(int)
      { return *this; }
    };
#pragma line 675 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _Container, typename _Iterator>
    inline insert_iterator<_Container>
    inserter(_Container& __x, _Iterator __i)
    {
      return insert_iterator<_Container>(__x,
      typename _Container::iterator(__i));
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 699 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  using std::iterator_traits;
  using std::iterator;
  template<typename _Iterator, typename _Container>
    class __normal_iterator
    {
    protected:
      _Iterator _M_current;
#pragma empty_line
      typedef iterator_traits<_Iterator> __traits_type;
#pragma empty_line
    public:
      typedef _Iterator iterator_type;
      typedef typename __traits_type::iterator_category iterator_category;
      typedef typename __traits_type::value_type value_type;
      typedef typename __traits_type::difference_type difference_type;
      typedef typename __traits_type::reference reference;
      typedef typename __traits_type::pointer pointer;
#pragma empty_line
      __normal_iterator() : _M_current(_Iterator()) { }
#pragma empty_line
      explicit
      __normal_iterator(const _Iterator& __i) : _M_current(__i) { }
#pragma empty_line
#pragma empty_line
      template<typename _Iter>
        __normal_iterator(const __normal_iterator<_Iter,
     typename __enable_if<
              (std::__are_same<_Iter, typename _Container::pointer>::__value),
        _Container>::__type>& __i)
        : _M_current(__i.base()) { }
#pragma empty_line
#pragma empty_line
      reference
      operator*() const
      { return *_M_current; }
#pragma empty_line
      pointer
      operator->() const
      { return _M_current; }
#pragma empty_line
      __normal_iterator&
      operator++()
      {
 ++_M_current;
 return *this;
      }
#pragma empty_line
      __normal_iterator
      operator++(int)
      { return __normal_iterator(_M_current++); }
#pragma empty_line
#pragma empty_line
      __normal_iterator&
      operator--()
      {
 --_M_current;
 return *this;
      }
#pragma empty_line
      __normal_iterator
      operator--(int)
      { return __normal_iterator(_M_current--); }
#pragma empty_line
#pragma empty_line
      reference
      operator[](const difference_type& __n) const
      { return _M_current[__n]; }
#pragma empty_line
      __normal_iterator&
      operator+=(const difference_type& __n)
      { _M_current += __n; return *this; }
#pragma empty_line
      __normal_iterator
      operator+(const difference_type& __n) const
      { return __normal_iterator(_M_current + __n); }
#pragma empty_line
      __normal_iterator&
      operator-=(const difference_type& __n)
      { _M_current -= __n; return *this; }
#pragma empty_line
      __normal_iterator
      operator-(const difference_type& __n) const
      { return __normal_iterator(_M_current - __n); }
#pragma empty_line
      const _Iterator&
      base() const
      { return _M_current; }
    };
#pragma line 797 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator==(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() == __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator==(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() == __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() != __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() != __rhs.base(); }
#pragma empty_line
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator<(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() < __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator<(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() < __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator>(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() > __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator>(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() > __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator<=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() <= __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator<=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() <= __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator>=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() >= __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator>=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() >= __rhs.base(); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    inline typename __normal_iterator<_IteratorL, _Container>::difference_type
    operator-(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
#pragma empty_line
    { return __lhs.base() - __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() - __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline __normal_iterator<_Iterator, _Container>
    operator+(typename __normal_iterator<_Iterator, _Container>::difference_type
       __n, const __normal_iterator<_Iterator, _Container>& __i)
    { return __normal_iterator<_Iterator, _Container>(__i.base() + __n); }
#pragma empty_line
#pragma empty_line
}
#pragma line 69 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/debug/debug.h" 1 3
#pragma line 47 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/debug/debug.h" 3
namespace std
{
  namespace __debug { }
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_debug
{
  using namespace std::__debug;
}
#pragma line 71 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool _BoolType>
    struct __iter_swap
    {
      template<typename _ForwardIterator1, typename _ForwardIterator2>
        static void
        iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
        {
          typedef typename iterator_traits<_ForwardIterator1>::value_type
            _ValueType1;
          _ValueType1 __tmp = (*__a);
          *__a = (*__b);
          *__b = (__tmp);
 }
    };
#pragma empty_line
  template<>
    struct __iter_swap<true>
    {
      template<typename _ForwardIterator1, typename _ForwardIterator2>
        static void
        iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
        {
          swap(*__a, *__b);
        }
    };
#pragma line 116 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator1, typename _ForwardIterator2>
    inline void
    iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
    {
      typedef typename iterator_traits<_ForwardIterator1>::value_type
 _ValueType1;
      typedef typename iterator_traits<_ForwardIterator2>::value_type
 _ValueType2;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef typename iterator_traits<_ForwardIterator1>::reference
 _ReferenceType1;
      typedef typename iterator_traits<_ForwardIterator2>::reference
 _ReferenceType2;
      std::__iter_swap<__are_same<_ValueType1, _ValueType2>::__value
 && __are_same<_ValueType1&, _ReferenceType1>::__value
 && __are_same<_ValueType2&, _ReferenceType2>::__value>::
 iter_swap(__a, __b);
    }
#pragma line 157 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator1, typename _ForwardIterator2>
    _ForwardIterator2
    swap_ranges(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
  _ForwardIterator2 __first2)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      for (; __first1 != __last1; ++__first1, ++__first2)
 std::iter_swap(__first1, __first2);
      return __first2;
    }
#pragma line 185 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _Tp>
    inline const _Tp&
    min(const _Tp& __a, const _Tp& __b)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__b < __a)
 return __b;
      return __a;
    }
#pragma line 208 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _Tp>
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__a < __b)
 return __b;
      return __a;
    }
#pragma line 231 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _Tp, typename _Compare>
    inline const _Tp&
    min(const _Tp& __a, const _Tp& __b, _Compare __comp)
    {
#pragma empty_line
      if (__comp(__b, __a))
 return __b;
      return __a;
    }
#pragma line 252 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _Tp, typename _Compare>
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b, _Compare __comp)
    {
#pragma empty_line
      if (__comp(__a, __b))
 return __b;
      return __a;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Iterator>
    struct _Niter_base
    : _Iter_base<_Iterator, __is_normal_iterator<_Iterator>::__value>
    { };
#pragma empty_line
  template<typename _Iterator>
    inline typename _Niter_base<_Iterator>::iterator_type
    __niter_base(_Iterator __it)
    { return std::_Niter_base<_Iterator>::_S_base(__it); }
#pragma empty_line
#pragma empty_line
  template<typename _Iterator>
    struct _Miter_base
    : _Iter_base<_Iterator, __is_move_iterator<_Iterator>::__value>
    { };
#pragma empty_line
  template<typename _Iterator>
    inline typename _Miter_base<_Iterator>::iterator_type
    __miter_base(_Iterator __it)
    { return std::_Miter_base<_Iterator>::_S_base(__it); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool, bool, typename>
    struct __copy_move
    {
      template<typename _II, typename _OI>
        static _OI
        __copy_m(_II __first, _II __last, _OI __result)
        {
   for (; __first != __last; ++__result, ++__first)
     *__result = *__first;
   return __result;
 }
    };
#pragma line 319 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<>
    struct __copy_move<false, false, random_access_iterator_tag>
    {
      template<typename _II, typename _OI>
        static _OI
        __copy_m(_II __first, _II __last, _OI __result)
        {
   typedef typename iterator_traits<_II>::difference_type _Distance;
   for(_Distance __n = __last - __first; __n > 0; --__n)
     {
       *__result = *__first;
       ++__first;
       ++__result;
     }
   return __result;
 }
    };
#pragma line 357 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool _IsMove>
    struct __copy_move<_IsMove, true, random_access_iterator_tag>
    {
      template<typename _Tp>
        static _Tp*
        __copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
        {
   const ptrdiff_t _Num = __last - __first;
   if (_Num)
     __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
   return __result + _Num;
 }
    };
#pragma empty_line
  template<bool _IsMove, typename _II, typename _OI>
    inline _OI
    __copy_move_a(_II __first, _II __last, _OI __result)
    {
      typedef typename iterator_traits<_II>::value_type _ValueTypeI;
      typedef typename iterator_traits<_OI>::value_type _ValueTypeO;
      typedef typename iterator_traits<_II>::iterator_category _Category;
      const bool __simple = (__is_trivial(_ValueTypeI)
                      && __is_pointer<_II>::__value
                      && __is_pointer<_OI>::__value
        && __are_same<_ValueTypeI, _ValueTypeO>::__value);
#pragma empty_line
      return std::__copy_move<_IsMove, __simple,
                       _Category>::__copy_m(__first, __last, __result);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    struct char_traits;
#pragma empty_line
  template<typename _CharT, typename _Traits>
    class istreambuf_iterator;
#pragma empty_line
  template<typename _CharT, typename _Traits>
    class ostreambuf_iterator;
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
      ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
    __copy_move_a2(_CharT*, _CharT*,
     ostreambuf_iterator<_CharT, char_traits<_CharT> >);
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
      ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
    __copy_move_a2(const _CharT*, const _CharT*,
     ostreambuf_iterator<_CharT, char_traits<_CharT> >);
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
        _CharT*>::__type
    __copy_move_a2(istreambuf_iterator<_CharT, char_traits<_CharT> >,
     istreambuf_iterator<_CharT, char_traits<_CharT> >, _CharT*);
#pragma empty_line
  template<bool _IsMove, typename _II, typename _OI>
    inline _OI
    __copy_move_a2(_II __first, _II __last, _OI __result)
    {
      return _OI(std::__copy_move_a<_IsMove>(std::__niter_base(__first),
          std::__niter_base(__last),
          std::__niter_base(__result)));
    }
#pragma line 442 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _II, typename _OI>
    inline _OI
    copy(_II __first, _II __last, _OI __result)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      return (std::__copy_move_a2<__is_move_iterator<_II>::__value>
       (std::__miter_base(__first), std::__miter_base(__last),
        __result));
    }
#pragma line 494 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool, bool, typename>
    struct __copy_move_backward
    {
      template<typename _BI1, typename _BI2>
        static _BI2
        __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
        {
   while (__first != __last)
     *--__result = *--__last;
   return __result;
 }
    };
#pragma line 522 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<>
    struct __copy_move_backward<false, false, random_access_iterator_tag>
    {
      template<typename _BI1, typename _BI2>
        static _BI2
        __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
        {
   typename iterator_traits<_BI1>::difference_type __n;
   for (__n = __last - __first; __n > 0; --__n)
     *--__result = *--__last;
   return __result;
 }
    };
#pragma line 552 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool _IsMove>
    struct __copy_move_backward<_IsMove, true, random_access_iterator_tag>
    {
      template<typename _Tp>
        static _Tp*
        __copy_move_b(const _Tp* __first, const _Tp* __last, _Tp* __result)
        {
   const ptrdiff_t _Num = __last - __first;
   if (_Num)
     __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
   return __result - _Num;
 }
    };
#pragma empty_line
  template<bool _IsMove, typename _BI1, typename _BI2>
    inline _BI2
    __copy_move_backward_a(_BI1 __first, _BI1 __last, _BI2 __result)
    {
      typedef typename iterator_traits<_BI1>::value_type _ValueType1;
      typedef typename iterator_traits<_BI2>::value_type _ValueType2;
      typedef typename iterator_traits<_BI1>::iterator_category _Category;
      const bool __simple = (__is_trivial(_ValueType1)
                      && __is_pointer<_BI1>::__value
                      && __is_pointer<_BI2>::__value
        && __are_same<_ValueType1, _ValueType2>::__value);
#pragma empty_line
      return std::__copy_move_backward<_IsMove, __simple,
                                _Category>::__copy_move_b(__first,
         __last,
         __result);
    }
#pragma empty_line
  template<bool _IsMove, typename _BI1, typename _BI2>
    inline _BI2
    __copy_move_backward_a2(_BI1 __first, _BI1 __last, _BI2 __result)
    {
      return _BI2(std::__copy_move_backward_a<_IsMove>
    (std::__niter_base(__first), std::__niter_base(__last),
     std::__niter_base(__result)));
    }
#pragma line 611 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _BI1, typename _BI2>
    inline _BI2
    copy_backward(_BI1 __first, _BI1 __last, _BI2 __result)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      return (std::__copy_move_backward_a2<__is_move_iterator<_BI1>::__value>
       (std::__miter_base(__first), std::__miter_base(__last),
        __result));
    }
#pragma line 669 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, void>::__type
    __fill_a(_ForwardIterator __first, _ForwardIterator __last,
       const _Tp& __value)
    {
      for (; __first != __last; ++__first)
 *__first = __value;
    }
#pragma empty_line
  template<typename _ForwardIterator, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, void>::__type
    __fill_a(_ForwardIterator __first, _ForwardIterator __last,
      const _Tp& __value)
    {
      const _Tp __tmp = __value;
      for (; __first != __last; ++__first)
 *__first = __tmp;
    }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, void>::__type
    __fill_a(_Tp* __first, _Tp* __last, const _Tp& __c)
    {
      const _Tp __tmp = __c;
      __builtin_memset(__first, static_cast<unsigned char>(__tmp),
         __last - __first);
    }
#pragma line 713 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator, typename _Tp>
    inline void
    fill(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      std::__fill_a(std::__niter_base(__first), std::__niter_base(__last),
      __value);
    }
#pragma empty_line
  template<typename _OutputIterator, typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, _OutputIterator>::__type
    __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
    {
      for (__decltype(__n + 0) __niter = __n;
    __niter > 0; --__niter, ++__first)
 *__first = __value;
      return __first;
    }
#pragma empty_line
  template<typename _OutputIterator, typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, _OutputIterator>::__type
    __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
    {
      const _Tp __tmp = __value;
      for (__decltype(__n + 0) __niter = __n;
    __niter > 0; --__niter, ++__first)
 *__first = __tmp;
      return __first;
    }
#pragma empty_line
  template<typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, _Tp*>::__type
    __fill_n_a(_Tp* __first, _Size __n, const _Tp& __c)
    {
      std::__fill_a(__first, __first + __n, __c);
      return __first + __n;
    }
#pragma line 773 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _OI, typename _Size, typename _Tp>
    inline _OI
    fill_n(_OI __first, _Size __n, const _Tp& __value)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
    }
#pragma empty_line
  template<bool _BoolType>
    struct __equal
    {
      template<typename _II1, typename _II2>
        static bool
        equal(_II1 __first1, _II1 __last1, _II2 __first2)
        {
   for (; __first1 != __last1; ++__first1, ++__first2)
     if (!(*__first1 == *__first2))
       return false;
   return true;
 }
    };
#pragma empty_line
  template<>
    struct __equal<true>
    {
      template<typename _Tp>
        static bool
        equal(const _Tp* __first1, const _Tp* __last1, const _Tp* __first2)
        {
   return !__builtin_memcmp(__first1, __first2, sizeof(_Tp)
       * (__last1 - __first1));
 }
    };
#pragma empty_line
  template<typename _II1, typename _II2>
    inline bool
    __equal_aux(_II1 __first1, _II1 __last1, _II2 __first2)
    {
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
      const bool __simple = (__is_integer<_ValueType1>::__value
                      && __is_pointer<_II1>::__value
                      && __is_pointer<_II2>::__value
        && __are_same<_ValueType1, _ValueType2>::__value);
#pragma empty_line
      return std::__equal<__simple>::equal(__first1, __last1, __first2);
    }
#pragma empty_line
#pragma empty_line
  template<typename, typename>
    struct __lc_rai
    {
      template<typename _II1, typename _II2>
        static _II1
        __newlast1(_II1, _II1 __last1, _II2, _II2)
        { return __last1; }
#pragma empty_line
      template<typename _II>
        static bool
        __cnd2(_II __first, _II __last)
        { return __first != __last; }
    };
#pragma empty_line
  template<>
    struct __lc_rai<random_access_iterator_tag, random_access_iterator_tag>
    {
      template<typename _RAI1, typename _RAI2>
        static _RAI1
        __newlast1(_RAI1 __first1, _RAI1 __last1,
     _RAI2 __first2, _RAI2 __last2)
        {
   const typename iterator_traits<_RAI1>::difference_type
     __diff1 = __last1 - __first1;
   const typename iterator_traits<_RAI2>::difference_type
     __diff2 = __last2 - __first2;
   return __diff2 < __diff1 ? __first1 + __diff2 : __last1;
 }
#pragma empty_line
      template<typename _RAI>
        static bool
        __cnd2(_RAI, _RAI)
        { return true; }
    };
#pragma empty_line
  template<bool _BoolType>
    struct __lexicographical_compare
    {
      template<typename _II1, typename _II2>
        static bool __lc(_II1, _II1, _II2, _II2);
    };
#pragma empty_line
  template<bool _BoolType>
    template<typename _II1, typename _II2>
      bool
      __lexicographical_compare<_BoolType>::
      __lc(_II1 __first1, _II1 __last1, _II2 __first2, _II2 __last2)
      {
 typedef typename iterator_traits<_II1>::iterator_category _Category1;
 typedef typename iterator_traits<_II2>::iterator_category _Category2;
 typedef std::__lc_rai<_Category1, _Category2> __rai_type;
#pragma empty_line
 __last1 = __rai_type::__newlast1(__first1, __last1,
      __first2, __last2);
 for (; __first1 != __last1 && __rai_type::__cnd2(__first2, __last2);
      ++__first1, ++__first2)
   {
     if (*__first1 < *__first2)
       return true;
     if (*__first2 < *__first1)
       return false;
   }
 return __first1 == __last1 && __first2 != __last2;
      }
#pragma empty_line
  template<>
    struct __lexicographical_compare<true>
    {
      template<typename _Tp, typename _Up>
        static bool
        __lc(const _Tp* __first1, const _Tp* __last1,
      const _Up* __first2, const _Up* __last2)
 {
   const size_t __len1 = __last1 - __first1;
   const size_t __len2 = __last2 - __first2;
   const int __result = __builtin_memcmp(__first1, __first2,
      std::min(__len1, __len2));
   return __result != 0 ? __result < 0 : __len1 < __len2;
 }
    };
#pragma empty_line
  template<typename _II1, typename _II2>
    inline bool
    __lexicographical_compare_aux(_II1 __first1, _II1 __last1,
      _II2 __first2, _II2 __last2)
    {
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
      const bool __simple =
 (__is_byte<_ValueType1>::__value && __is_byte<_ValueType2>::__value
  && !__gnu_cxx::__numeric_traits<_ValueType1>::__is_signed
  && !__gnu_cxx::__numeric_traits<_ValueType2>::__is_signed
  && __is_pointer<_II1>::__value
  && __is_pointer<_II2>::__value);
#pragma empty_line
      return std::__lexicographical_compare<__simple>::__lc(__first1, __last1,
           __first2, __last2);
    }
#pragma line 934 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator, typename _Tp>
    _ForwardIterator
    lower_bound(_ForwardIterator __first, _ForwardIterator __last,
  const _Tp& __val)
    {
      typedef typename iterator_traits<_ForwardIterator>::value_type
 _ValueType;
      typedef typename iterator_traits<_ForwardIterator>::difference_type
 _DistanceType;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      _DistanceType __len = std::distance(__first, __last);
#pragma empty_line
      while (__len > 0)
 {
   _DistanceType __half = __len >> 1;
   _ForwardIterator __middle = __first;
   std::advance(__middle, __half);
   if (*__middle < __val)
     {
       __first = __middle;
       ++__first;
       __len = __len - __half - 1;
     }
   else
     __len = __half;
 }
      return __first;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Size>
    inline _Size
    __lg(_Size __n)
    {
      _Size __k;
      for (__k = 0; __n != 0; __n >>= 1)
 ++__k;
      return __k - 1;
    }
#pragma empty_line
  inline int
  __lg(int __n)
  { return sizeof(int) * 8 - 1 - __builtin_clz(__n); }
#pragma empty_line
  inline long
  __lg(long __n)
  { return sizeof(long) * 8 - 1 - __builtin_clzl(__n); }
#pragma empty_line
  inline long long
  __lg(long long __n)
  { return sizeof(long long) * 8 - 1 - __builtin_clzll(__n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1008 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _II1, typename _II2>
    inline bool
    equal(_II1 __first1, _II1 __last1, _II2 __first2)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      return std::__equal_aux(std::__niter_base(__first1),
         std::__niter_base(__last1),
         std::__niter_base(__first2));
    }
#pragma line 1040 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _IIter1, typename _IIter2, typename _BinaryPredicate>
    inline bool
    equal(_IIter1 __first1, _IIter1 __last1,
   _IIter2 __first2, _BinaryPredicate __binary_pred)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      for (; __first1 != __last1; ++__first1, ++__first2)
 if (!bool(__binary_pred(*__first1, *__first2)))
   return false;
      return true;
    }
#pragma line 1071 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _II1, typename _II2>
    inline bool
    lexicographical_compare(_II1 __first1, _II1 __last1,
       _II2 __first2, _II2 __last2)
    {
#pragma empty_line
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
      ;
#pragma empty_line
      return std::__lexicographical_compare_aux(std::__niter_base(__first1),
      std::__niter_base(__last1),
      std::__niter_base(__first2),
      std::__niter_base(__last2));
    }
#pragma line 1105 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _II1, typename _II2, typename _Compare>
    bool
    lexicographical_compare(_II1 __first1, _II1 __last1,
       _II2 __first2, _II2 __last2, _Compare __comp)
    {
      typedef typename iterator_traits<_II1>::iterator_category _Category1;
      typedef typename iterator_traits<_II2>::iterator_category _Category2;
      typedef std::__lc_rai<_Category1, _Category2> __rai_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
      ;
#pragma empty_line
      __last1 = __rai_type::__newlast1(__first1, __last1, __first2, __last2);
      for (; __first1 != __last1 && __rai_type::__cnd2(__first2, __last2);
    ++__first1, ++__first2)
 {
   if (__comp(*__first1, *__first2))
     return true;
   if (__comp(*__first2, *__first1))
     return false;
 }
      return __first1 == __last1 && __first2 != __last2;
    }
#pragma line 1145 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _InputIterator1, typename _InputIterator2>
    pair<_InputIterator1, _InputIterator2>
    mismatch(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      while (__first1 != __last1 && *__first1 == *__first2)
        {
   ++__first1;
   ++__first2;
        }
      return pair<_InputIterator1, _InputIterator2>(__first1, __first2);
    }
#pragma line 1182 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _InputIterator1, typename _InputIterator2,
    typename _BinaryPredicate>
    pair<_InputIterator1, _InputIterator2>
    mismatch(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2, _BinaryPredicate __binary_pred)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ;
#pragma empty_line
      while (__first1 != __last1 && bool(__binary_pred(*__first1, *__first2)))
        {
   ++__first1;
   ++__first2;
        }
      return pair<_InputIterator1, _InputIterator2>(__first1, __first2);
    }
#pragma empty_line
#pragma empty_line
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 2 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 2 3
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 59 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
  template<typename _CharT>
    struct _Char_types
    {
      typedef unsigned long int_type;
      typedef std::streampos pos_type;
      typedef std::streamoff off_type;
      typedef std::mbstate_t state_type;
    };
#pragma line 84 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
  template<typename _CharT>
    struct char_traits
    {
      typedef _CharT char_type;
      typedef typename _Char_types<_CharT>::int_type int_type;
      typedef typename _Char_types<_CharT>::pos_type pos_type;
      typedef typename _Char_types<_CharT>::off_type off_type;
      typedef typename _Char_types<_CharT>::state_type state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static std::size_t
      length(const char_type* __s);
#pragma empty_line
      static const char_type*
      find(const char_type* __s, std::size_t __n, const char_type& __a);
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static char_type*
      assign(char_type* __s, std::size_t __n, char_type __a);
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return static_cast<char_type>(__c); }
#pragma empty_line
      static int_type
      to_int_type(const char_type& __c)
      { return static_cast<int_type>(__c); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>(-1); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return !eq_int_type(__c, eof()) ? __c : to_int_type(char_type()); }
    };
#pragma empty_line
  template<typename _CharT>
    int
    char_traits<_CharT>::
    compare(const char_type* __s1, const char_type* __s2, std::size_t __n)
    {
      for (std::size_t __i = 0; __i < __n; ++__i)
 if (lt(__s1[__i], __s2[__i]))
   return -1;
 else if (lt(__s2[__i], __s1[__i]))
   return 1;
      return 0;
    }
#pragma empty_line
  template<typename _CharT>
    std::size_t
    char_traits<_CharT>::
    length(const char_type* __p)
    {
      std::size_t __i = 0;
      while (!eq(__p[__i], char_type()))
        ++__i;
      return __i;
    }
#pragma empty_line
  template<typename _CharT>
    const typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    find(const char_type* __s, std::size_t __n, const char_type& __a)
    {
      for (std::size_t __i = 0; __i < __n; ++__i)
        if (eq(__s[__i], __a))
          return __s + __i;
      return 0;
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    move(char_type* __s1, const char_type* __s2, std::size_t __n)
    {
      return static_cast<_CharT*>(__builtin_memmove(__s1, __s2,
          __n * sizeof(char_type)));
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    copy(char_type* __s1, const char_type* __s2, std::size_t __n)
    {
#pragma empty_line
      std::copy(__s2, __s2 + __n, __s1);
      return __s1;
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    assign(char_type* __s, std::size_t __n, char_type __a)
    {
#pragma empty_line
      std::fill_n(__s, __n, __a);
      return __s;
    }
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 228 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
  template<class _CharT>
    struct char_traits : public __gnu_cxx::char_traits<_CharT>
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct char_traits<char>
    {
      typedef char char_type;
      typedef int int_type;
      typedef streampos pos_type;
      typedef streamoff off_type;
      typedef mbstate_t state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, size_t __n)
      { return __builtin_memcmp(__s1, __s2, __n); }
#pragma empty_line
      static size_t
      length(const char_type* __s)
      { return __builtin_strlen(__s); }
#pragma empty_line
      static const char_type*
      find(const char_type* __s, size_t __n, const char_type& __a)
      { return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n)); }
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, size_t __n)
      { return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n)); }
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
      { return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n)); }
#pragma empty_line
      static char_type*
      assign(char_type* __s, size_t __n, char_type __a)
      { return static_cast<char_type*>(__builtin_memset(__s, __a, __n)); }
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return static_cast<char_type>(__c); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static int_type
      to_int_type(const char_type& __c)
      { return static_cast<int_type>(static_cast<unsigned char>(__c)); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>(-1); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return (__c == eof()) ? 0 : __c; }
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct char_traits<wchar_t>
    {
      typedef wchar_t char_type;
      typedef wint_t int_type;
      typedef streamoff off_type;
      typedef wstreampos pos_type;
      typedef mbstate_t state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemcmp(__s1, __s2, __n); }
#pragma empty_line
      static size_t
      length(const char_type* __s)
      { return wcslen(__s); }
#pragma empty_line
      static const char_type*
      find(const char_type* __s, size_t __n, const char_type& __a)
      { return wmemchr(__s, __a, __n); }
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemmove(__s1, __s2, __n); }
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemcpy(__s1, __s2, __n); }
#pragma empty_line
      static char_type*
      assign(char_type* __s, size_t __n, char_type __a)
      { return wmemset(__s, __a, __n); }
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return char_type(__c); }
#pragma empty_line
      static int_type
      to_int_type(const char_type& __c)
      { return int_type(__c); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>((0xffffffffu)); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return eq_int_type(__c, eof()) ? 0 : __c; }
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 1 3
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 3
#pragma empty_line
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/locale.h" 1 3 4
#pragma line 28 "/usr/include/locale.h" 3 4
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 29 "/usr/include/locale.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/locale.h" 1 3 4
#pragma line 30 "/usr/include/locale.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma line 51 "/usr/include/locale.h" 3 4
struct lconv
{
#pragma empty_line
#pragma empty_line
  char *decimal_point;
  char *thousands_sep;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  char *grouping;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;
#pragma empty_line
  char p_cs_precedes;
#pragma empty_line
  char p_sep_by_space;
#pragma empty_line
  char n_cs_precedes;
#pragma empty_line
  char n_sep_by_space;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  char p_sign_posn;
  char n_sign_posn;
#pragma empty_line
#pragma empty_line
  char int_p_cs_precedes;
#pragma empty_line
  char int_p_sep_by_space;
#pragma empty_line
  char int_n_cs_precedes;
#pragma empty_line
  char int_n_sep_by_space;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  char int_p_sign_posn;
  char int_n_sign_posn;
#pragma line 118 "/usr/include/locale.h" 3 4
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *setlocale (int __category, const char *__locale) throw ();
#pragma empty_line
#pragma empty_line
extern struct lconv *localeconv (void) throw ();
#pragma line 141 "/usr/include/locale.h" 3 4
extern locale_t newlocale (int __category_mask, const char *__locale,
      locale_t __base) throw ();
#pragma line 176 "/usr/include/locale.h" 3 4
extern locale_t duplocale (locale_t __dataset) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void freelocale (locale_t __dataset) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern locale_t uselocale (locale_t __dataset) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 45 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 2 3
#pragma line 53 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 3
namespace std
{
  using ::lconv;
  using ::setlocale;
  using ::localeconv;
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  extern "C" __typeof(uselocale) __uselocale;
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  typedef __locale_t __c_locale;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline int
  __convert_from_v(const __c_locale& __cloc __attribute__ ((__unused__)),
     char* __out,
     const int __size __attribute__ ((__unused__)),
     const char* __fmt, ...)
  {
#pragma empty_line
    __c_locale __old = __gnu_cxx::__uselocale(__cloc);
#pragma line 89 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 3
    __builtin_va_list __args;
    __builtin_va_start(__args, __fmt);
#pragma empty_line
#pragma empty_line
    const int __ret = __builtin_vsnprintf(__out, __size, __fmt, __args);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    __builtin_va_end(__args);
#pragma empty_line
#pragma empty_line
    __gnu_cxx::__uselocale(__old);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    return __ret;
  }
#pragma empty_line
#pragma empty_line
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 2 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/ctype.h" 1 3 4
#pragma line 26 "/usr/include/ctype.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
#pragma line 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
#pragma line 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma empty_line
#pragma empty_line
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
#pragma empty_line
#pragma empty_line
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
#pragma empty_line
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
#pragma line 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
#pragma line 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
#pragma line 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma empty_line
#pragma empty_line
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
#pragma empty_line
typedef int __daddr_t;
typedef int __key_t;
#pragma empty_line
#pragma empty_line
typedef int __clockid_t;
#pragma empty_line
#pragma empty_line
typedef void * __timer_t;
#pragma empty_line
#pragma empty_line
typedef long int __blksize_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
#pragma empty_line
#pragma empty_line
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
#pragma empty_line
#pragma empty_line
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
#pragma empty_line
#pragma empty_line
typedef long int __fsword_t;
#pragma empty_line
typedef long int __ssize_t;
#pragma empty_line
#pragma empty_line
typedef long int __syscall_slong_t;
#pragma empty_line
typedef unsigned long int __syscall_ulong_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __off64_t __loff_t;
typedef char *__caddr_t;
#pragma empty_line
#pragma empty_line
typedef long int __intptr_t;
#pragma empty_line
#pragma empty_line
typedef unsigned int __socklen_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int __sig_atomic_t;
#pragma line 27 "/usr/include/ctype.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma line 39 "/usr/include/ctype.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
#pragma line 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
#pragma line 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
#pragma line 40 "/usr/include/ctype.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
#pragma line 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     throw () __attribute__ ((__const__));
#pragma line 108 "/usr/include/ctype.h" 3 4
extern int isalnum (int) throw ();
extern int isalpha (int) throw ();
extern int iscntrl (int) throw ();
extern int isdigit (int) throw ();
extern int islower (int) throw ();
extern int isgraph (int) throw ();
extern int isprint (int) throw ();
extern int ispunct (int) throw ();
extern int isspace (int) throw ();
extern int isupper (int) throw ();
extern int isxdigit (int) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int tolower (int __c) throw ();
#pragma empty_line
#pragma empty_line
extern int toupper (int __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int isblank (int) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int isctype (int __c, int __mask) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int isascii (int __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int toascii (int __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int _toupper (int) throw ();
extern int _tolower (int) throw ();
#pragma line 251 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, locale_t) throw ();
extern int isalpha_l (int, locale_t) throw ();
extern int iscntrl_l (int, locale_t) throw ();
extern int isdigit_l (int, locale_t) throw ();
extern int islower_l (int, locale_t) throw ();
extern int isgraph_l (int, locale_t) throw ();
extern int isprint_l (int, locale_t) throw ();
extern int ispunct_l (int, locale_t) throw ();
extern int isspace_l (int, locale_t) throw ();
extern int isupper_l (int, locale_t) throw ();
extern int isxdigit_l (int, locale_t) throw ();
#pragma empty_line
extern int isblank_l (int, locale_t) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __tolower_l (int __c, locale_t __l) throw ();
extern int tolower_l (int __c, locale_t __l) throw ();
#pragma empty_line
#pragma empty_line
extern int __toupper_l (int __c, locale_t __l) throw ();
extern int toupper_l (int __c, locale_t __l) throw ();
#pragma line 327 "/usr/include/ctype.h" 3 4
}
#pragma line 45 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 2 3
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
namespace std
{
  using ::isalnum;
  using ::isalpha;
  using ::iscntrl;
  using ::isdigit;
  using ::isgraph;
  using ::islower;
  using ::isprint;
  using ::ispunct;
  using ::isspace;
  using ::isupper;
  using ::isxdigit;
  using ::tolower;
  using ::toupper;
}
#pragma line 45 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 57 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 3
  class locale;
#pragma empty_line
  template<typename _Facet>
    bool
    has_facet(const locale&) throw();
#pragma empty_line
  template<typename _Facet>
    const _Facet&
    use_facet(const locale&);
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    bool
    isspace(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isprint(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    iscntrl(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isupper(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    islower(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isalpha(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isdigit(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    ispunct(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isxdigit(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isalnum(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isgraph(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    _CharT
    toupper(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    _CharT
    tolower(_CharT, const locale&);
#pragma empty_line
#pragma empty_line
  class ctype_base;
  template<typename _CharT>
    class ctype;
  template<> class ctype<char>;
#pragma empty_line
  template<> class ctype<wchar_t>;
#pragma empty_line
  template<typename _CharT>
    class ctype_byname;
#pragma empty_line
#pragma empty_line
  class codecvt_base;
  template<typename _InternT, typename _ExternT, typename _StateT>
    class codecvt;
  template<> class codecvt<char, char, mbstate_t>;
#pragma empty_line
  template<> class codecvt<wchar_t, char, mbstate_t>;
#pragma empty_line
  template<typename _InternT, typename _ExternT, typename _StateT>
    class codecvt_byname;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class num_get;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class num_put;
#pragma empty_line
  template<typename _CharT> class numpunct;
  template<typename _CharT> class numpunct_byname;
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    class collate;
  template<typename _CharT> class
    collate_byname;
#pragma empty_line
#pragma empty_line
  class time_base;
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class time_get;
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class time_get_byname;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class time_put;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class time_put_byname;
#pragma empty_line
#pragma empty_line
  class money_base;
#pragma empty_line
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class money_get;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class money_put;
#pragma empty_line
  template<typename _CharT, bool _Intl = false>
    class moneypunct;
  template<typename _CharT, bool _Intl = false>
    class moneypunct_byname;
#pragma empty_line
#pragma empty_line
  class messages_base;
  template<typename _CharT>
    class messages;
  template<typename _CharT>
    class messages_byname;
#pragma empty_line
#pragma empty_line
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 1 3
#pragma line 30 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 3
#pragma GCC visibility push(default)
#pragma line 170 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
#pragma line 1 "/usr/include/pthread.h" 1 3 4
#pragma line 22 "/usr/include/pthread.h" 3 4
#pragma line 1 "/usr/include/sched.h" 1 3 4
#pragma line 29 "/usr/include/sched.h" 3 4
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 30 "/usr/include/sched.h" 2 3 4
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __time_t time_t;
#pragma line 32 "/usr/include/sched.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
#pragma line 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __syscall_slong_t tv_nsec;
#pragma line 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
#pragma line 33 "/usr/include/sched.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __pid_t pid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
#pragma line 76 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h" 1 3 4
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h" 3 4
struct sched_param
{
  int sched_priority;
};
#pragma line 77 "/usr/include/x86_64-linux-gnu/bits/sched.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) throw ();
#pragma empty_line
#pragma empty_line
extern int unshare (int __flags) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_getcpu (void) throw ();
#pragma empty_line
#pragma empty_line
extern int getcpu (unsigned int *, unsigned int *) throw ();
#pragma empty_line
#pragma empty_line
extern int setns (int __fd, int __nstype) throw ();
#pragma empty_line
#pragma empty_line
}
#pragma line 44 "/usr/include/sched.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 1 3 4
#pragma line 32 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 3 4
typedef unsigned long int __cpu_mask;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
#pragma line 115 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h" 3 4
extern "C" {
#pragma empty_line
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
     throw ();
extern cpu_set_t *__sched_cpualloc (size_t __count) throw () ;
extern void __sched_cpufree (cpu_set_t *__set) throw ();
#pragma empty_line
}
#pragma line 45 "/usr/include/sched.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     throw ();
#pragma empty_line
#pragma empty_line
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_getscheduler (__pid_t __pid) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_yield (void) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_get_priority_max (int __algorithm) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_get_priority_min (int __algorithm) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) throw ();
#pragma line 121 "/usr/include/sched.h" 3 4
extern int sched_setaffinity (__pid_t __pid, size_t __cpusetsize,
         const cpu_set_t *__cpuset) throw ();
#pragma empty_line
#pragma empty_line
extern int sched_getaffinity (__pid_t __pid, size_t __cpusetsize,
         cpu_set_t *__cpuset) throw ();
#pragma empty_line
#pragma empty_line
}
#pragma line 23 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/time.h" 1 3 4
#pragma line 29 "/usr/include/time.h" 3 4
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 30 "/usr/include/time.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
#pragma line 73 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/timex.h" 1 3 4
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/timex.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/timex.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;
#pragma empty_line
  int tai;
#pragma empty_line
#pragma empty_line
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
#pragma line 74 "/usr/include/x86_64-linux-gnu/bits/time.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) throw ();
#pragma empty_line
}
#pragma line 34 "/usr/include/time.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __clock_t clock_t;
#pragma line 38 "/usr/include/time.h" 2 3 4
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
#pragma empty_line
#pragma empty_line
  long int tm_gmtoff;
  const char *tm_zone;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
};
#pragma line 40 "/usr/include/time.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __clockid_t clockid_t;
#pragma line 47 "/usr/include/time.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __timer_t timer_t;
#pragma line 48 "/usr/include/time.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
#pragma line 49 "/usr/include/time.h" 2 3 4
struct sigevent;
#pragma line 68 "/usr/include/time.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern clock_t clock (void) throw ();
#pragma empty_line
#pragma empty_line
extern time_t time (time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
extern double difftime (time_t __time1, time_t __time0)
     throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern time_t mktime (struct tm *__tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern struct tm *gmtime (const time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern struct tm *localtime (const time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *asctime (const struct tm *__tp) throw ();
#pragma empty_line
#pragma empty_line
extern char *ctime (const time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) throw ();
#pragma empty_line
#pragma empty_line
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *tzname[2];
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void tzset (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int daylight;
extern long int timezone;
#pragma line 190 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) throw ();
#pragma empty_line
#pragma empty_line
extern time_t timelocal (struct tm *__tp) throw ();
#pragma empty_line
#pragma empty_line
extern int dysize (int __year) throw () __attribute__ ((__const__));
#pragma line 205 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) throw ();
#pragma empty_line
#pragma empty_line
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) throw ();
#pragma empty_line
#pragma empty_line
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
#pragma empty_line
#pragma empty_line
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) throw ();
#pragma empty_line
#pragma empty_line
extern int timer_delete (timer_t __timerid) throw ();
#pragma empty_line
#pragma empty_line
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) throw ();
#pragma empty_line
#pragma empty_line
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     throw ();
#pragma empty_line
#pragma empty_line
extern int timer_getoverrun (timer_t __timerid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int timespec_get (struct timespec *__ts, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma line 274 "/usr/include/time.h" 3 4
extern int getdate_err;
#pragma line 283 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
#pragma line 297 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
#pragma empty_line
#pragma empty_line
}
#pragma line 24 "/usr/include/pthread.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
#pragma line 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
#pragma line 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
#pragma line 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
#pragma empty_line
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
#pragma line 74 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
#pragma empty_line
  unsigned int __nusers;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int __kind;
#pragma empty_line
  short __spins;
  short __elision;
  __pthread_list_t __list;
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
#pragma line 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
#pragma line 87 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
#pragma empty_line
  int __cur_writer;
  int __shared;
  signed char __rwelision;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  unsigned char __pad1[7];
#pragma empty_line
#pragma empty_line
  unsigned long int __pad2;
#pragma empty_line
#pragma empty_line
  unsigned int __flags;
#pragma line 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
#pragma line 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned long int pthread_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned int pthread_key_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int pthread_once_t;
#pragma empty_line
#pragma empty_line
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
#pragma empty_line
typedef union pthread_attr_t pthread_attr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
#pragma empty_line
#pragma empty_line
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
#pragma empty_line
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef volatile int pthread_spinlock_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
#pragma line 27 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
#pragma line 26 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long int __jmp_buf[8];
#pragma line 28 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 29 "/usr/include/pthread.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_CREATE_JOINABLE,
#pragma empty_line
  PTHREAD_CREATE_DETACHED
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP
#pragma empty_line
  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL
#pragma empty_line
#pragma empty_line
#pragma empty_line
  , PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
#pragma line 100 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
#pragma line 120 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,
#pragma empty_line
  PTHREAD_EXPLICIT_SCHED
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_SCOPE_SYSTEM,
#pragma empty_line
  PTHREAD_SCOPE_PROCESS
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_PROCESS_PRIVATE,
#pragma empty_line
  PTHREAD_PROCESS_SHARED
#pragma empty_line
};
#pragma line 155 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};
#pragma empty_line
#pragma empty_line
enum
{
  PTHREAD_CANCEL_ENABLE,
#pragma empty_line
  PTHREAD_CANCEL_DISABLE
#pragma empty_line
};
enum
{
  PTHREAD_CANCEL_DEFERRED,
#pragma empty_line
  PTHREAD_CANCEL_ASYNCHRONOUS
#pragma empty_line
};
#pragma line 193 "/usr/include/pthread.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_join (pthread_t __th, void **__thread_return);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_tryjoin_np (pthread_t __th, void **__thread_return) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_timedjoin_np (pthread_t __th, void **__thread_return,
     const struct timespec *__abstime);
#pragma line 238 "/usr/include/pthread.h" 3 4
extern int pthread_clockjoin_np (pthread_t __th, void **__thread_return,
                                 clockid_t __clockid,
     const struct timespec *__abstime);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_detach (pthread_t __th) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern pthread_t pthread_self (void) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_init (pthread_attr_t *__attr) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_destroy (pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     throw () __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     throw () __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     throw () __attribute__ ((__nonnull__ (1, 2, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_setaffinity_np (pthread_attr_t *__attr,
     size_t __cpusetsize,
     const cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_attr_getaffinity_np (const pthread_attr_t *__attr,
     size_t __cpusetsize,
     cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
extern int pthread_getattr_default_np (pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_getattr_np (pthread_t __th, pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma empty_line
#pragma empty_line
extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     throw () __attribute__ ((__nonnull__ (2, 3)));
#pragma empty_line
#pragma empty_line
extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_getname_np (pthread_t __target_thread, char *__buf,
          size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
extern int pthread_setname_np (pthread_t __target_thread, const char *__name)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_getconcurrency (void) throw ();
#pragma empty_line
#pragma empty_line
extern int pthread_setconcurrency (int __level) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_yield (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_setaffinity_np (pthread_t __th, size_t __cpusetsize,
       const cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma empty_line
#pragma empty_line
extern int pthread_getaffinity_np (pthread_t __th, size_t __cpusetsize,
       cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma line 470 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
#pragma line 482 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_setcanceltype (int __type, int *__oldtype);
#pragma empty_line
#pragma empty_line
extern int pthread_cancel (pthread_t __th);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void pthread_testcancel (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
#pragma line 516 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
class __pthread_cleanup_class
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
#pragma empty_line
 public:
  __pthread_cleanup_class (void (*__fct) (void *), void *__arg)
    : __cancel_routine (__fct), __cancel_arg (__arg), __do_it (1) { }
  ~__pthread_cleanup_class () { if (__do_it) __cancel_routine (__cancel_arg); }
  void __setdoit (int __newval) { __do_it = __newval; }
  void __defer () { pthread_setcanceltype (PTHREAD_CANCEL_DEFERRED,
        &__cancel_type); }
  void __restore () const { pthread_setcanceltype (__cancel_type, 0); }
};
#pragma line 718 "/usr/include/pthread.h" 3 4
struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_clocklock (pthread_mutex_t *__restrict __mutex,
        clockid_t __clockid,
        const struct timespec *__restrict
        __abstime) throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
extern int pthread_mutex_consistent_np (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma line 789 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
extern int pthread_mutexattr_getrobust_np (const pthread_mutexattr_t *__attr,
        int *__robustness)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
extern int pthread_mutexattr_setrobust_np (pthread_mutexattr_t *__attr,
        int __robustness)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma line 871 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_clockrdlock (pthread_rwlock_t *__restrict __rwlock,
           clockid_t __clockid,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_clockwrlock (pthread_rwlock_t *__restrict __rwlock,
           clockid_t __clockid,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_cond_destroy (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_cond_signal (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
#pragma line 997 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));
#pragma line 1010 "/usr/include/pthread.h" 3 4
extern int pthread_cond_clockwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       __clockid_t __clock_id,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 4)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_init (pthread_condattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma line 1056 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma line 1123 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int pthread_key_delete (pthread_key_t __key) throw ();
#pragma empty_line
#pragma empty_line
extern void *pthread_getspecific (pthread_key_t __key) throw ();
#pragma empty_line
#pragma empty_line
extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma line 1157 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) throw ();
#pragma line 1171 "/usr/include/pthread.h" 3 4
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 2 3
#pragma line 1 "/usr/include/unistd.h" 1 3 4
#pragma line 27 "/usr/include/unistd.h" 3 4
extern "C" {
#pragma line 202 "/usr/include/unistd.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
#pragma line 203 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
#pragma line 207 "/usr/include/unistd.h" 2 3 4
#pragma line 220 "/usr/include/unistd.h" 3 4
typedef __ssize_t ssize_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 227 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __gid_t gid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __uid_t uid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __off_t off_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __off64_t off64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __useconds_t useconds_t;
#pragma line 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __socklen_t socklen_t;
#pragma line 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int euidaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern int eaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) ;
#pragma line 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) throw ();
#pragma line 345 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int close (int __fd);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
#pragma line 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
#pragma line 404 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;
#pragma empty_line
#pragma empty_line
extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pipe (int __pipedes[2]) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int pipe2 (int __pipedes[2], int __flags) throw () ;
#pragma line 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) throw ();
#pragma line 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int usleep (__useconds_t __useconds);
#pragma line 469 "/usr/include/unistd.h" 3 4
extern int pause (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int chdir (const char *__path) throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fchdir (int __fd) throw () ;
#pragma line 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *get_current_dir_name (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *getwd (char *__buf)
     throw () __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int dup (int __fd) throw () ;
#pragma empty_line
#pragma empty_line
extern int dup2 (int __fd, int __fd2) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int dup3 (int __fd, int __fd2, int __flags) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char **__environ;
#pragma empty_line
extern char **environ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execv (const char *__path, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execle (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execl (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execvp (const char *__file, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execlp (const char *__file, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int nice (int __inc) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void _exit (int __status) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,
#pragma empty_line
    _PC_MAX_CANON,
#pragma empty_line
    _PC_MAX_INPUT,
#pragma empty_line
    _PC_NAME_MAX,
#pragma empty_line
    _PC_PATH_MAX,
#pragma empty_line
    _PC_PIPE_BUF,
#pragma empty_line
    _PC_CHOWN_RESTRICTED,
#pragma empty_line
    _PC_NO_TRUNC,
#pragma empty_line
    _PC_VDISABLE,
#pragma empty_line
    _PC_SYNC_IO,
#pragma empty_line
    _PC_ASYNC_IO,
#pragma empty_line
    _PC_PRIO_IO,
#pragma empty_line
    _PC_SOCK_MAXBUF,
#pragma empty_line
    _PC_FILESIZEBITS,
#pragma empty_line
    _PC_REC_INCR_XFER_SIZE,
#pragma empty_line
    _PC_REC_MAX_XFER_SIZE,
#pragma empty_line
    _PC_REC_MIN_XFER_SIZE,
#pragma empty_line
    _PC_REC_XFER_ALIGN,
#pragma empty_line
    _PC_ALLOC_SIZE_MIN,
#pragma empty_line
    _PC_SYMLINK_MAX,
#pragma empty_line
    _PC_2_SYMLINKS
#pragma empty_line
  };
#pragma empty_line
#pragma empty_line
enum
  {
    _SC_ARG_MAX,
#pragma empty_line
    _SC_CHILD_MAX,
#pragma empty_line
    _SC_CLK_TCK,
#pragma empty_line
    _SC_NGROUPS_MAX,
#pragma empty_line
    _SC_OPEN_MAX,
#pragma empty_line
    _SC_STREAM_MAX,
#pragma empty_line
    _SC_TZNAME_MAX,
#pragma empty_line
    _SC_JOB_CONTROL,
#pragma empty_line
    _SC_SAVED_IDS,
#pragma empty_line
    _SC_REALTIME_SIGNALS,
#pragma empty_line
    _SC_PRIORITY_SCHEDULING,
#pragma empty_line
    _SC_TIMERS,
#pragma empty_line
    _SC_ASYNCHRONOUS_IO,
#pragma empty_line
    _SC_PRIORITIZED_IO,
#pragma empty_line
    _SC_SYNCHRONIZED_IO,
#pragma empty_line
    _SC_FSYNC,
#pragma empty_line
    _SC_MAPPED_FILES,
#pragma empty_line
    _SC_MEMLOCK,
#pragma empty_line
    _SC_MEMLOCK_RANGE,
#pragma empty_line
    _SC_MEMORY_PROTECTION,
#pragma empty_line
    _SC_MESSAGE_PASSING,
#pragma empty_line
    _SC_SEMAPHORES,
#pragma empty_line
    _SC_SHARED_MEMORY_OBJECTS,
#pragma empty_line
    _SC_AIO_LISTIO_MAX,
#pragma empty_line
    _SC_AIO_MAX,
#pragma empty_line
    _SC_AIO_PRIO_DELTA_MAX,
#pragma empty_line
    _SC_DELAYTIMER_MAX,
#pragma empty_line
    _SC_MQ_OPEN_MAX,
#pragma empty_line
    _SC_MQ_PRIO_MAX,
#pragma empty_line
    _SC_VERSION,
#pragma empty_line
    _SC_PAGESIZE,
#pragma empty_line
#pragma empty_line
    _SC_RTSIG_MAX,
#pragma empty_line
    _SC_SEM_NSEMS_MAX,
#pragma empty_line
    _SC_SEM_VALUE_MAX,
#pragma empty_line
    _SC_SIGQUEUE_MAX,
#pragma empty_line
    _SC_TIMER_MAX,
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _SC_BC_BASE_MAX,
#pragma empty_line
    _SC_BC_DIM_MAX,
#pragma empty_line
    _SC_BC_SCALE_MAX,
#pragma empty_line
    _SC_BC_STRING_MAX,
#pragma empty_line
    _SC_COLL_WEIGHTS_MAX,
#pragma empty_line
    _SC_EQUIV_CLASS_MAX,
#pragma empty_line
    _SC_EXPR_NEST_MAX,
#pragma empty_line
    _SC_LINE_MAX,
#pragma empty_line
    _SC_RE_DUP_MAX,
#pragma empty_line
    _SC_CHARCLASS_NAME_MAX,
#pragma empty_line
#pragma empty_line
    _SC_2_VERSION,
#pragma empty_line
    _SC_2_C_BIND,
#pragma empty_line
    _SC_2_C_DEV,
#pragma empty_line
    _SC_2_FORT_DEV,
#pragma empty_line
    _SC_2_FORT_RUN,
#pragma empty_line
    _SC_2_SW_DEV,
#pragma empty_line
    _SC_2_LOCALEDEF,
#pragma empty_line
#pragma empty_line
    _SC_PII,
#pragma empty_line
    _SC_PII_XTI,
#pragma empty_line
    _SC_PII_SOCKET,
#pragma empty_line
    _SC_PII_INTERNET,
#pragma empty_line
    _SC_PII_OSI,
#pragma empty_line
    _SC_POLL,
#pragma empty_line
    _SC_SELECT,
#pragma empty_line
    _SC_UIO_MAXIOV,
#pragma empty_line
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
#pragma empty_line
    _SC_PII_INTERNET_STREAM,
#pragma empty_line
    _SC_PII_INTERNET_DGRAM,
#pragma empty_line
    _SC_PII_OSI_COTS,
#pragma empty_line
    _SC_PII_OSI_CLTS,
#pragma empty_line
    _SC_PII_OSI_M,
#pragma empty_line
    _SC_T_IOV_MAX,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _SC_THREADS,
#pragma empty_line
    _SC_THREAD_SAFE_FUNCTIONS,
#pragma empty_line
    _SC_GETGR_R_SIZE_MAX,
#pragma empty_line
    _SC_GETPW_R_SIZE_MAX,
#pragma empty_line
    _SC_LOGIN_NAME_MAX,
#pragma empty_line
    _SC_TTY_NAME_MAX,
#pragma empty_line
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
#pragma empty_line
    _SC_THREAD_KEYS_MAX,
#pragma empty_line
    _SC_THREAD_STACK_MIN,
#pragma empty_line
    _SC_THREAD_THREADS_MAX,
#pragma empty_line
    _SC_THREAD_ATTR_STACKADDR,
#pragma empty_line
    _SC_THREAD_ATTR_STACKSIZE,
#pragma empty_line
    _SC_THREAD_PRIORITY_SCHEDULING,
#pragma empty_line
    _SC_THREAD_PRIO_INHERIT,
#pragma empty_line
    _SC_THREAD_PRIO_PROTECT,
#pragma empty_line
    _SC_THREAD_PROCESS_SHARED,
#pragma empty_line
#pragma empty_line
    _SC_NPROCESSORS_CONF,
#pragma empty_line
    _SC_NPROCESSORS_ONLN,
#pragma empty_line
    _SC_PHYS_PAGES,
#pragma empty_line
    _SC_AVPHYS_PAGES,
#pragma empty_line
    _SC_ATEXIT_MAX,
#pragma empty_line
    _SC_PASS_MAX,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_VERSION,
#pragma empty_line
    _SC_XOPEN_XCU_VERSION,
#pragma empty_line
    _SC_XOPEN_UNIX,
#pragma empty_line
    _SC_XOPEN_CRYPT,
#pragma empty_line
    _SC_XOPEN_ENH_I18N,
#pragma empty_line
    _SC_XOPEN_SHM,
#pragma empty_line
#pragma empty_line
    _SC_2_CHAR_TERM,
#pragma empty_line
    _SC_2_C_VERSION,
#pragma empty_line
    _SC_2_UPE,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_XPG2,
#pragma empty_line
    _SC_XOPEN_XPG3,
#pragma empty_line
    _SC_XOPEN_XPG4,
#pragma empty_line
#pragma empty_line
    _SC_CHAR_BIT,
#pragma empty_line
    _SC_CHAR_MAX,
#pragma empty_line
    _SC_CHAR_MIN,
#pragma empty_line
    _SC_INT_MAX,
#pragma empty_line
    _SC_INT_MIN,
#pragma empty_line
    _SC_LONG_BIT,
#pragma empty_line
    _SC_WORD_BIT,
#pragma empty_line
    _SC_MB_LEN_MAX,
#pragma empty_line
    _SC_NZERO,
#pragma empty_line
    _SC_SSIZE_MAX,
#pragma empty_line
    _SC_SCHAR_MAX,
#pragma empty_line
    _SC_SCHAR_MIN,
#pragma empty_line
    _SC_SHRT_MAX,
#pragma empty_line
    _SC_SHRT_MIN,
#pragma empty_line
    _SC_UCHAR_MAX,
#pragma empty_line
    _SC_UINT_MAX,
#pragma empty_line
    _SC_ULONG_MAX,
#pragma empty_line
    _SC_USHRT_MAX,
#pragma empty_line
#pragma empty_line
    _SC_NL_ARGMAX,
#pragma empty_line
    _SC_NL_LANGMAX,
#pragma empty_line
    _SC_NL_MSGMAX,
#pragma empty_line
    _SC_NL_NMAX,
#pragma empty_line
    _SC_NL_SETMAX,
#pragma empty_line
    _SC_NL_TEXTMAX,
#pragma empty_line
#pragma empty_line
    _SC_XBS5_ILP32_OFF32,
#pragma empty_line
    _SC_XBS5_ILP32_OFFBIG,
#pragma empty_line
    _SC_XBS5_LP64_OFF64,
#pragma empty_line
    _SC_XBS5_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_LEGACY,
#pragma empty_line
    _SC_XOPEN_REALTIME,
#pragma empty_line
    _SC_XOPEN_REALTIME_THREADS,
#pragma empty_line
#pragma empty_line
    _SC_ADVISORY_INFO,
#pragma empty_line
    _SC_BARRIERS,
#pragma empty_line
    _SC_BASE,
#pragma empty_line
    _SC_C_LANG_SUPPORT,
#pragma empty_line
    _SC_C_LANG_SUPPORT_R,
#pragma empty_line
    _SC_CLOCK_SELECTION,
#pragma empty_line
    _SC_CPUTIME,
#pragma empty_line
    _SC_THREAD_CPUTIME,
#pragma empty_line
    _SC_DEVICE_IO,
#pragma empty_line
    _SC_DEVICE_SPECIFIC,
#pragma empty_line
    _SC_DEVICE_SPECIFIC_R,
#pragma empty_line
    _SC_FD_MGMT,
#pragma empty_line
    _SC_FIFO,
#pragma empty_line
    _SC_PIPE,
#pragma empty_line
    _SC_FILE_ATTRIBUTES,
#pragma empty_line
    _SC_FILE_LOCKING,
#pragma empty_line
    _SC_FILE_SYSTEM,
#pragma empty_line
    _SC_MONOTONIC_CLOCK,
#pragma empty_line
    _SC_MULTI_PROCESS,
#pragma empty_line
    _SC_SINGLE_PROCESS,
#pragma empty_line
    _SC_NETWORKING,
#pragma empty_line
    _SC_READER_WRITER_LOCKS,
#pragma empty_line
    _SC_SPIN_LOCKS,
#pragma empty_line
    _SC_REGEXP,
#pragma empty_line
    _SC_REGEX_VERSION,
#pragma empty_line
    _SC_SHELL,
#pragma empty_line
    _SC_SIGNALS,
#pragma empty_line
    _SC_SPAWN,
#pragma empty_line
    _SC_SPORADIC_SERVER,
#pragma empty_line
    _SC_THREAD_SPORADIC_SERVER,
#pragma empty_line
    _SC_SYSTEM_DATABASE,
#pragma empty_line
    _SC_SYSTEM_DATABASE_R,
#pragma empty_line
    _SC_TIMEOUTS,
#pragma empty_line
    _SC_TYPED_MEMORY_OBJECTS,
#pragma empty_line
    _SC_USER_GROUPS,
#pragma empty_line
    _SC_USER_GROUPS_R,
#pragma empty_line
    _SC_2_PBS,
#pragma empty_line
    _SC_2_PBS_ACCOUNTING,
#pragma empty_line
    _SC_2_PBS_LOCATE,
#pragma empty_line
    _SC_2_PBS_MESSAGE,
#pragma empty_line
    _SC_2_PBS_TRACK,
#pragma empty_line
    _SC_SYMLOOP_MAX,
#pragma empty_line
    _SC_STREAMS,
#pragma empty_line
    _SC_2_PBS_CHECKPOINT,
#pragma empty_line
#pragma empty_line
    _SC_V6_ILP32_OFF32,
#pragma empty_line
    _SC_V6_ILP32_OFFBIG,
#pragma empty_line
    _SC_V6_LP64_OFF64,
#pragma empty_line
    _SC_V6_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_HOST_NAME_MAX,
#pragma empty_line
    _SC_TRACE,
#pragma empty_line
    _SC_TRACE_EVENT_FILTER,
#pragma empty_line
    _SC_TRACE_INHERIT,
#pragma empty_line
    _SC_TRACE_LOG,
#pragma empty_line
#pragma empty_line
    _SC_LEVEL1_ICACHE_SIZE,
#pragma empty_line
    _SC_LEVEL1_ICACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL1_ICACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL1_DCACHE_SIZE,
#pragma empty_line
    _SC_LEVEL1_DCACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL1_DCACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL2_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL2_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL2_CACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL3_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL3_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL3_CACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL4_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL4_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL4_CACHE_LINESIZE,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
#pragma empty_line
    _SC_RAW_SOCKETS,
#pragma empty_line
#pragma empty_line
    _SC_V7_ILP32_OFF32,
#pragma empty_line
    _SC_V7_ILP32_OFFBIG,
#pragma empty_line
    _SC_V7_LP64_OFF64,
#pragma empty_line
    _SC_V7_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_SS_REPL_MAX,
#pragma empty_line
#pragma empty_line
    _SC_TRACE_EVENT_NAME_MAX,
#pragma empty_line
    _SC_TRACE_NAME_MAX,
#pragma empty_line
    _SC_TRACE_SYS_MAX,
#pragma empty_line
    _SC_TRACE_USER_EVENT_MAX,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_STREAMS,
#pragma empty_line
#pragma empty_line
    _SC_THREAD_ROBUST_PRIO_INHERIT,
#pragma empty_line
    _SC_THREAD_ROBUST_PRIO_PROTECT
#pragma empty_line
  };
#pragma empty_line
#pragma empty_line
enum
  {
    _CS_PATH,
#pragma empty_line
#pragma empty_line
    _CS_V6_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_GNU_LIBC_VERSION,
#pragma empty_line
    _CS_GNU_LIBPTHREAD_VERSION,
#pragma empty_line
#pragma empty_line
    _CS_V5_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_V7_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_LFS_CFLAGS = 1000,
#pragma empty_line
    _CS_LFS_LDFLAGS,
#pragma empty_line
    _CS_LFS_LIBS,
#pragma empty_line
    _CS_LFS_LINTFLAGS,
#pragma empty_line
    _CS_LFS64_CFLAGS,
#pragma empty_line
    _CS_LFS64_LDFLAGS,
#pragma empty_line
    _CS_LFS64_LIBS,
#pragma empty_line
    _CS_LFS64_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_V6_ENV,
#pragma empty_line
    _CS_V7_ENV
#pragma empty_line
  };
#pragma line 610 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
extern long int pathconf (const char *__path, int __name)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
extern long int fpathconf (int __fd, int __name) throw ();
#pragma empty_line
#pragma empty_line
extern long int sysconf (int __name) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern size_t confstr (int __name, char *__buf, size_t __len) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t getpid (void) throw ();
#pragma empty_line
#pragma empty_line
extern __pid_t getppid (void) throw ();
#pragma empty_line
#pragma empty_line
extern __pid_t getpgrp (void) throw ();
#pragma empty_line
#pragma empty_line
extern __pid_t __getpgid (__pid_t __pid) throw ();
#pragma empty_line
extern __pid_t getpgid (__pid_t __pid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setpgid (__pid_t __pid, __pid_t __pgid) throw ();
#pragma line 660 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t setsid (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t getsid (__pid_t __pid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uid_t getuid (void) throw ();
#pragma empty_line
#pragma empty_line
extern __uid_t geteuid (void) throw ();
#pragma empty_line
#pragma empty_line
extern __gid_t getgid (void) throw ();
#pragma empty_line
#pragma empty_line
extern __gid_t getegid (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getgroups (int __size, __gid_t __list[]) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int group_member (__gid_t __gid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setuid (__uid_t __uid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setreuid (__uid_t __ruid, __uid_t __euid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int seteuid (__uid_t __uid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setgid (__gid_t __gid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setregid (__gid_t __rgid, __gid_t __egid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setegid (__gid_t __gid) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t fork (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t vfork (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *ttyname (int __fd) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int isatty (int __fd) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ttyslot (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int link (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     throw () __attribute__ ((__nonnull__ (2, 4))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int symlink (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) throw () __attribute__ ((__nonnull__ (1, 3))) ;
#pragma empty_line
#pragma empty_line
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (2, 3))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int unlink (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int unlinkat (int __fd, const char *__name, int __flag)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int rmdir (const char *__path) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __pid_t tcgetpgrp (int __fd) throw ();
#pragma empty_line
#pragma empty_line
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *getlogin (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int setlogin (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 1 3 4
#pragma line 27 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 1 3 4
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *optarg;
#pragma line 50 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
extern int optind;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int opterr;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int optopt;
#pragma line 91 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       throw () __attribute__ ((__nonnull__ (2, 3)));
#pragma empty_line
}
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma line 49 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4
}
#pragma line 870 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int gethostname (char *__name, size_t __len) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int sethostname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int sethostid (long int __id) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getdomainname (char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int vhangup (void) throw ();
#pragma empty_line
#pragma empty_line
extern int revoke (const char *__file) throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int acct (const char *__name) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *getusershell (void) throw ();
extern void endusershell (void) throw ();
extern void setusershell (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int daemon (int __nochdir, int __noclose) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int chroot (const char *__path) throw () __attribute__ ((__nonnull__ (1))) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fsync (int __fd);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int syncfs (int __fd) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int gethostid (void);
#pragma empty_line
#pragma empty_line
extern void sync (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getpagesize (void) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int getdtablesize (void) throw ();
#pragma line 991 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma line 1003 "/usr/include/unistd.h" 3 4
extern int truncate64 (const char *__file, __off64_t __length)
     throw () __attribute__ ((__nonnull__ (1))) ;
#pragma line 1014 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) throw () ;
#pragma line 1024 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) throw () ;
#pragma line 1035 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void *sbrk (intptr_t __delta) throw ();
#pragma line 1056 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) throw ();
#pragma line 1079 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
#pragma line 1089 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
#pragma line 1107 "/usr/include/unistd.h" 3 4
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
    int __outfd, __off64_t *__poutoff,
    size_t __length, unsigned int __flags);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int fdatasync (int __fildes);
#pragma line 1124 "/usr/include/unistd.h" 3 4
extern char *crypt (const char *__key, const char *__salt)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma line 1161 "/usr/include/unistd.h" 3 4
int getentropy (void *__buffer, size_t __length) ;
#pragma line 1170 "/usr/include/unistd.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h" 1 3 4
#pragma line 34 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h" 3 4
extern __pid_t gettid (void) throw ();
#pragma line 1171 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
}
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 2 3
#pragma empty_line
typedef pthread_t __gthread_t;
typedef pthread_key_t __gthread_key_t;
typedef pthread_once_t __gthread_once_t;
typedef pthread_mutex_t __gthread_mutex_t;
typedef pthread_mutex_t __gthread_recursive_mutex_t;
typedef pthread_cond_t __gthread_cond_t;
typedef struct timespec __gthread_time_t;
#pragma line 118 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static __typeof(pthread_once) __gthrw_pthread_once __attribute__ ((__weakref__("pthread_once")));
static __typeof(pthread_getspecific) __gthrw_pthread_getspecific __attribute__ ((__weakref__("pthread_getspecific")));
static __typeof(pthread_setspecific) __gthrw_pthread_setspecific __attribute__ ((__weakref__("pthread_setspecific")));
#pragma empty_line
static __typeof(pthread_create) __gthrw_pthread_create __attribute__ ((__weakref__("pthread_create")));
static __typeof(pthread_join) __gthrw_pthread_join __attribute__ ((__weakref__("pthread_join")));
static __typeof(pthread_equal) __gthrw_pthread_equal __attribute__ ((__weakref__("pthread_equal")));
static __typeof(pthread_self) __gthrw_pthread_self __attribute__ ((__weakref__("pthread_self")));
static __typeof(pthread_detach) __gthrw_pthread_detach __attribute__ ((__weakref__("pthread_detach")));
#pragma empty_line
static __typeof(pthread_cancel) __gthrw_pthread_cancel __attribute__ ((__weakref__("pthread_cancel")));
#pragma empty_line
static __typeof(sched_yield) __gthrw_sched_yield __attribute__ ((__weakref__("sched_yield")));
#pragma empty_line
static __typeof(pthread_mutex_lock) __gthrw_pthread_mutex_lock __attribute__ ((__weakref__("pthread_mutex_lock")));
static __typeof(pthread_mutex_trylock) __gthrw_pthread_mutex_trylock __attribute__ ((__weakref__("pthread_mutex_trylock")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_mutex_timedlock) __gthrw_pthread_mutex_timedlock __attribute__ ((__weakref__("pthread_mutex_timedlock")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_mutex_unlock) __gthrw_pthread_mutex_unlock __attribute__ ((__weakref__("pthread_mutex_unlock")));
static __typeof(pthread_mutex_init) __gthrw_pthread_mutex_init __attribute__ ((__weakref__("pthread_mutex_init")));
static __typeof(pthread_mutex_destroy) __gthrw_pthread_mutex_destroy __attribute__ ((__weakref__("pthread_mutex_destroy")));
#pragma empty_line
static __typeof(pthread_cond_broadcast) __gthrw_pthread_cond_broadcast __attribute__ ((__weakref__("pthread_cond_broadcast")));
static __typeof(pthread_cond_signal) __gthrw_pthread_cond_signal __attribute__ ((__weakref__("pthread_cond_signal")));
static __typeof(pthread_cond_wait) __gthrw_pthread_cond_wait __attribute__ ((__weakref__("pthread_cond_wait")));
static __typeof(pthread_cond_timedwait) __gthrw_pthread_cond_timedwait __attribute__ ((__weakref__("pthread_cond_timedwait")));
static __typeof(pthread_cond_destroy) __gthrw_pthread_cond_destroy __attribute__ ((__weakref__("pthread_cond_destroy")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_key_create) __gthrw_pthread_key_create __attribute__ ((__weakref__("pthread_key_create")));
static __typeof(pthread_key_delete) __gthrw_pthread_key_delete __attribute__ ((__weakref__("pthread_key_delete")));
static __typeof(pthread_mutexattr_init) __gthrw_pthread_mutexattr_init __attribute__ ((__weakref__("pthread_mutexattr_init")));
static __typeof(pthread_mutexattr_settype) __gthrw_pthread_mutexattr_settype __attribute__ ((__weakref__("pthread_mutexattr_settype")));
static __typeof(pthread_mutexattr_destroy) __gthrw_pthread_mutexattr_destroy __attribute__ ((__weakref__("pthread_mutexattr_destroy")));
#pragma line 239 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_active_p (void)
{
  static void *const __gthread_active_ptr
    = __extension__ (void *) &
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 __gthrw_pthread_cancel;
  return __gthread_active_ptr != 0;
}
#pragma line 657 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_create (__gthread_t *__threadid, void *(*__func) (void*),
    void *__args)
{
  return __gthrw_pthread_create (__threadid, __null, __func, __args);
}
#pragma empty_line
static inline int
__gthread_join (__gthread_t __threadid, void **__value_ptr)
{
  return __gthrw_pthread_join (__threadid, __value_ptr);
}
#pragma empty_line
static inline int
__gthread_detach (__gthread_t __threadid)
{
  return __gthrw_pthread_detach (__threadid);
}
#pragma empty_line
static inline int
__gthread_equal (__gthread_t __t1, __gthread_t __t2)
{
  return __gthrw_pthread_equal (__t1, __t2);
}
#pragma empty_line
static inline __gthread_t
__gthread_self (void)
{
  return __gthrw_pthread_self ();
}
#pragma empty_line
static inline int
__gthread_yield (void)
{
  return __gthrw_sched_yield ();
}
#pragma empty_line
static inline int
__gthread_once (__gthread_once_t *__once, void (*__func) (void))
{
  if (__gthread_active_p ())
    return __gthrw_pthread_once (__once, __func);
  else
    return -1;
}
#pragma empty_line
static inline int
__gthread_key_create (__gthread_key_t *__key, void (*__dtor) (void *))
{
  return __gthrw_pthread_key_create (__key, __dtor);
}
#pragma empty_line
static inline int
__gthread_key_delete (__gthread_key_t __key)
{
  return __gthrw_pthread_key_delete (__key);
}
#pragma empty_line
static inline void *
__gthread_getspecific (__gthread_key_t __key)
{
  return __gthrw_pthread_getspecific (__key);
}
#pragma empty_line
static inline int
__gthread_setspecific (__gthread_key_t __key, const void *__ptr)
{
  return __gthrw_pthread_setspecific (__key, __ptr);
}
#pragma empty_line
static inline int
__gthread_mutex_destroy (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_destroy (__mutex);
  else
    return 0;
}
#pragma empty_line
static inline int
__gthread_mutex_lock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_lock (__mutex);
  else
    return 0;
}
#pragma empty_line
static inline int
__gthread_mutex_trylock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_trylock (__mutex);
  else
    return 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_mutex_timedlock (__gthread_mutex_t *__mutex,
      const __gthread_time_t *__abs_timeout)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_timedlock (__mutex, __abs_timeout);
  else
    return 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_mutex_unlock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_unlock (__mutex);
  else
    return 0;
}
#pragma line 800 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_recursive_mutex_lock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_lock (__mutex);
}
#pragma empty_line
static inline int
__gthread_recursive_mutex_trylock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_trylock (__mutex);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_recursive_mutex_timedlock (__gthread_recursive_mutex_t *__mutex,
         const __gthread_time_t *__abs_timeout)
{
  return __gthread_mutex_timedlock (__mutex, __abs_timeout);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_recursive_mutex_unlock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_unlock (__mutex);
}
#pragma empty_line
static inline int
__gthread_cond_broadcast (__gthread_cond_t *__cond)
{
  return __gthrw_pthread_cond_broadcast (__cond);
}
#pragma empty_line
static inline int
__gthread_cond_signal (__gthread_cond_t *__cond)
{
  return __gthrw_pthread_cond_signal (__cond);
}
#pragma empty_line
static inline int
__gthread_cond_wait (__gthread_cond_t *__cond, __gthread_mutex_t *__mutex)
{
  return __gthrw_pthread_cond_wait (__cond, __mutex);
}
#pragma empty_line
static inline int
__gthread_cond_timedwait (__gthread_cond_t *__cond, __gthread_mutex_t *__mutex,
     const __gthread_time_t *__abs_timeout)
{
  return __gthrw_pthread_cond_timedwait (__cond, __mutex, __abs_timeout);
}
#pragma empty_line
static inline int
__gthread_cond_wait_recursive (__gthread_cond_t *__cond,
          __gthread_recursive_mutex_t *__mutex)
{
  return __gthread_cond_wait (__cond, __mutex);
}
#pragma empty_line
static inline int
__gthread_cond_timedwait_recursive (__gthread_cond_t *__cond,
        __gthread_recursive_mutex_t *__mutex,
        const __gthread_time_t *__abs_timeout)
{
  return __gthread_cond_timedwait (__cond, __mutex, __abs_timeout);
}
#pragma empty_line
static inline int
__gthread_cond_destroy (__gthread_cond_t* __cond)
{
  return __gthrw_pthread_cond_destroy (__cond);
}
#pragma line 171 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma GCC visibility pop
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/atomic_word.h" 1 3
#pragma line 32 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/atomic_word.h" 3
typedef int _Atomic_word;
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 2 3
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  static inline _Atomic_word
  __exchange_and_add(volatile _Atomic_word* __mem, int __val)
  { return __sync_fetch_and_add(__mem, __val); }
#pragma empty_line
  static inline void
  __atomic_add(volatile _Atomic_word* __mem, int __val)
  { __sync_fetch_and_add(__mem, __val); }
#pragma line 63 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 3
  static inline _Atomic_word
  __exchange_and_add_single(_Atomic_word* __mem, int __val)
  {
    _Atomic_word __result = *__mem;
    *__mem += __val;
    return __result;
  }
#pragma empty_line
  static inline void
  __atomic_add_single(_Atomic_word* __mem, int __val)
  { *__mem += __val; }
#pragma empty_line
  static inline _Atomic_word
  __attribute__ ((__unused__))
  __exchange_and_add_dispatch(_Atomic_word* __mem, int __val)
  {
#pragma empty_line
    if (__gthread_active_p())
      return __exchange_and_add(__mem, __val);
    else
      return __exchange_and_add_single(__mem, __val);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  }
#pragma empty_line
  static inline void
  __attribute__ ((__unused__))
  __atomic_add_dispatch(_Atomic_word* __mem, int __val)
  {
#pragma empty_line
    if (__gthread_active_p())
      __atomic_add(__mem, __val);
    else
      __atomic_add_single(__mem, __val);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  }
#pragma empty_line
#pragma empty_line
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 2 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 1 3
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 3
#pragma empty_line
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 1 3
#pragma line 48 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++allocator.h" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++allocator.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
extern "C++" {
#pragma empty_line
namespace std
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  class bad_alloc : public exception
  {
  public:
    bad_alloc() throw() { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
    virtual ~bad_alloc() throw();
#pragma empty_line
#pragma empty_line
    virtual const char* what() const throw();
  };
#pragma empty_line
  struct nothrow_t { };
#pragma empty_line
  extern const nothrow_t nothrow;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef void (*new_handler)();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  new_handler set_new_handler(new_handler) throw();
}
#pragma line 93 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 3
void* operator new(std::size_t) throw (std::bad_alloc);
void* operator new[](std::size_t) throw (std::bad_alloc);
void operator delete(void*) throw();
void operator delete[](void*) throw();
void* operator new(std::size_t, const std::nothrow_t&) throw();
void* operator new[](std::size_t, const std::nothrow_t&) throw();
void operator delete(void*, const std::nothrow_t&) throw();
void operator delete[](void*, const std::nothrow_t&) throw();
#pragma empty_line
#pragma empty_line
inline void* operator new(std::size_t, void* __p) throw() { return __p; }
inline void* operator new[](std::size_t, void* __p) throw() { return __p; }
#pragma empty_line
#pragma empty_line
inline void operator delete (void*, void*) throw() { }
inline void operator delete[](void*, void*) throw() { }
#pragma empty_line
}
#pragma empty_line
#pragma GCC visibility pop
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  using std::size_t;
  using std::ptrdiff_t;
#pragma line 53 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 3
  template<typename _Tp>
    class new_allocator
    {
    public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef const _Tp* const_pointer;
      typedef _Tp& reference;
      typedef const _Tp& const_reference;
      typedef _Tp value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef new_allocator<_Tp1> other; };
#pragma empty_line
      new_allocator() throw() { }
#pragma empty_line
      new_allocator(const new_allocator&) throw() { }
#pragma empty_line
      template<typename _Tp1>
        new_allocator(const new_allocator<_Tp1>&) throw() { }
#pragma empty_line
      ~new_allocator() throw() { }
#pragma empty_line
      pointer
      address(reference __x) const { return std::__addressof(__x); }
#pragma empty_line
      const_pointer
      address(const_reference __x) const { return std::__addressof(__x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      pointer
      allocate(size_type __n, const void* = 0)
      {
 if (__n > this->max_size())
   std::__throw_bad_alloc();
#pragma empty_line
 return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
      }
#pragma empty_line
#pragma empty_line
      void
      deallocate(pointer __p, size_type)
      { ::operator delete(__p); }
#pragma empty_line
      size_type
      max_size() const throw()
      { return size_t(-1) / sizeof(_Tp); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      construct(pointer __p, const _Tp& __val)
      { ::new((void *)__p) _Tp(__val); }
#pragma line 117 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 3
      void
      destroy(pointer __p) { __p->~_Tp(); }
    };
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator==(const new_allocator<_Tp>&, const new_allocator<_Tp>&)
    { return true; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator!=(const new_allocator<_Tp>&, const new_allocator<_Tp>&)
    { return false; }
#pragma empty_line
#pragma empty_line
}
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++allocator.h" 2 3
#pragma line 49 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 65 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 3
  template<typename _Tp>
    class allocator;
#pragma empty_line
#pragma empty_line
  template<>
    class allocator<void>
    {
    public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef void* pointer;
      typedef const void* const_pointer;
      typedef void value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef allocator<_Tp1> other; };
    };
#pragma line 91 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 3
  template<typename _Tp>
    class allocator: public __gnu_cxx::new_allocator<_Tp>
    {
   public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef const _Tp* const_pointer;
      typedef _Tp& reference;
      typedef const _Tp& const_reference;
      typedef _Tp value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef allocator<_Tp1> other; };
#pragma empty_line
      allocator() throw() { }
#pragma empty_line
      allocator(const allocator& __a) throw()
      : __gnu_cxx::new_allocator<_Tp>(__a) { }
#pragma empty_line
      template<typename _Tp1>
        allocator(const allocator<_Tp1>&) throw() { }
#pragma empty_line
      ~allocator() throw() { }
#pragma empty_line
#pragma empty_line
    };
#pragma empty_line
  template<typename _T1, typename _T2>
    inline bool
    operator==(const allocator<_T1>&, const allocator<_T2>&)
    { return true; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator==(const allocator<_Tp>&, const allocator<_Tp>&)
    { return true; }
#pragma empty_line
  template<typename _T1, typename _T2>
    inline bool
    operator!=(const allocator<_T1>&, const allocator<_T2>&)
    { return false; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator!=(const allocator<_Tp>&, const allocator<_Tp>&)
    { return false; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class allocator<char>;
  extern template class allocator<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Alloc, bool = __is_empty(_Alloc)>
    struct __alloc_swap
    { static void _S_do_it(_Alloc&, _Alloc&) { } };
#pragma empty_line
  template<typename _Alloc>
    struct __alloc_swap<_Alloc, false>
    {
      static void
      _S_do_it(_Alloc& __one, _Alloc& __two)
      {
#pragma empty_line
 if (__one != __two)
   swap(__one, __two);
      }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Alloc, bool = __is_empty(_Alloc)>
    struct __alloc_neq
    {
      static bool
      _S_do_it(const _Alloc&, const _Alloc&)
      { return false; }
    };
#pragma empty_line
  template<typename _Alloc>
    struct __alloc_neq<_Alloc, false>
    {
      static bool
      _S_do_it(const _Alloc& __one, const _Alloc& __two)
      { return __one != __two; }
    };
#pragma line 236 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 3
#pragma empty_line
}
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 1 3
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 3
#pragma empty_line
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cxxabi_forced.h" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cxxabi_forced.h" 3
#pragma empty_line
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cxxabi_forced.h" 3
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
#pragma empty_line
namespace __cxxabiv1
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  class __forced_unwind
  {
    virtual ~__forced_unwind() throw();
#pragma empty_line
#pragma empty_line
    virtual void __pure_dummy() = 0;
  };
}
#pragma empty_line
#pragma empty_line
#pragma GCC visibility pop
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline void
    __ostream_write(basic_ostream<_CharT, _Traits>& __out,
      const _CharT* __s, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      const streamsize __put = __out.rdbuf()->sputn(__s, __n);
      if (__put != __n)
 __out.setstate(__ios_base::badbit);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline void
    __ostream_fill(basic_ostream<_CharT, _Traits>& __out, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      const _CharT __c = __out.fill();
      for (; __n > 0; --__n)
 {
   const typename _Traits::int_type __put = __out.rdbuf()->sputc(__c);
   if (_Traits::eq_int_type(__put, _Traits::eof()))
     {
       __out.setstate(__ios_base::badbit);
       break;
     }
 }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    __ostream_insert(basic_ostream<_CharT, _Traits>& __out,
       const _CharT* __s, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      typename __ostream_type::sentry __cerb(__out);
      if (__cerb)
 {
   try
     {
       const streamsize __w = __out.width();
       if (__w > __n)
  {
    const bool __left = ((__out.flags()
     & __ios_base::adjustfield)
           == __ios_base::left);
    if (!__left)
      __ostream_fill(__out, __w - __n);
    if (__out.good())
      __ostream_write(__out, __s, __n);
    if (__left && __out.good())
      __ostream_fill(__out, __w - __n);
  }
       else
  __ostream_write(__out, __s, __n);
       __out.width(0);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __out._M_setstate(__ios_base::badbit);
       throw;
     }
   catch(...)
     { __out._M_setstate(__ios_base::badbit); }
 }
      return __out;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template ostream& __ostream_insert(ostream&, const char*, streamsize);
#pragma empty_line
#pragma empty_line
  extern template wostream& __ostream_insert(wostream&, const wchar_t*,
          streamsize);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 47 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 1 3
#pragma line 60 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 101 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Arg, typename _Result>
    struct unary_function
    {
#pragma empty_line
      typedef _Arg argument_type;
#pragma empty_line
#pragma empty_line
      typedef _Result result_type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Arg1, typename _Arg2, typename _Result>
    struct binary_function
    {
#pragma empty_line
      typedef _Arg1 first_argument_type;
#pragma empty_line
#pragma empty_line
      typedef _Arg2 second_argument_type;
#pragma empty_line
#pragma empty_line
      typedef _Result result_type;
    };
#pragma line 140 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Tp>
    struct plus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x + __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct minus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x - __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct multiplies : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x * __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct divides : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x / __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct modulus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x % __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct negate : public unary_function<_Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x) const
      { return -__x; }
    };
#pragma line 204 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Tp>
    struct equal_to : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x == __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct not_equal_to : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x != __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct greater : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x > __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct less : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x < __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct greater_equal : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x >= __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct less_equal : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x <= __y; }
    };
#pragma line 268 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Tp>
    struct logical_and : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x && __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct logical_or : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x || __y; }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct logical_not : public unary_function<_Tp, bool>
    {
      bool
      operator()(const _Tp& __x) const
      { return !__x; }
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct bit_and : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x & __y; }
    };
#pragma empty_line
  template<typename _Tp>
    struct bit_or : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x | __y; }
    };
#pragma empty_line
  template<typename _Tp>
    struct bit_xor : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x ^ __y; }
    };
#pragma line 351 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Predicate>
    class unary_negate
    : public unary_function<typename _Predicate::argument_type, bool>
    {
    protected:
      _Predicate _M_pred;
#pragma empty_line
    public:
      explicit
      unary_negate(const _Predicate& __x) : _M_pred(__x) { }
#pragma empty_line
      bool
      operator()(const typename _Predicate::argument_type& __x) const
      { return !_M_pred(__x); }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Predicate>
    inline unary_negate<_Predicate>
    not1(const _Predicate& __pred)
    { return unary_negate<_Predicate>(__pred); }
#pragma empty_line
#pragma empty_line
  template<typename _Predicate>
    class binary_negate
    : public binary_function<typename _Predicate::first_argument_type,
        typename _Predicate::second_argument_type, bool>
    {
    protected:
      _Predicate _M_pred;
#pragma empty_line
    public:
      explicit
      binary_negate(const _Predicate& __x) : _M_pred(__x) { }
#pragma empty_line
      bool
      operator()(const typename _Predicate::first_argument_type& __x,
   const typename _Predicate::second_argument_type& __y) const
      { return !_M_pred(__x, __y); }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Predicate>
    inline binary_negate<_Predicate>
    not2(const _Predicate& __pred)
    { return binary_negate<_Predicate>(__pred); }
#pragma line 422 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Arg, typename _Result>
    class pointer_to_unary_function : public unary_function<_Arg, _Result>
    {
    protected:
      _Result (*_M_ptr)(_Arg);
#pragma empty_line
    public:
      pointer_to_unary_function() { }
#pragma empty_line
      explicit
      pointer_to_unary_function(_Result (*__x)(_Arg))
      : _M_ptr(__x) { }
#pragma empty_line
      _Result
      operator()(_Arg __x) const
      { return _M_ptr(__x); }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Arg, typename _Result>
    inline pointer_to_unary_function<_Arg, _Result>
    ptr_fun(_Result (*__x)(_Arg))
    { return pointer_to_unary_function<_Arg, _Result>(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Arg1, typename _Arg2, typename _Result>
    class pointer_to_binary_function
    : public binary_function<_Arg1, _Arg2, _Result>
    {
    protected:
      _Result (*_M_ptr)(_Arg1, _Arg2);
#pragma empty_line
    public:
      pointer_to_binary_function() { }
#pragma empty_line
      explicit
      pointer_to_binary_function(_Result (*__x)(_Arg1, _Arg2))
      : _M_ptr(__x) { }
#pragma empty_line
      _Result
      operator()(_Arg1 __x, _Arg2 __y) const
      { return _M_ptr(__x, __y); }
    };
#pragma empty_line
#pragma empty_line
  template<typename _Arg1, typename _Arg2, typename _Result>
    inline pointer_to_binary_function<_Arg1, _Arg2, _Result>
    ptr_fun(_Result (*__x)(_Arg1, _Arg2))
    { return pointer_to_binary_function<_Arg1, _Arg2, _Result>(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct _Identity : public unary_function<_Tp,_Tp>
    {
      _Tp&
      operator()(_Tp& __x) const
      { return __x; }
#pragma empty_line
      const _Tp&
      operator()(const _Tp& __x) const
      { return __x; }
    };
#pragma empty_line
  template<typename _Pair>
    struct _Select1st : public unary_function<_Pair,
           typename _Pair::first_type>
    {
      typename _Pair::first_type&
      operator()(_Pair& __x) const
      { return __x.first; }
#pragma empty_line
      const typename _Pair::first_type&
      operator()(const _Pair& __x) const
      { return __x.first; }
#pragma line 508 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
    };
#pragma empty_line
  template<typename _Pair>
    struct _Select2nd : public unary_function<_Pair,
           typename _Pair::second_type>
    {
      typename _Pair::second_type&
      operator()(_Pair& __x) const
      { return __x.second; }
#pragma empty_line
      const typename _Pair::second_type&
      operator()(const _Pair& __x) const
      { return __x.second; }
    };
#pragma line 541 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
  template<typename _Ret, typename _Tp>
    class mem_fun_t : public unary_function<_Tp*, _Ret>
    {
    public:
      explicit
      mem_fun_t(_Ret (_Tp::*__pf)())
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp* __p) const
      { return (__p->*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)();
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp>
    class const_mem_fun_t : public unary_function<const _Tp*, _Ret>
    {
    public:
      explicit
      const_mem_fun_t(_Ret (_Tp::*__pf)() const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp* __p) const
      { return (__p->*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)() const;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp>
    class mem_fun_ref_t : public unary_function<_Tp, _Ret>
    {
    public:
      explicit
      mem_fun_ref_t(_Ret (_Tp::*__pf)())
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp& __r) const
      { return (__r.*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)();
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp>
    class const_mem_fun_ref_t : public unary_function<_Tp, _Ret>
    {
    public:
      explicit
      const_mem_fun_ref_t(_Ret (_Tp::*__pf)() const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp& __r) const
      { return (__r.*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)() const;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    class mem_fun1_t : public binary_function<_Tp*, _Arg, _Ret>
    {
    public:
      explicit
      mem_fun1_t(_Ret (_Tp::*__pf)(_Arg))
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp* __p, _Arg __x) const
      { return (__p->*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg);
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    class const_mem_fun1_t : public binary_function<const _Tp*, _Arg, _Ret>
    {
    public:
      explicit
      const_mem_fun1_t(_Ret (_Tp::*__pf)(_Arg) const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp* __p, _Arg __x) const
      { return (__p->*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg) const;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    class mem_fun1_ref_t : public binary_function<_Tp, _Arg, _Ret>
    {
    public:
      explicit
      mem_fun1_ref_t(_Ret (_Tp::*__pf)(_Arg))
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp& __r, _Arg __x) const
      { return (__r.*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg);
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    class const_mem_fun1_ref_t : public binary_function<_Tp, _Arg, _Ret>
    {
    public:
      explicit
      const_mem_fun1_ref_t(_Ret (_Tp::*__pf)(_Arg) const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp& __r, _Arg __x) const
      { return (__r.*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg) const;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline mem_fun_t<_Ret, _Tp>
    mem_fun(_Ret (_Tp::*__f)())
    { return mem_fun_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline const_mem_fun_t<_Ret, _Tp>
    mem_fun(_Ret (_Tp::*__f)() const)
    { return const_mem_fun_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline mem_fun_ref_t<_Ret, _Tp>
    mem_fun_ref(_Ret (_Tp::*__f)())
    { return mem_fun_ref_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline const_mem_fun_ref_t<_Ret, _Tp>
    mem_fun_ref(_Ret (_Tp::*__f)() const)
    { return const_mem_fun_ref_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline mem_fun1_t<_Ret, _Tp, _Arg>
    mem_fun(_Ret (_Tp::*__f)(_Arg))
    { return mem_fun1_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline const_mem_fun1_t<_Ret, _Tp, _Arg>
    mem_fun(_Ret (_Tp::*__f)(_Arg) const)
    { return const_mem_fun1_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline mem_fun1_ref_t<_Ret, _Tp, _Arg>
    mem_fun_ref(_Ret (_Tp::*__f)(_Arg))
    { return mem_fun1_ref_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline const_mem_fun1_ref_t<_Ret, _Tp, _Arg>
    mem_fun_ref(_Ret (_Tp::*__f)(_Arg) const)
    { return const_mem_fun1_ref_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/backward/binders.h" 1 3
#pragma line 60 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/backward/binders.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 99 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/backward/binders.h" 3
  template<typename _Operation>
    class binder1st
    : public unary_function<typename _Operation::second_argument_type,
       typename _Operation::result_type>
    {
    protected:
      _Operation op;
      typename _Operation::first_argument_type value;
#pragma empty_line
    public:
      binder1st(const _Operation& __x,
  const typename _Operation::first_argument_type& __y)
      : op(__x), value(__y) { }
#pragma empty_line
      typename _Operation::result_type
      operator()(const typename _Operation::second_argument_type& __x) const
      { return op(value, __x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typename _Operation::result_type
      operator()(typename _Operation::second_argument_type& __x) const
      { return op(value, __x); }
    } ;
#pragma empty_line
#pragma empty_line
  template<typename _Operation, typename _Tp>
    inline binder1st<_Operation>
    bind1st(const _Operation& __fn, const _Tp& __x)
    {
      typedef typename _Operation::first_argument_type _Arg1_type;
      return binder1st<_Operation>(__fn, _Arg1_type(__x));
    }
#pragma empty_line
#pragma empty_line
  template<typename _Operation>
    class binder2nd
    : public unary_function<typename _Operation::first_argument_type,
       typename _Operation::result_type>
    {
    protected:
      _Operation op;
      typename _Operation::second_argument_type value;
#pragma empty_line
    public:
      binder2nd(const _Operation& __x,
  const typename _Operation::second_argument_type& __y)
      : op(__x), value(__y) { }
#pragma empty_line
      typename _Operation::result_type
      operator()(const typename _Operation::first_argument_type& __x) const
      { return op(__x, value); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typename _Operation::result_type
      operator()(typename _Operation::first_argument_type& __x) const
      { return op(__x, value); }
    } ;
#pragma empty_line
#pragma empty_line
  template<typename _Operation, typename _Tp>
    inline binder2nd<_Operation>
    bind2nd(const _Operation& __fn, const _Tp& __x)
    {
      typedef typename _Operation::second_argument_type _Arg2_type;
      return binder2nd<_Operation>(__fn, _Arg2_type(__x));
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 732 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 2 3
#pragma line 51 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/range_access.h" 1 3
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/range_access.h" 3
#pragma empty_line
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/range_access.h" 3
#pragma line 54 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/initializer_list" 1 3
#pragma line 33 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/initializer_list" 3
#pragma empty_line
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/initializer_list" 3
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 106 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    class basic_string
    {
      typedef typename _Alloc::template rebind<_CharT>::other _CharT_alloc_type;
#pragma empty_line
#pragma empty_line
    public:
      typedef _Traits traits_type;
      typedef typename _Traits::char_type value_type;
      typedef _Alloc allocator_type;
      typedef typename _CharT_alloc_type::size_type size_type;
      typedef typename _CharT_alloc_type::difference_type difference_type;
      typedef typename _CharT_alloc_type::reference reference;
      typedef typename _CharT_alloc_type::const_reference const_reference;
      typedef typename _CharT_alloc_type::pointer pointer;
      typedef typename _CharT_alloc_type::const_pointer const_pointer;
      typedef __gnu_cxx::__normal_iterator<pointer, basic_string> iterator;
      typedef __gnu_cxx::__normal_iterator<const_pointer, basic_string>
                                                            const_iterator;
      typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
      typedef std::reverse_iterator<iterator> reverse_iterator;
#pragma empty_line
    private:
#pragma line 143 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      struct _Rep_base
      {
 size_type _M_length;
 size_type _M_capacity;
 _Atomic_word _M_refcount;
      };
#pragma empty_line
      struct _Rep : _Rep_base
      {
#pragma empty_line
 typedef typename _Alloc::template rebind<char>::other _Raw_bytes_alloc;
#pragma line 168 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
 static const size_type _S_max_size;
 static const _CharT _S_terminal;
#pragma empty_line
#pragma empty_line
#pragma empty_line
        static size_type _S_empty_rep_storage[];
#pragma empty_line
        static _Rep&
        _S_empty_rep()
        {
#pragma empty_line
#pragma empty_line
#pragma empty_line
   void* __p = reinterpret_cast<void*>(&_S_empty_rep_storage);
   return *reinterpret_cast<_Rep*>(__p);
 }
#pragma empty_line
        bool
 _M_is_leaked() const
        { return this->_M_refcount < 0; }
#pragma empty_line
        bool
 _M_is_shared() const
        { return this->_M_refcount > 0; }
#pragma empty_line
        void
 _M_set_leaked()
        { this->_M_refcount = -1; }
#pragma empty_line
        void
 _M_set_sharable()
        { this->_M_refcount = 0; }
#pragma empty_line
 void
 _M_set_length_and_sharable(size_type __n)
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
     {
       this->_M_set_sharable();
       this->_M_length = __n;
       traits_type::assign(this->_M_refdata()[__n], _S_terminal);
#pragma empty_line
#pragma empty_line
     }
 }
#pragma empty_line
 _CharT*
 _M_refdata() throw()
 { return reinterpret_cast<_CharT*>(this + 1); }
#pragma empty_line
 _CharT*
 _M_grab(const _Alloc& __alloc1, const _Alloc& __alloc2)
 {
   return (!_M_is_leaked() && __alloc1 == __alloc2)
           ? _M_refcopy() : _M_clone(__alloc1);
 }
#pragma empty_line
#pragma empty_line
 static _Rep*
 _S_create(size_type, size_type, const _Alloc&);
#pragma empty_line
 void
 _M_dispose(const _Alloc& __a)
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
     {
#pragma empty_line
       ;
       if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
        -1) <= 0)
  {
    ;
    _M_destroy(__a);
  }
     }
 }
#pragma empty_line
 void
 _M_destroy(const _Alloc&) throw();
#pragma empty_line
 _CharT*
 _M_refcopy() throw()
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
            __gnu_cxx::__atomic_add_dispatch(&this->_M_refcount, 1);
   return _M_refdata();
 }
#pragma empty_line
 _CharT*
 _M_clone(const _Alloc&, size_type __res = 0);
      };
#pragma empty_line
#pragma empty_line
      struct _Alloc_hider : _Alloc
      {
 _Alloc_hider(_CharT* __dat, const _Alloc& __a)
 : _Alloc(__a), _M_p(__dat) { }
#pragma empty_line
 _CharT* _M_p;
      };
#pragma empty_line
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static const size_type npos = static_cast<size_type>(-1);
#pragma empty_line
    private:
#pragma empty_line
      mutable _Alloc_hider _M_dataplus;
#pragma empty_line
      _CharT*
      _M_data() const
      { return _M_dataplus._M_p; }
#pragma empty_line
      _CharT*
      _M_data(_CharT* __p)
      { return (_M_dataplus._M_p = __p); }
#pragma empty_line
      _Rep*
      _M_rep() const
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      iterator
      _M_ibegin() const
      { return iterator(_M_data()); }
#pragma empty_line
      iterator
      _M_iend() const
      { return iterator(_M_data() + this->size()); }
#pragma empty_line
      void
      _M_leak()
      {
 if (!_M_rep()->_M_is_leaked())
   _M_leak_hard();
      }
#pragma empty_line
      size_type
      _M_check(size_type __pos, const char* __s) const
      {
 if (__pos > this->size())
   __throw_out_of_range((__s));
 return __pos;
      }
#pragma empty_line
      void
      _M_check_length(size_type __n1, size_type __n2, const char* __s) const
      {
 if (this->max_size() - (this->size() - __n1) < __n2)
   __throw_length_error((__s));
      }
#pragma empty_line
#pragma empty_line
      size_type
      _M_limit(size_type __pos, size_type __off) const
      {
 const bool __testoff = __off < this->size() - __pos;
 return __testoff ? __off : this->size() - __pos;
      }
#pragma empty_line
#pragma empty_line
      bool
      _M_disjunct(const _CharT* __s) const
      {
 return (less<const _CharT*>()(__s, _M_data())
  || less<const _CharT*>()(_M_data() + this->size(), __s));
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static void
      _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
      {
 if (__n == 1)
   traits_type::assign(*__d, *__s);
 else
   traits_type::copy(__d, __s, __n);
      }
#pragma empty_line
      static void
      _M_move(_CharT* __d, const _CharT* __s, size_type __n)
      {
 if (__n == 1)
   traits_type::assign(*__d, *__s);
 else
   traits_type::move(__d, __s, __n);
      }
#pragma empty_line
      static void
      _M_assign(_CharT* __d, size_type __n, _CharT __c)
      {
 if (__n == 1)
   traits_type::assign(*__d, __c);
 else
   traits_type::assign(__d, __n, __c);
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      template<class _Iterator>
        static void
        _S_copy_chars(_CharT* __p, _Iterator __k1, _Iterator __k2)
        {
   for (; __k1 != __k2; ++__k1, ++__p)
     traits_type::assign(*__p, *__k1);
 }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, iterator __k1, iterator __k2)
      { _S_copy_chars(__p, __k1.base(), __k2.base()); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, const_iterator __k1, const_iterator __k2)
      { _S_copy_chars(__p, __k1.base(), __k2.base()); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, _CharT* __k1, _CharT* __k2)
      { _M_copy(__p, __k1, __k2 - __k1); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, const _CharT* __k1, const _CharT* __k2)
      { _M_copy(__p, __k1, __k2 - __k1); }
#pragma empty_line
      static int
      _S_compare(size_type __n1, size_type __n2)
      {
 const difference_type __d = difference_type(__n1 - __n2);
#pragma empty_line
 if (__d > __gnu_cxx::__numeric_traits<int>::__max)
   return __gnu_cxx::__numeric_traits<int>::__max;
 else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
   return __gnu_cxx::__numeric_traits<int>::__min;
 else
   return int(__d);
      }
#pragma empty_line
      void
      _M_mutate(size_type __pos, size_type __len1, size_type __len2);
#pragma empty_line
      void
      _M_leak_hard();
#pragma empty_line
      static _Rep&
      _S_empty_rep()
      { return _Rep::_S_empty_rep(); }
#pragma empty_line
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string()
#pragma empty_line
      : _M_dataplus(_S_empty_rep()._M_refdata(), _Alloc()) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      explicit
      basic_string(const _Alloc& __a);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string(const basic_string& __str);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string(const basic_string& __str, size_type __pos,
     size_type __n = npos);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string(const basic_string& __str, size_type __pos,
     size_type __n, const _Alloc& __a);
#pragma line 478 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string(const _CharT* __s, size_type __n,
     const _Alloc& __a = _Alloc());
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string(const _CharT* __s, const _Alloc& __a = _Alloc());
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string(size_type __n, _CharT __c, const _Alloc& __a = _Alloc());
#pragma line 526 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      template<class _InputIterator>
        basic_string(_InputIterator __beg, _InputIterator __end,
       const _Alloc& __a = _Alloc());
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ~basic_string()
      { _M_rep()->_M_dispose(this->get_allocator()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      operator=(const basic_string& __str)
      { return this->assign(__str); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      operator=(const _CharT* __s)
      { return this->assign(__s); }
#pragma line 559 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      operator=(_CharT __c)
      {
 this->assign(1, __c);
 return *this;
      }
#pragma line 599 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      iterator
      begin()
      {
 _M_leak();
 return iterator(_M_data());
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const_iterator
      begin() const
      { return const_iterator(_M_data()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      iterator
      end()
      {
 _M_leak();
 return iterator(_M_data() + this->size());
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const_iterator
      end() const
      { return const_iterator(_M_data() + this->size()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      rbegin()
      { return reverse_iterator(this->end()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const_reverse_iterator
      rbegin() const
      { return const_reverse_iterator(this->end()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      reverse_iterator
      rend()
      { return reverse_iterator(this->begin()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const_reverse_iterator
      rend() const
      { return const_reverse_iterator(this->begin()); }
#pragma line 705 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      size_type
      size() const
      { return _M_rep()->_M_length; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      size_type
      length() const
      { return _M_rep()->_M_length; }
#pragma empty_line
#pragma empty_line
      size_type
      max_size() const
      { return _Rep::_S_max_size; }
#pragma line 734 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      void
      resize(size_type __n, _CharT __c);
#pragma line 747 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      void
      resize(size_type __n)
      { this->resize(__n, _CharT()); }
#pragma line 767 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      capacity() const
      { return _M_rep()->_M_capacity; }
#pragma line 788 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      void
      reserve(size_type __res_arg = 0);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      clear()
      { _M_mutate(0, this->size(), 0); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      bool
      empty() const
      { return this->size() == 0; }
#pragma line 817 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      const_reference
      operator[] (size_type __pos) const
      {
 ;
 return _M_data()[__pos];
      }
#pragma line 834 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      reference
      operator[](size_type __pos)
      {
#pragma empty_line
 ;
#pragma empty_line
 ;
 _M_leak();
 return _M_data()[__pos];
      }
#pragma line 855 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      const_reference
      at(size_type __n) const
      {
 if (__n >= this->size())
   __throw_out_of_range(("basic_string::at"));
 return _M_data()[__n];
      }
#pragma line 908 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      reference
      at(size_type __n)
      {
 if (__n >= size())
   __throw_out_of_range(("basic_string::at"));
 _M_leak();
 return _M_data()[__n];
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      operator+=(const basic_string& __str)
      { return this->append(__str); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      operator+=(const _CharT* __s)
      { return this->append(__s); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      operator+=(_CharT __c)
      {
 this->push_back(__c);
 return *this;
      }
#pragma line 964 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      append(const basic_string& __str);
#pragma line 979 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      append(const basic_string& __str, size_type __pos, size_type __n);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      append(const _CharT* __s, size_type __n);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      append(const _CharT* __s)
      {
 ;
 return this->append(__s, traits_type::length(__s));
      }
#pragma line 1011 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      append(size_type __n, _CharT __c);
#pragma line 1033 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      template<class _InputIterator>
        basic_string&
        append(_InputIterator __first, _InputIterator __last)
        { return this->replace(_M_iend(), _M_iend(), __first, __last); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      push_back(_CharT __c)
      {
 const size_type __len = 1 + this->size();
 if (__len > this->capacity() || _M_rep()->_M_is_shared())
   this->reserve(__len);
 traits_type::assign(_M_data()[this->size()], __c);
 _M_rep()->_M_set_length_and_sharable(__len);
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      assign(const basic_string& __str);
#pragma line 1089 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      assign(const basic_string& __str, size_type __pos, size_type __n)
      { return this->assign(__str._M_data()
       + __str._M_check(__pos, "basic_string::assign"),
       __str._M_limit(__pos, __n)); }
#pragma line 1105 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      assign(const _CharT* __s, size_type __n);
#pragma line 1117 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      assign(const _CharT* __s)
      {
 ;
 return this->assign(__s, traits_type::length(__s));
      }
#pragma line 1133 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      assign(size_type __n, _CharT __c)
      { return _M_replace_aux(size_type(0), this->size(), __n, __c); }
#pragma line 1145 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      template<class _InputIterator>
        basic_string&
        assign(_InputIterator __first, _InputIterator __last)
        { return this->replace(_M_ibegin(), _M_iend(), __first, __last); }
#pragma line 1173 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      void
      insert(iterator __p, size_type __n, _CharT __c)
      { this->replace(__p, __p, __n, __c); }
#pragma line 1188 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      template<class _InputIterator>
        void
        insert(iterator __p, _InputIterator __beg, _InputIterator __end)
        { this->replace(__p, __p, __beg, __end); }
#pragma line 1219 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      insert(size_type __pos1, const basic_string& __str)
      { return this->insert(__pos1, __str, size_type(0), __str.size()); }
#pragma line 1241 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      insert(size_type __pos1, const basic_string& __str,
      size_type __pos2, size_type __n)
      { return this->insert(__pos1, __str._M_data()
       + __str._M_check(__pos2, "basic_string::insert"),
       __str._M_limit(__pos2, __n)); }
#pragma line 1264 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      insert(size_type __pos, const _CharT* __s, size_type __n);
#pragma line 1282 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      insert(size_type __pos, const _CharT* __s)
      {
 ;
 return this->insert(__pos, __s, traits_type::length(__s));
      }
#pragma line 1305 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      insert(size_type __pos, size_type __n, _CharT __c)
      { return _M_replace_aux(_M_check(__pos, "basic_string::insert"),
         size_type(0), __n, __c); }
#pragma line 1322 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      iterator
      insert(iterator __p, _CharT __c)
      {
 ;
 const size_type __pos = __p - _M_ibegin();
 _M_replace_aux(__pos, size_type(0), size_type(1), __c);
 _M_rep()->_M_set_leaked();
 return iterator(_M_data() + __pos);
      }
#pragma line 1346 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      erase(size_type __pos = 0, size_type __n = npos)
      {
 _M_mutate(_M_check(__pos, "basic_string::erase"),
    _M_limit(__pos, __n), size_type(0));
 return *this;
      }
#pragma line 1362 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      iterator
      erase(iterator __position)
      {
#pragma empty_line
                               ;
 const size_type __pos = __position - _M_ibegin();
 _M_mutate(__pos, size_type(1), size_type(0));
 _M_rep()->_M_set_leaked();
 return iterator(_M_data() + __pos);
      }
#pragma line 1382 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      iterator
      erase(iterator __first, iterator __last);
#pragma line 1401 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(size_type __pos, size_type __n, const basic_string& __str)
      { return this->replace(__pos, __n, __str._M_data(), __str.size()); }
#pragma line 1423 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(size_type __pos1, size_type __n1, const basic_string& __str,
       size_type __pos2, size_type __n2)
      { return this->replace(__pos1, __n1, __str._M_data()
        + __str._M_check(__pos2, "basic_string::replace"),
        __str._M_limit(__pos2, __n2)); }
#pragma line 1447 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(size_type __pos, size_type __n1, const _CharT* __s,
       size_type __n2);
#pragma line 1466 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(size_type __pos, size_type __n1, const _CharT* __s)
      {
 ;
 return this->replace(__pos, __n1, __s, traits_type::length(__s));
      }
#pragma line 1489 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(size_type __pos, size_type __n1, size_type __n2, _CharT __c)
      { return _M_replace_aux(_M_check(__pos, "basic_string::replace"),
         _M_limit(__pos, __n1), __n2, __c); }
#pragma line 1507 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(iterator __i1, iterator __i2, const basic_string& __str)
      { return this->replace(__i1, __i2, __str._M_data(), __str.size()); }
#pragma line 1525 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(iterator __i1, iterator __i2, const _CharT* __s, size_type __n)
      {
#pragma empty_line
                          ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1, __s, __n);
      }
#pragma line 1546 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(iterator __i1, iterator __i2, const _CharT* __s)
      {
 ;
 return this->replace(__i1, __i2, __s, traits_type::length(__s));
      }
#pragma line 1567 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string&
      replace(iterator __i1, iterator __i2, size_type __n, _CharT __c)
      {
#pragma empty_line
                          ;
 return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __c);
      }
#pragma line 1589 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      template<class _InputIterator>
        basic_string&
        replace(iterator __i1, iterator __i2,
  _InputIterator __k1, _InputIterator __k2)
        {
#pragma empty_line
                            ;
   ;
   typedef typename std::__is_integer<_InputIterator>::__type _Integral;
   return _M_replace_dispatch(__i1, __i2, __k1, __k2, _Integral());
 }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2, _CharT* __k1, _CharT* __k2)
      {
#pragma empty_line
                          ;
 ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1, __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2,
       const _CharT* __k1, const _CharT* __k2)
      {
#pragma empty_line
                          ;
 ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1, __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2, iterator __k1, iterator __k2)
      {
#pragma empty_line
                          ;
 ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1.base(), __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2,
       const_iterator __k1, const_iterator __k2)
      {
#pragma empty_line
                          ;
 ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1.base(), __k2 - __k1);
      }
#pragma line 1664 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
    private:
      template<class _Integer>
 basic_string&
 _M_replace_dispatch(iterator __i1, iterator __i2, _Integer __n,
       _Integer __val, __true_type)
        { return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __val); }
#pragma empty_line
      template<class _InputIterator>
 basic_string&
 _M_replace_dispatch(iterator __i1, iterator __i2, _InputIterator __k1,
       _InputIterator __k2, __false_type);
#pragma empty_line
      basic_string&
      _M_replace_aux(size_type __pos1, size_type __n1, size_type __n2,
       _CharT __c);
#pragma empty_line
      basic_string&
      _M_replace_safe(size_type __pos1, size_type __n1, const _CharT* __s,
        size_type __n2);
#pragma empty_line
#pragma empty_line
#pragma empty_line
      template<class _InIterator>
        static _CharT*
        _S_construct_aux(_InIterator __beg, _InIterator __end,
    const _Alloc& __a, __false_type)
 {
          typedef typename iterator_traits<_InIterator>::iterator_category _Tag;
          return _S_construct(__beg, __end, __a, _Tag());
 }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      template<class _Integer>
        static _CharT*
        _S_construct_aux(_Integer __beg, _Integer __end,
    const _Alloc& __a, __true_type)
        { return _S_construct_aux_2(static_cast<size_type>(__beg),
        __end, __a); }
#pragma empty_line
      static _CharT*
      _S_construct_aux_2(size_type __req, _CharT __c, const _Alloc& __a)
      { return _S_construct(__req, __c, __a); }
#pragma empty_line
      template<class _InIterator>
        static _CharT*
        _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a)
 {
   typedef typename std::__is_integer<_InIterator>::__type _Integral;
   return _S_construct_aux(__beg, __end, __a, _Integral());
        }
#pragma empty_line
#pragma empty_line
      template<class _InIterator>
        static _CharT*
         _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
        input_iterator_tag);
#pragma empty_line
#pragma empty_line
#pragma empty_line
      template<class _FwdIterator>
        static _CharT*
        _S_construct(_FwdIterator __beg, _FwdIterator __end, const _Alloc& __a,
       forward_iterator_tag);
#pragma empty_line
      static _CharT*
      _S_construct(size_type __req, _CharT __c, const _Alloc& __a);
#pragma empty_line
    public:
#pragma line 1745 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      copy(_CharT* __s, size_type __n, size_type __pos = 0) const;
#pragma line 1755 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      void
      swap(basic_string& __s);
#pragma line 1765 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      const _CharT*
      c_str() const
      { return _M_data(); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const _CharT*
      data() const
      { return _M_data(); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      allocator_type
      get_allocator() const
      { return _M_dataplus; }
#pragma line 1797 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma line 1810 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find(const basic_string& __str, size_type __pos = 0) const
      { return this->find(__str.data(), __pos, __str.size()); }
#pragma line 1824 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find(const _CharT* __s, size_type __pos = 0) const
      {
 ;
 return this->find(__s, __pos, traits_type::length(__s));
      }
#pragma line 1841 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find(_CharT __c, size_type __pos = 0) const;
#pragma line 1854 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      rfind(const basic_string& __str, size_type __pos = npos) const
      { return this->rfind(__str.data(), __pos, __str.size()); }
#pragma line 1869 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      rfind(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma line 1882 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      rfind(const _CharT* __s, size_type __pos = npos) const
      {
 ;
 return this->rfind(__s, __pos, traits_type::length(__s));
      }
#pragma line 1899 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      rfind(_CharT __c, size_type __pos = npos) const;
#pragma line 1912 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_of(const basic_string& __str, size_type __pos = 0) const
      { return this->find_first_of(__str.data(), __pos, __str.size()); }
#pragma line 1927 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_of(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma line 1940 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_of(const _CharT* __s, size_type __pos = 0) const
      {
 ;
 return this->find_first_of(__s, __pos, traits_type::length(__s));
      }
#pragma line 1959 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_of(_CharT __c, size_type __pos = 0) const
      { return this->find(__c, __pos); }
#pragma line 1973 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_of(const basic_string& __str, size_type __pos = npos) const
      { return this->find_last_of(__str.data(), __pos, __str.size()); }
#pragma line 1988 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_of(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma line 2001 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_of(const _CharT* __s, size_type __pos = npos) const
      {
 ;
 return this->find_last_of(__s, __pos, traits_type::length(__s));
      }
#pragma line 2020 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_of(_CharT __c, size_type __pos = npos) const
      { return this->rfind(__c, __pos); }
#pragma line 2034 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_not_of(const basic_string& __str, size_type __pos = 0) const
      { return this->find_first_not_of(__str.data(), __pos, __str.size()); }
#pragma line 2049 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_not_of(const _CharT* __s, size_type __pos,
   size_type __n) const;
#pragma line 2063 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_not_of(const _CharT* __s, size_type __pos = 0) const
      {
 ;
 return this->find_first_not_of(__s, __pos, traits_type::length(__s));
      }
#pragma line 2080 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_first_not_of(_CharT __c, size_type __pos = 0) const;
#pragma line 2093 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_not_of(const basic_string& __str, size_type __pos = npos) const
      { return this->find_last_not_of(__str.data(), __pos, __str.size()); }
#pragma line 2109 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_not_of(const _CharT* __s, size_type __pos,
         size_type __n) const;
#pragma line 2122 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_not_of(const _CharT* __s, size_type __pos = npos) const
      {
 ;
 return this->find_last_not_of(__s, __pos, traits_type::length(__s));
      }
#pragma line 2139 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      size_type
      find_last_not_of(_CharT __c, size_type __pos = npos) const;
#pragma line 2154 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      basic_string
      substr(size_type __pos = 0, size_type __n = npos) const
      { return basic_string(*this,
       _M_check(__pos, "basic_string::substr"), __n); }
#pragma line 2172 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(const basic_string& __str) const
      {
 const size_type __size = this->size();
 const size_type __osize = __str.size();
 const size_type __len = std::min(__size, __osize);
#pragma empty_line
 int __r = traits_type::compare(_M_data(), __str.data(), __len);
 if (!__r)
   __r = _S_compare(__size, __osize);
 return __r;
      }
#pragma line 2202 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(size_type __pos, size_type __n, const basic_string& __str) const;
#pragma line 2226 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(size_type __pos1, size_type __n1, const basic_string& __str,
       size_type __pos2, size_type __n2) const;
#pragma line 2244 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(const _CharT* __s) const;
#pragma line 2267 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(size_type __pos, size_type __n1, const _CharT* __s) const;
#pragma line 2292 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      int
      compare(size_type __pos, size_type __n1, const _CharT* __s,
       size_type __n2) const;
  };
#pragma line 2304 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT,_Traits,_Alloc>
    operator+(const _CharT* __lhs,
       const basic_string<_CharT,_Traits,_Alloc>& __rhs);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT,_Traits,_Alloc>
    operator+(_CharT __lhs, const basic_string<_CharT,_Traits,_Alloc>& __rhs);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      const _CharT* __rhs)
    {
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs, _CharT __rhs)
    {
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      __string_type __str(__lhs);
      __str.append(__size_type(1), __rhs);
      return __str;
    }
#pragma line 2425 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) == 0; }
#pragma empty_line
  template<typename _CharT>
    inline
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value, bool>::__type
    operator==(const basic_string<_CharT>& __lhs,
        const basic_string<_CharT>& __rhs)
    { return (__lhs.size() == __rhs.size()
       && !std::char_traits<_CharT>::compare(__lhs.data(), __rhs.data(),
          __lhs.size())); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) == 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
#pragma line 2471 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return !(__lhs == __rhs); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return !(__lhs == __rhs); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return !(__lhs == __rhs); }
#pragma line 2508 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) < 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const _CharT* __rhs)
    { return __lhs.compare(__rhs) < 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) > 0; }
#pragma line 2545 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) > 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const _CharT* __rhs)
    { return __lhs.compare(__rhs) > 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) < 0; }
#pragma line 2582 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) <= 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) <= 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) >= 0; }
#pragma line 2619 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) >= 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) >= 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const _CharT* __lhs,
      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) <= 0; }
#pragma line 2656 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline void
    swap(basic_string<_CharT, _Traits, _Alloc>& __lhs,
  basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { __lhs.swap(__rhs); }
#pragma line 2673 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __is,
        basic_string<_CharT, _Traits, _Alloc>& __str);
#pragma empty_line
  template<>
    basic_istream<char>&
    operator>>(basic_istream<char>& __is, basic_string<char>& __str);
#pragma line 2691 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __os,
        const basic_string<_CharT, _Traits, _Alloc>& __str)
    {
#pragma empty_line
#pragma empty_line
      return __ostream_insert(__os, __str.data(), __str.size());
    }
#pragma line 2714 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __is,
     basic_string<_CharT, _Traits, _Alloc>& __str, _CharT __delim);
#pragma line 2732 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __is,
     basic_string<_CharT, _Traits, _Alloc>& __str)
    { return getline(__is, __str, __is.widen('\n')); }
#pragma empty_line
  template<>
    basic_istream<char>&
    getline(basic_istream<char>& __in, basic_string<char>& __str,
     char __delim);
#pragma empty_line
#pragma empty_line
  template<>
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>& __in, basic_string<wchar_t>& __str,
     wchar_t __delim);
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 55 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 1 3
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
#pragma empty_line
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    _Rep::_S_max_size = (((npos - sizeof(_Rep_base))/sizeof(_CharT)) - 1) / 4;
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const _CharT
    basic_string<_CharT, _Traits, _Alloc>::
    _Rep::_S_terminal = _CharT();
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::npos;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::_Rep::_S_empty_rep_storage[
    (sizeof(_Rep_base) + sizeof(_CharT) + sizeof(size_type) - 1) /
      sizeof(size_type)];
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      _CharT*
      basic_string<_CharT, _Traits, _Alloc>::
      _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
     input_iterator_tag)
      {
#pragma empty_line
 if (__beg == __end && __a == _Alloc())
   return _S_empty_rep()._M_refdata();
#pragma empty_line
#pragma empty_line
 _CharT __buf[128];
 size_type __len = 0;
 while (__beg != __end && __len < sizeof(__buf) / sizeof(_CharT))
   {
     __buf[__len++] = *__beg;
     ++__beg;
   }
 _Rep* __r = _Rep::_S_create(__len, size_type(0), __a);
 _M_copy(__r->_M_refdata(), __buf, __len);
 try
   {
     while (__beg != __end)
       {
  if (__len == __r->_M_capacity)
    {
#pragma empty_line
      _Rep* __another = _Rep::_S_create(__len + 1, __len, __a);
      _M_copy(__another->_M_refdata(), __r->_M_refdata(), __len);
      __r->_M_destroy(__a);
      __r = __another;
    }
  __r->_M_refdata()[__len++] = *__beg;
  ++__beg;
       }
   }
 catch(...)
   {
     __r->_M_destroy(__a);
     throw;
   }
 __r->_M_set_length_and_sharable(__len);
 return __r->_M_refdata();
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template <typename _InIterator>
      _CharT*
      basic_string<_CharT, _Traits, _Alloc>::
      _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
     forward_iterator_tag)
      {
#pragma empty_line
 if (__beg == __end && __a == _Alloc())
   return _S_empty_rep()._M_refdata();
#pragma empty_line
#pragma empty_line
 if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
   __throw_logic_error(("basic_string::_S_construct null not valid"));
#pragma empty_line
 const size_type __dnew = static_cast<size_type>(std::distance(__beg,
              __end));
#pragma empty_line
 _Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 try
   { _S_copy_chars(__r->_M_refdata(), __beg, __end); }
 catch(...)
   {
     __r->_M_destroy(__a);
     throw;
   }
 __r->_M_set_length_and_sharable(__dnew);
 return __r->_M_refdata();
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    _CharT*
    basic_string<_CharT, _Traits, _Alloc>::
    _S_construct(size_type __n, _CharT __c, const _Alloc& __a)
    {
#pragma empty_line
      if (__n == 0 && __a == _Alloc())
 return _S_empty_rep()._M_refdata();
#pragma empty_line
#pragma empty_line
      _Rep* __r = _Rep::_S_create(__n, size_type(0), __a);
      if (__n)
 _M_assign(__r->_M_refdata(), __n, __c);
#pragma empty_line
      __r->_M_set_length_and_sharable(__n);
      return __r->_M_refdata();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str)
    : _M_dataplus(__str._M_rep()->_M_grab(_Alloc(__str.get_allocator()),
       __str.get_allocator()),
    __str.get_allocator())
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _Alloc& __a)
    : _M_dataplus(_S_construct(size_type(), _CharT(), __a), __a)
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str, size_type __pos, size_type __n)
    : _M_dataplus(_S_construct(__str._M_data()
          + __str._M_check(__pos,
      "basic_string::basic_string"),
          __str._M_data() + __str._M_limit(__pos, __n)
          + __pos, _Alloc()), _Alloc())
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str, size_type __pos,
   size_type __n, const _Alloc& __a)
    : _M_dataplus(_S_construct(__str._M_data()
          + __str._M_check(__pos,
      "basic_string::basic_string"),
          __str._M_data() + __str._M_limit(__pos, __n)
          + __pos, __a), __a)
    { }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _CharT* __s, size_type __n, const _Alloc& __a)
    : _M_dataplus(_S_construct(__s, __s + __n, __a), __a)
    { }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _CharT* __s, const _Alloc& __a)
    : _M_dataplus(_S_construct(__s, __s ? __s + traits_type::length(__s) :
          __s + npos, __a), __a)
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(size_type __n, _CharT __c, const _Alloc& __a)
    : _M_dataplus(_S_construct(__n, __c, __a), __a)
    { }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InputIterator>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(_InputIterator __beg, _InputIterator __end, const _Alloc& __a)
    : _M_dataplus(_S_construct(__beg, __end, __a), __a)
    { }
#pragma line 242 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    assign(const basic_string& __str)
    {
      if (_M_rep() != __str._M_rep())
 {
#pragma empty_line
   const allocator_type __a = this->get_allocator();
   _CharT* __tmp = __str._M_rep()->_M_grab(__a, __str.get_allocator());
   _M_rep()->_M_dispose(__a);
   _M_data(__tmp);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    assign(const _CharT* __s, size_type __n)
    {
      ;
      _M_check_length(this->size(), __n, "basic_string::assign");
      if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
 return _M_replace_safe(size_type(0), this->size(), __s, __n);
      else
 {
#pragma empty_line
   const size_type __pos = __s - _M_data();
   if (__pos >= __n)
     _M_copy(_M_data(), __s, __n);
   else if (__pos)
     _M_move(_M_data(), __s, __n);
   _M_rep()->_M_set_length_and_sharable(__n);
   return *this;
 }
     }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(size_type __n, _CharT __c)
    {
      if (__n)
 {
   _M_check_length(size_type(0), __n, "basic_string::append");
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_assign(_M_data() + this->size(), __n, __c);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const _CharT* __s, size_type __n)
    {
      ;
      if (__n)
 {
   _M_check_length(size_type(0), __n, "basic_string::append");
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     {
       if (_M_disjunct(__s))
  this->reserve(__len);
       else
  {
    const size_type __off = __s - _M_data();
    this->reserve(__len);
    __s = _M_data() + __off;
  }
     }
   _M_copy(_M_data() + this->size(), __s, __n);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const basic_string& __str)
    {
      const size_type __size = __str.size();
      if (__size)
 {
   const size_type __len = __size + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_copy(_M_data() + this->size(), __str._M_data(), __size);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const basic_string& __str, size_type __pos, size_type __n)
    {
      __str._M_check(__pos, "basic_string::append");
      __n = __str._M_limit(__pos, __n);
      if (__n)
 {
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_copy(_M_data() + this->size(), __str._M_data() + __pos, __n);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     basic_string<_CharT, _Traits, _Alloc>&
     basic_string<_CharT, _Traits, _Alloc>::
     insert(size_type __pos, const _CharT* __s, size_type __n)
     {
       ;
       _M_check(__pos, "basic_string::insert");
       _M_check_length(size_type(0), __n, "basic_string::insert");
       if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
         return _M_replace_safe(__pos, size_type(0), __s, __n);
       else
         {
#pragma empty_line
           const size_type __off = __s - _M_data();
           _M_mutate(__pos, 0, __n);
           __s = _M_data() + __off;
           _CharT* __p = _M_data() + __pos;
           if (__s + __n <= __p)
             _M_copy(__p, __s, __n);
           else if (__s >= __p)
             _M_copy(__p, __s + __n, __n);
           else
             {
        const size_type __nleft = __p - __s;
               _M_copy(__p, __s, __nleft);
               _M_copy(__p + __nleft, __p + __n, __n - __nleft);
             }
           return *this;
         }
     }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     typename basic_string<_CharT, _Traits, _Alloc>::iterator
     basic_string<_CharT, _Traits, _Alloc>::
     erase(iterator __first, iterator __last)
     {
#pragma empty_line
                           ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
       const size_type __size = __last - __first;
       if (__size)
  {
    const size_type __pos = __first - _M_ibegin();
    _M_mutate(__pos, __size, size_type(0));
    _M_rep()->_M_set_leaked();
    return iterator(_M_data() + __pos);
  }
       else
  return __first;
     }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     basic_string<_CharT, _Traits, _Alloc>&
     basic_string<_CharT, _Traits, _Alloc>::
     replace(size_type __pos, size_type __n1, const _CharT* __s,
      size_type __n2)
     {
       ;
       _M_check(__pos, "basic_string::replace");
       __n1 = _M_limit(__pos, __n1);
       _M_check_length(__n1, __n2, "basic_string::replace");
       bool __left;
       if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
         return _M_replace_safe(__pos, __n1, __s, __n2);
       else if ((__left = __s + __n2 <= _M_data() + __pos)
  || _M_data() + __pos + __n1 <= __s)
  {
#pragma empty_line
    size_type __off = __s - _M_data();
    __left ? __off : (__off += __n2 - __n1);
    _M_mutate(__pos, __n1, __n2);
    _M_copy(_M_data() + __pos, _M_data() + __off, __n2);
    return *this;
  }
       else
  {
#pragma empty_line
    const basic_string __tmp(__s, __n2);
    return _M_replace_safe(__pos, __n1, __tmp._M_data(), __n2);
  }
     }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _M_destroy(const _Alloc& __a) throw ()
    {
      const size_type __size = sizeof(_Rep_base) +
                        (this->_M_capacity + 1) * sizeof(_CharT);
      _Raw_bytes_alloc(__a).deallocate(reinterpret_cast<char*>(this), __size);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    _M_leak_hard()
    {
#pragma empty_line
      if (_M_rep() == &_S_empty_rep())
 return;
#pragma empty_line
      if (_M_rep()->_M_is_shared())
 _M_mutate(0, 0, 0);
      _M_rep()->_M_set_leaked();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    _M_mutate(size_type __pos, size_type __len1, size_type __len2)
    {
      const size_type __old_size = this->size();
      const size_type __new_size = __old_size + __len2 - __len1;
      const size_type __how_much = __old_size - __pos - __len1;
#pragma empty_line
      if (__new_size > this->capacity() || _M_rep()->_M_is_shared())
 {
#pragma empty_line
   const allocator_type __a = get_allocator();
   _Rep* __r = _Rep::_S_create(__new_size, this->capacity(), __a);
#pragma empty_line
   if (__pos)
     _M_copy(__r->_M_refdata(), _M_data(), __pos);
   if (__how_much)
     _M_copy(__r->_M_refdata() + __pos + __len2,
      _M_data() + __pos + __len1, __how_much);
#pragma empty_line
   _M_rep()->_M_dispose(__a);
   _M_data(__r->_M_refdata());
 }
      else if (__how_much && __len1 != __len2)
 {
#pragma empty_line
   _M_move(_M_data() + __pos + __len2,
    _M_data() + __pos + __len1, __how_much);
 }
      _M_rep()->_M_set_length_and_sharable(__new_size);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    reserve(size_type __res)
    {
      if (__res != this->capacity() || _M_rep()->_M_is_shared())
        {
#pragma empty_line
   if (__res < this->size())
     __res = this->size();
   const allocator_type __a = get_allocator();
   _CharT* __tmp = _M_rep()->_M_clone(__a, __res - this->size());
   _M_rep()->_M_dispose(__a);
   _M_data(__tmp);
        }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    swap(basic_string& __s)
    {
      if (_M_rep()->_M_is_leaked())
 _M_rep()->_M_set_sharable();
      if (__s._M_rep()->_M_is_leaked())
 __s._M_rep()->_M_set_sharable();
      if (this->get_allocator() == __s.get_allocator())
 {
   _CharT* __tmp = _M_data();
   _M_data(__s._M_data());
   __s._M_data(__tmp);
 }
#pragma empty_line
      else
 {
   const basic_string __tmp1(_M_ibegin(), _M_iend(),
        __s.get_allocator());
   const basic_string __tmp2(__s._M_ibegin(), __s._M_iend(),
        this->get_allocator());
   *this = __tmp2;
   __s = __tmp1;
 }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::_Rep*
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _S_create(size_type __capacity, size_type __old_capacity,
       const _Alloc& __alloc)
    {
#pragma empty_line
#pragma empty_line
      if (__capacity > _S_max_size)
 __throw_length_error(("basic_string::_S_create"));
#pragma line 579 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
      const size_type __pagesize = 4096;
      const size_type __malloc_header_size = 4 * sizeof(void*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
 __capacity = 2 * __old_capacity;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      size_type __size = (__capacity + 1) * sizeof(_CharT) + sizeof(_Rep);
#pragma empty_line
      const size_type __adj_size = __size + __malloc_header_size;
      if (__adj_size > __pagesize && __capacity > __old_capacity)
 {
   const size_type __extra = __pagesize - __adj_size % __pagesize;
   __capacity += __extra / sizeof(_CharT);
#pragma empty_line
   if (__capacity > _S_max_size)
     __capacity = _S_max_size;
   __size = (__capacity + 1) * sizeof(_CharT) + sizeof(_Rep);
 }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void* __place = _Raw_bytes_alloc(__alloc).allocate(__size);
      _Rep *__p = new (__place) _Rep;
      __p->_M_capacity = __capacity;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      __p->_M_set_sharable();
      return __p;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    _CharT*
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _M_clone(const _Alloc& __alloc, size_type __res)
    {
#pragma empty_line
      const size_type __requested_cap = this->_M_length + __res;
      _Rep* __r = _Rep::_S_create(__requested_cap, this->_M_capacity,
      __alloc);
      if (this->_M_length)
 _M_copy(__r->_M_refdata(), _M_refdata(), this->_M_length);
#pragma empty_line
      __r->_M_set_length_and_sharable(this->_M_length);
      return __r->_M_refdata();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    resize(size_type __n, _CharT __c)
    {
      const size_type __size = this->size();
      _M_check_length(__size, __n, "basic_string::resize");
      if (__size < __n)
 this->append(__n - __size, __c);
      else if (__n < __size)
 this->erase(__n);
#pragma empty_line
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InputIterator>
      basic_string<_CharT, _Traits, _Alloc>&
      basic_string<_CharT, _Traits, _Alloc>::
      _M_replace_dispatch(iterator __i1, iterator __i2, _InputIterator __k1,
     _InputIterator __k2, __false_type)
      {
 const basic_string __s(__k1, __k2);
 const size_type __n1 = __i2 - __i1;
 _M_check_length(__n1, __s.size(), "basic_string::_M_replace_dispatch");
 return _M_replace_safe(__i1 - _M_ibegin(), __n1, __s._M_data(),
          __s.size());
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    _M_replace_aux(size_type __pos1, size_type __n1, size_type __n2,
     _CharT __c)
    {
      _M_check_length(__n1, __n2, "basic_string::_M_replace_aux");
      _M_mutate(__pos1, __n1, __n2);
      if (__n2)
 _M_assign(_M_data() + __pos1, __n2, __c);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    _M_replace_safe(size_type __pos1, size_type __n1, const _CharT* __s,
      size_type __n2)
    {
      _M_mutate(__pos1, __n1, __n2);
      if (__n2)
 _M_copy(_M_data() + __pos1, __s, __n2);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
      ;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      const __size_type __len = _Traits::length(__lhs);
      __string_type __str;
      __str.reserve(__len + __rhs.size());
      __str.append(__lhs, __len);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(_CharT __lhs, const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      __string_type __str;
      const __size_type __len = __rhs.size();
      __str.reserve(__len + 1);
      __str.append(__size_type(1), __lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    copy(_CharT* __s, size_type __n, size_type __pos) const
    {
      _M_check(__pos, "basic_string::copy");
      __n = _M_limit(__pos, __n);
      ;
      if (__n)
 _M_copy(__s, _M_data() + __pos, __n);
#pragma empty_line
      return __n;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      const size_type __size = this->size();
      const _CharT* __data = _M_data();
#pragma empty_line
      if (__n == 0)
 return __pos <= __size ? __pos : npos;
#pragma empty_line
      if (__n <= __size)
 {
   for (; __pos <= __size - __n; ++__pos)
     if (traits_type::eq(__data[__pos], __s[0])
  && traits_type::compare(__data + __pos + 1,
     __s + 1, __n - 1) == 0)
       return __pos;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find(_CharT __c, size_type __pos) const
    {
      size_type __ret = npos;
      const size_type __size = this->size();
      if (__pos < __size)
 {
   const _CharT* __data = _M_data();
   const size_type __n = __size - __pos;
   const _CharT* __p = traits_type::find(__data + __pos, __n, __c);
   if (__p)
     __ret = __p - __data;
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    rfind(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      const size_type __size = this->size();
      if (__n <= __size)
 {
   __pos = std::min(size_type(__size - __n), __pos);
   const _CharT* __data = _M_data();
   do
     {
       if (traits_type::compare(__data + __pos, __s, __n) == 0)
  return __pos;
     }
   while (__pos-- > 0);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    rfind(_CharT __c, size_type __pos) const
    {
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   for (++__size; __size-- > 0; )
     if (traits_type::eq(_M_data()[__size], __c))
       return __size;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      for (; __n && __pos < this->size(); ++__pos)
 {
   const _CharT* __p = traits_type::find(__s, __n, _M_data()[__pos]);
   if (__p)
     return __pos;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      size_type __size = this->size();
      if (__size && __n)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (traits_type::find(__s, __n, _M_data()[__size]))
  return __size;
     }
   while (__size-- != 0);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_not_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      for (; __pos < this->size(); ++__pos)
 if (!traits_type::find(__s, __n, _M_data()[__pos]))
   return __pos;
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_not_of(_CharT __c, size_type __pos) const
    {
      for (; __pos < this->size(); ++__pos)
 if (!traits_type::eq(_M_data()[__pos], __c))
   return __pos;
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_not_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
      ;
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (!traits_type::find(__s, __n, _M_data()[__size]))
  return __size;
     }
   while (__size--);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_not_of(_CharT __c, size_type __pos) const
    {
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (!traits_type::eq(_M_data()[__size], __c))
  return __size;
     }
   while (__size--);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n, const basic_string& __str) const
    {
      _M_check(__pos, "basic_string::compare");
      __n = _M_limit(__pos, __n);
      const size_type __osize = __str.size();
      const size_type __len = std::min(__n, __osize);
      int __r = traits_type::compare(_M_data() + __pos, __str.data(), __len);
      if (!__r)
 __r = _S_compare(__n, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(size_type __pos1, size_type __n1, const basic_string& __str,
     size_type __pos2, size_type __n2) const
    {
      _M_check(__pos1, "basic_string::compare");
      __str._M_check(__pos2, "basic_string::compare");
      __n1 = _M_limit(__pos1, __n1);
      __n2 = __str._M_limit(__pos2, __n2);
      const size_type __len = std::min(__n1, __n2);
      int __r = traits_type::compare(_M_data() + __pos1,
         __str.data() + __pos2, __len);
      if (!__r)
 __r = _S_compare(__n1, __n2);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(const _CharT* __s) const
    {
      ;
      const size_type __size = this->size();
      const size_type __osize = traits_type::length(__s);
      const size_type __len = std::min(__size, __osize);
      int __r = traits_type::compare(_M_data(), __s, __len);
      if (!__r)
 __r = _S_compare(__size, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string <_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n1, const _CharT* __s) const
    {
      ;
      _M_check(__pos, "basic_string::compare");
      __n1 = _M_limit(__pos, __n1);
      const size_type __osize = traits_type::length(__s);
      const size_type __len = std::min(__n1, __osize);
      int __r = traits_type::compare(_M_data() + __pos, __s, __len);
      if (!__r)
 __r = _S_compare(__n1, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string <_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n1, const _CharT* __s,
     size_type __n2) const
    {
      ;
      _M_check(__pos, "basic_string::compare");
      __n1 = _M_limit(__pos, __n1);
      const size_type __len = std::min(__n1, __n2);
      int __r = traits_type::compare(_M_data() + __pos, __s, __len);
      if (!__r)
 __r = _S_compare(__n1, __n2);
      return __r;
    }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in,
        basic_string<_CharT, _Traits, _Alloc>& __str)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __istream_type::ios_base __ios_base;
      typedef typename __istream_type::int_type __int_type;
      typedef typename __string_type::size_type __size_type;
      typedef ctype<_CharT> __ctype_type;
      typedef typename __ctype_type::ctype_base __ctype_base;
#pragma empty_line
      __size_type __extracted = 0;
      typename __ios_base::iostate __err = __ios_base::goodbit;
      typename __istream_type::sentry __cerb(__in, false);
      if (__cerb)
 {
   try
     {
#pragma empty_line
       __str.erase();
       _CharT __buf[128];
       __size_type __len = 0;
       const streamsize __w = __in.width();
       const __size_type __n = __w > 0 ? static_cast<__size_type>(__w)
                                : __str.max_size();
       const __ctype_type& __ct = use_facet<__ctype_type>(__in.getloc());
       const __int_type __eof = _Traits::eof();
       __int_type __c = __in.rdbuf()->sgetc();
#pragma empty_line
       while (__extracted < __n
       && !_Traits::eq_int_type(__c, __eof)
       && !__ct.is(__ctype_base::space,
     _Traits::to_char_type(__c)))
  {
    if (__len == sizeof(__buf) / sizeof(_CharT))
      {
        __str.append(__buf, sizeof(__buf) / sizeof(_CharT));
        __len = 0;
      }
    __buf[__len++] = _Traits::to_char_type(__c);
    ++__extracted;
    __c = __in.rdbuf()->snextc();
  }
       __str.append(__buf, __len);
#pragma empty_line
       if (_Traits::eq_int_type(__c, __eof))
  __err |= __ios_base::eofbit;
       __in.width(0);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __in._M_setstate(__ios_base::badbit);
       throw;
     }
   catch(...)
     {
#pragma empty_line
#pragma empty_line
#pragma empty_line
       __in._M_setstate(__ios_base::badbit);
     }
 }
#pragma empty_line
      if (!__extracted)
 __err |= __ios_base::failbit;
      if (__err)
 __in.setstate(__err);
      return __in;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __in,
     basic_string<_CharT, _Traits, _Alloc>& __str, _CharT __delim)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __istream_type::ios_base __ios_base;
      typedef typename __istream_type::int_type __int_type;
      typedef typename __string_type::size_type __size_type;
#pragma empty_line
      __size_type __extracted = 0;
      const __size_type __n = __str.max_size();
      typename __ios_base::iostate __err = __ios_base::goodbit;
      typename __istream_type::sentry __cerb(__in, true);
      if (__cerb)
 {
   try
     {
       __str.erase();
       const __int_type __idelim = _Traits::to_int_type(__delim);
       const __int_type __eof = _Traits::eof();
       __int_type __c = __in.rdbuf()->sgetc();
#pragma empty_line
       while (__extracted < __n
       && !_Traits::eq_int_type(__c, __eof)
       && !_Traits::eq_int_type(__c, __idelim))
  {
    __str += _Traits::to_char_type(__c);
    ++__extracted;
    __c = __in.rdbuf()->snextc();
  }
#pragma empty_line
       if (_Traits::eq_int_type(__c, __eof))
  __err |= __ios_base::eofbit;
       else if (_Traits::eq_int_type(__c, __idelim))
  {
    ++__extracted;
    __in.rdbuf()->sbumpc();
  }
       else
  __err |= __ios_base::failbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __in._M_setstate(__ios_base::badbit);
       throw;
     }
   catch(...)
     {
#pragma empty_line
#pragma empty_line
#pragma empty_line
       __in._M_setstate(__ios_base::badbit);
     }
 }
      if (!__extracted)
 __err |= __ios_base::failbit;
      if (__err)
 __in.setstate(__err);
      return __in;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class basic_string<char>;
  extern template
    basic_istream<char>&
    operator>>(basic_istream<char>&, string&);
  extern template
    basic_ostream<char>&
    operator<<(basic_ostream<char>&, const string&);
  extern template
    basic_istream<char>&
    getline(basic_istream<char>&, string&, char);
  extern template
    basic_istream<char>&
    getline(basic_istream<char>&, string&);
#pragma empty_line
#pragma empty_line
  extern template class basic_string<wchar_t>;
  extern template
    basic_istream<wchar_t>&
    operator>>(basic_istream<wchar_t>&, wstring&);
  extern template
    basic_ostream<wchar_t>&
    operator<<(basic_ostream<wchar_t>&, const wstring&);
  extern template
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>&, wstring&, wchar_t);
  extern template
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>&, wstring&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 56 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 2 3
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 64 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  class locale
  {
  public:
#pragma empty_line
#pragma empty_line
    typedef int category;
#pragma empty_line
#pragma empty_line
    class facet;
    class id;
    class _Impl;
#pragma empty_line
    friend class facet;
    friend class _Impl;
#pragma empty_line
    template<typename _Facet>
      friend bool
      has_facet(const locale&) throw();
#pragma empty_line
    template<typename _Facet>
      friend const _Facet&
      use_facet(const locale&);
#pragma empty_line
    template<typename _Cache>
      friend struct __use_cache;
#pragma line 100 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    static const category none = 0;
    static const category ctype = 1L << 0;
    static const category numeric = 1L << 1;
    static const category collate = 1L << 2;
    static const category time = 1L << 3;
    static const category monetary = 1L << 4;
    static const category messages = 1L << 5;
    static const category all = (ctype | numeric | collate |
        time | monetary | messages);
#pragma line 119 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    locale() throw();
#pragma line 128 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    locale(const locale& __other) throw();
#pragma line 138 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    explicit
    locale(const char* __s);
#pragma line 153 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    locale(const locale& __base, const char* __s, category __cat);
#pragma line 166 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    locale(const locale& __base, const locale& __add, category __cat);
#pragma line 178 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    template<typename _Facet>
      locale(const locale& __other, _Facet* __f);
#pragma empty_line
#pragma empty_line
    ~locale() throw();
#pragma line 192 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    const locale&
    operator=(const locale& __other) throw();
#pragma line 207 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    template<typename _Facet>
      locale
      combine(const locale& __other) const;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    string
    name() const;
#pragma line 226 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    bool
    operator==(const locale& __other) const throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    bool
    operator!=(const locale& __other) const throw()
    { return !(this->operator==(__other)); }
#pragma line 254 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    template<typename _Char, typename _Traits, typename _Alloc>
      bool
      operator()(const basic_string<_Char, _Traits, _Alloc>& __s1,
   const basic_string<_Char, _Traits, _Alloc>& __s2) const;
#pragma line 270 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    static locale
    global(const locale&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const locale&
    classic();
#pragma empty_line
  private:
#pragma empty_line
    _Impl* _M_impl;
#pragma empty_line
#pragma empty_line
    static _Impl* _S_classic;
#pragma empty_line
#pragma empty_line
    static _Impl* _S_global;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const char* const* const _S_categories;
#pragma line 305 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    enum { _S_categories_size = 6 + 6 };
#pragma empty_line
#pragma empty_line
    static __gthread_once_t _S_once;
#pragma empty_line
#pragma empty_line
    explicit
    locale(_Impl*) throw();
#pragma empty_line
    static void
    _S_initialize();
#pragma empty_line
    static void
    _S_initialize_once() throw();
#pragma empty_line
    static category
    _S_normalize_category(category);
#pragma empty_line
    void
    _M_coalesce(const locale& __base, const locale& __add, category __cat);
  };
#pragma line 339 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  class locale::facet
  {
  private:
    friend class locale;
    friend class locale::_Impl;
#pragma empty_line
    mutable _Atomic_word _M_refcount;
#pragma empty_line
#pragma empty_line
    static __c_locale _S_c_locale;
#pragma empty_line
#pragma empty_line
    static const char _S_c_name[2];
#pragma empty_line
#pragma empty_line
    static __gthread_once_t _S_once;
#pragma empty_line
#pragma empty_line
    static void
    _S_initialize_once();
#pragma empty_line
  protected:
#pragma line 370 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
    explicit
    facet(size_t __refs = 0) throw() : _M_refcount(__refs ? 1 : 0)
    { }
#pragma empty_line
#pragma empty_line
    virtual
    ~facet();
#pragma empty_line
    static void
    _S_create_c_locale(__c_locale& __cloc, const char* __s,
         __c_locale __old = 0);
#pragma empty_line
    static __c_locale
    _S_clone_c_locale(__c_locale& __cloc) throw();
#pragma empty_line
    static void
    _S_destroy_c_locale(__c_locale& __cloc);
#pragma empty_line
    static __c_locale
    _S_lc_ctype_c_locale(__c_locale __cloc, const char* __s);
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static __c_locale
    _S_get_c_locale();
#pragma empty_line
    __attribute__ ((__const__)) static const char*
    _S_get_c_name() throw();
#pragma empty_line
  private:
    void
    _M_add_reference() const throw()
    { __gnu_cxx::__atomic_add_dispatch(&_M_refcount, 1); }
#pragma empty_line
    void
    _M_remove_reference() const throw()
    {
#pragma empty_line
      ;
      if (__gnu_cxx::__exchange_and_add_dispatch(&_M_refcount, -1) == 1)
 {
          ;
   try
     { delete this; }
   catch(...)
     { }
 }
    }
#pragma empty_line
    facet(const facet&);
#pragma empty_line
    facet&
    operator=(const facet&);
  };
#pragma line 437 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  class locale::id
  {
  private:
    friend class locale;
    friend class locale::_Impl;
#pragma empty_line
    template<typename _Facet>
      friend const _Facet&
      use_facet(const locale&);
#pragma empty_line
    template<typename _Facet>
      friend bool
      has_facet(const locale&) throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    mutable size_t _M_index;
#pragma empty_line
#pragma empty_line
    static _Atomic_word _S_refcount;
#pragma empty_line
    void
    operator=(const id&);
#pragma empty_line
    id(const id&);
#pragma empty_line
  public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
    id() { }
#pragma empty_line
    size_t
    _M_id() const throw();
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  class locale::_Impl
  {
  public:
#pragma empty_line
    friend class locale;
    friend class locale::facet;
#pragma empty_line
    template<typename _Facet>
      friend bool
      has_facet(const locale&) throw();
#pragma empty_line
    template<typename _Facet>
      friend const _Facet&
      use_facet(const locale&);
#pragma empty_line
    template<typename _Cache>
      friend struct __use_cache;
#pragma empty_line
  private:
#pragma empty_line
    _Atomic_word _M_refcount;
    const facet** _M_facets;
    size_t _M_facets_size;
    const facet** _M_caches;
    char** _M_names;
    static const locale::id* const _S_id_ctype[];
    static const locale::id* const _S_id_numeric[];
    static const locale::id* const _S_id_collate[];
    static const locale::id* const _S_id_time[];
    static const locale::id* const _S_id_monetary[];
    static const locale::id* const _S_id_messages[];
    static const locale::id* const* const _S_facet_categories[];
#pragma empty_line
    void
    _M_add_reference() throw()
    { __gnu_cxx::__atomic_add_dispatch(&_M_refcount, 1); }
#pragma empty_line
    void
    _M_remove_reference() throw()
    {
#pragma empty_line
      ;
      if (__gnu_cxx::__exchange_and_add_dispatch(&_M_refcount, -1) == 1)
 {
          ;
   try
     { delete this; }
   catch(...)
     { }
 }
    }
#pragma empty_line
    _Impl(const _Impl&, size_t);
    _Impl(const char*, size_t);
    _Impl(size_t) throw();
#pragma empty_line
   ~_Impl() throw();
#pragma empty_line
    _Impl(const _Impl&);
#pragma empty_line
    void
    operator=(const _Impl&);
#pragma empty_line
    bool
    _M_check_same_name()
    {
      bool __ret = true;
      if (_M_names[1])
#pragma empty_line
 for (size_t __i = 0; __ret && __i < _S_categories_size - 1; ++__i)
   __ret = __builtin_strcmp(_M_names[__i], _M_names[__i + 1]) == 0;
      return __ret;
    }
#pragma empty_line
    void
    _M_replace_categories(const _Impl*, category);
#pragma empty_line
    void
    _M_replace_category(const _Impl*, const locale::id* const*);
#pragma empty_line
    void
    _M_replace_facet(const _Impl*, const locale::id*);
#pragma empty_line
    void
    _M_install_facet(const locale::id*, const facet*);
#pragma empty_line
    template<typename _Facet>
      void
      _M_init_facet(_Facet* __facet)
      { _M_install_facet(&_Facet::id, __facet); }
#pragma empty_line
    void
    _M_install_cache(const facet*, size_t);
  };
#pragma line 583 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  template<typename _Facet>
    bool
    has_facet(const locale& __loc) throw();
#pragma line 600 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  template<typename _Facet>
    const _Facet&
    use_facet(const locale& __loc);
#pragma line 617 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
  template<typename _CharT>
    class collate : public locale::facet
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef basic_string<_CharT> string_type;
#pragma empty_line
#pragma empty_line
    protected:
#pragma empty_line
#pragma empty_line
      __c_locale _M_c_locale_collate;
#pragma empty_line
    public:
#pragma empty_line
      static locale::id id;
#pragma line 644 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      explicit
      collate(size_t __refs = 0)
      : facet(__refs), _M_c_locale_collate(_S_get_c_locale())
      { }
#pragma line 658 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      explicit
      collate(__c_locale __cloc, size_t __refs = 0)
      : facet(__refs), _M_c_locale_collate(_S_clone_c_locale(__cloc))
      { }
#pragma line 675 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      int
      compare(const _CharT* __lo1, const _CharT* __hi1,
       const _CharT* __lo2, const _CharT* __hi2) const
      { return this->do_compare(__lo1, __hi1, __lo2, __hi2); }
#pragma line 694 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      string_type
      transform(const _CharT* __lo, const _CharT* __hi) const
      { return this->do_transform(__lo, __hi); }
#pragma line 708 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      long
      hash(const _CharT* __lo, const _CharT* __hi) const
      { return this->do_hash(__lo, __hi); }
#pragma empty_line
#pragma empty_line
      int
      _M_compare(const _CharT*, const _CharT*) const throw();
#pragma empty_line
      size_t
      _M_transform(_CharT*, const _CharT*, size_t) const throw();
#pragma empty_line
  protected:
#pragma empty_line
      virtual
      ~collate()
      { _S_destroy_c_locale(_M_c_locale_collate); }
#pragma line 737 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      virtual int
      do_compare(const _CharT* __lo1, const _CharT* __hi1,
   const _CharT* __lo2, const _CharT* __hi2) const;
#pragma line 753 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      virtual string_type
      do_transform(const _CharT* __lo, const _CharT* __hi) const;
#pragma line 766 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 3
      virtual long
      do_hash(const _CharT* __lo, const _CharT* __hi) const;
    };
#pragma empty_line
  template<typename _CharT>
    locale::id collate<_CharT>::id;
#pragma empty_line
#pragma empty_line
  template<>
    int
    collate<char>::_M_compare(const char*, const char*) const throw();
#pragma empty_line
  template<>
    size_t
    collate<char>::_M_transform(char*, const char*, size_t) const throw();
#pragma empty_line
#pragma empty_line
  template<>
    int
    collate<wchar_t>::_M_compare(const wchar_t*, const wchar_t*) const throw();
#pragma empty_line
  template<>
    size_t
    collate<wchar_t>::_M_transform(wchar_t*, const wchar_t*, size_t) const throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    class collate_byname : public collate<_CharT>
    {
    public:
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef basic_string<_CharT> string_type;
#pragma empty_line
#pragma empty_line
      explicit
      collate_byname(const char* __s, size_t __refs = 0)
      : collate<_CharT>(__refs)
      {
 if (__builtin_strcmp(__s, "C") != 0
     && __builtin_strcmp(__s, "POSIX") != 0)
   {
     this->_S_destroy_c_locale(this->_M_c_locale_collate);
     this->_S_create_c_locale(this->_M_c_locale_collate, __s);
   }
      }
#pragma empty_line
    protected:
      virtual
      ~collate_byname() { }
    };
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.tcc" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.tcc" 3
#pragma empty_line
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.tcc" 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Facet>
    locale::
    locale(const locale& __other, _Facet* __f)
    {
      _M_impl = new _Impl(*__other._M_impl, 1);
#pragma empty_line
      try
 { _M_impl->_M_install_facet(&_Facet::id, __f); }
      catch(...)
 {
   _M_impl->_M_remove_reference();
   throw;
 }
      delete [] _M_impl->_M_names[0];
      _M_impl->_M_names[0] = 0;
    }
#pragma empty_line
  template<typename _Facet>
    locale
    locale::
    combine(const locale& __other) const
    {
      _Impl* __tmp = new _Impl(*_M_impl, 1);
      try
 {
   __tmp->_M_replace_facet(__other._M_impl, &_Facet::id);
 }
      catch(...)
 {
   __tmp->_M_remove_reference();
   throw;
 }
      return locale(__tmp);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    bool
    locale::
    operator()(const basic_string<_CharT, _Traits, _Alloc>& __s1,
        const basic_string<_CharT, _Traits, _Alloc>& __s2) const
    {
      typedef std::collate<_CharT> __collate_type;
      const __collate_type& __collate = use_facet<__collate_type>(*this);
      return (__collate.compare(__s1.data(), __s1.data() + __s1.length(),
    __s2.data(), __s2.data() + __s2.length()) < 0);
    }
#pragma empty_line
#pragma empty_line
  template<typename _Facet>
    bool
    has_facet(const locale& __loc) throw()
    {
      const size_t __i = _Facet::id._M_id();
      const locale::facet** __facets = __loc._M_impl->_M_facets;
      return (__i < __loc._M_impl->_M_facets_size
#pragma empty_line
       && dynamic_cast<const _Facet*>(__facets[__i]));
#pragma empty_line
#pragma empty_line
#pragma empty_line
    }
#pragma empty_line
  template<typename _Facet>
    const _Facet&
    use_facet(const locale& __loc)
    {
      const size_t __i = _Facet::id._M_id();
      const locale::facet** __facets = __loc._M_impl->_M_facets;
      if (__i >= __loc._M_impl->_M_facets_size || !__facets[__i])
        __throw_bad_cast();
#pragma empty_line
      return dynamic_cast<const _Facet&>(*__facets[__i]);
#pragma empty_line
#pragma empty_line
#pragma empty_line
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    int
    collate<_CharT>::_M_compare(const _CharT*, const _CharT*) const throw ()
    { return 0; }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    size_t
    collate<_CharT>::_M_transform(_CharT*, const _CharT*, size_t) const throw ()
    { return 0; }
#pragma empty_line
  template<typename _CharT>
    int
    collate<_CharT>::
    do_compare(const _CharT* __lo1, const _CharT* __hi1,
        const _CharT* __lo2, const _CharT* __hi2) const
    {
#pragma empty_line
#pragma empty_line
      const string_type __one(__lo1, __hi1);
      const string_type __two(__lo2, __hi2);
#pragma empty_line
      const _CharT* __p = __one.c_str();
      const _CharT* __pend = __one.data() + __one.length();
      const _CharT* __q = __two.c_str();
      const _CharT* __qend = __two.data() + __two.length();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      for (;;)
 {
   const int __res = _M_compare(__p, __q);
   if (__res)
     return __res;
#pragma empty_line
   __p += char_traits<_CharT>::length(__p);
   __q += char_traits<_CharT>::length(__q);
   if (__p == __pend && __q == __qend)
     return 0;
   else if (__p == __pend)
     return -1;
   else if (__q == __qend)
     return 1;
#pragma empty_line
   __p++;
   __q++;
 }
    }
#pragma empty_line
  template<typename _CharT>
    typename collate<_CharT>::string_type
    collate<_CharT>::
    do_transform(const _CharT* __lo, const _CharT* __hi) const
    {
      string_type __ret;
#pragma empty_line
#pragma empty_line
      const string_type __str(__lo, __hi);
#pragma empty_line
      const _CharT* __p = __str.c_str();
      const _CharT* __pend = __str.data() + __str.length();
#pragma empty_line
      size_t __len = (__hi - __lo) * 2;
#pragma empty_line
      _CharT* __c = new _CharT[__len];
#pragma empty_line
      try
 {
#pragma empty_line
#pragma empty_line
#pragma empty_line
   for (;;)
     {
#pragma empty_line
       size_t __res = _M_transform(__c, __p, __len);
#pragma empty_line
#pragma empty_line
       if (__res >= __len)
  {
    __len = __res + 1;
    delete [] __c, __c = 0;
    __c = new _CharT[__len];
    __res = _M_transform(__c, __p, __len);
  }
#pragma empty_line
       __ret.append(__c, __res);
       __p += char_traits<_CharT>::length(__p);
       if (__p == __pend)
  break;
#pragma empty_line
       __p++;
       __ret.push_back(_CharT());
     }
 }
      catch(...)
 {
   delete [] __c;
   throw;
 }
#pragma empty_line
      delete [] __c;
#pragma empty_line
      return __ret;
    }
#pragma empty_line
  template<typename _CharT>
    long
    collate<_CharT>::
    do_hash(const _CharT* __lo, const _CharT* __hi) const
    {
      unsigned long __val = 0;
      for (; __lo < __hi; ++__lo)
 __val =
   *__lo + ((__val << 7)
     | (__val >> (__gnu_cxx::__numeric_traits<unsigned long>::
    __digits - 7)));
      return static_cast<long>(__val);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class collate<char>;
  extern template class collate_byname<char>;
#pragma empty_line
  extern template
    const collate<char>&
    use_facet<collate<char> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<collate<char> >(const locale&);
#pragma empty_line
#pragma empty_line
  extern template class collate<wchar_t>;
  extern template class collate_byname<wchar_t>;
#pragma empty_line
  extern template
    const collate<wchar_t>&
    use_facet<collate<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<collate<wchar_t> >(const locale&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 824 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_classes.h" 2 3
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  enum _Ios_Fmtflags
    {
      _S_boolalpha = 1L << 0,
      _S_dec = 1L << 1,
      _S_fixed = 1L << 2,
      _S_hex = 1L << 3,
      _S_internal = 1L << 4,
      _S_left = 1L << 5,
      _S_oct = 1L << 6,
      _S_right = 1L << 7,
      _S_scientific = 1L << 8,
      _S_showbase = 1L << 9,
      _S_showpoint = 1L << 10,
      _S_showpos = 1L << 11,
      _S_skipws = 1L << 12,
      _S_unitbuf = 1L << 13,
      _S_uppercase = 1L << 14,
      _S_adjustfield = _S_left | _S_right | _S_internal,
      _S_basefield = _S_dec | _S_oct | _S_hex,
      _S_floatfield = _S_scientific | _S_fixed,
      _S_ios_fmtflags_end = 1L << 16
    };
#pragma empty_line
  inline _Ios_Fmtflags
  operator&(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Fmtflags
  operator|(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Fmtflags
  operator^(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  { return _Ios_Fmtflags(static_cast<int>(__a) ^ static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Fmtflags
  operator~(_Ios_Fmtflags __a)
  { return _Ios_Fmtflags(~static_cast<int>(__a)); }
#pragma empty_line
  inline const _Ios_Fmtflags&
  operator|=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
  { return __a = __a | __b; }
#pragma empty_line
  inline const _Ios_Fmtflags&
  operator&=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
  { return __a = __a & __b; }
#pragma empty_line
  inline const _Ios_Fmtflags&
  operator^=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
  { return __a = __a ^ __b; }
#pragma empty_line
#pragma empty_line
  enum _Ios_Openmode
    {
      _S_app = 1L << 0,
      _S_ate = 1L << 1,
      _S_bin = 1L << 2,
      _S_in = 1L << 3,
      _S_out = 1L << 4,
      _S_trunc = 1L << 5,
      _S_ios_openmode_end = 1L << 16
    };
#pragma empty_line
  inline _Ios_Openmode
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Openmode
  operator^(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) ^ static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Openmode
  operator~(_Ios_Openmode __a)
  { return _Ios_Openmode(~static_cast<int>(__a)); }
#pragma empty_line
  inline const _Ios_Openmode&
  operator|=(_Ios_Openmode& __a, _Ios_Openmode __b)
  { return __a = __a | __b; }
#pragma empty_line
  inline const _Ios_Openmode&
  operator&=(_Ios_Openmode& __a, _Ios_Openmode __b)
  { return __a = __a & __b; }
#pragma empty_line
  inline const _Ios_Openmode&
  operator^=(_Ios_Openmode& __a, _Ios_Openmode __b)
  { return __a = __a ^ __b; }
#pragma empty_line
#pragma empty_line
  enum _Ios_Iostate
    {
      _S_goodbit = 0,
      _S_badbit = 1L << 0,
      _S_eofbit = 1L << 1,
      _S_failbit = 1L << 2,
      _S_ios_iostate_end = 1L << 16
    };
#pragma empty_line
  inline _Ios_Iostate
  operator&(_Ios_Iostate __a, _Ios_Iostate __b)
  { return _Ios_Iostate(static_cast<int>(__a) & static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Iostate
  operator|(_Ios_Iostate __a, _Ios_Iostate __b)
  { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Iostate
  operator^(_Ios_Iostate __a, _Ios_Iostate __b)
  { return _Ios_Iostate(static_cast<int>(__a) ^ static_cast<int>(__b)); }
#pragma empty_line
  inline _Ios_Iostate
  operator~(_Ios_Iostate __a)
  { return _Ios_Iostate(~static_cast<int>(__a)); }
#pragma empty_line
  inline const _Ios_Iostate&
  operator|=(_Ios_Iostate& __a, _Ios_Iostate __b)
  { return __a = __a | __b; }
#pragma empty_line
  inline const _Ios_Iostate&
  operator&=(_Ios_Iostate& __a, _Ios_Iostate __b)
  { return __a = __a & __b; }
#pragma empty_line
  inline const _Ios_Iostate&
  operator^=(_Ios_Iostate& __a, _Ios_Iostate __b)
  { return __a = __a ^ __b; }
#pragma empty_line
#pragma empty_line
  enum _Ios_Seekdir
    {
      _S_beg = 0,
      _S_cur = 1,
      _S_end = 2,
      _S_ios_seekdir_end = 1L << 16
    };
#pragma line 201 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
  class ios_base
  {
  public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    class failure : public exception
    {
    public:
#pragma empty_line
#pragma empty_line
      explicit
      failure(const string& __str) throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~failure() throw();
#pragma empty_line
      virtual const char*
      what() const throw();
#pragma empty_line
    private:
      string _M_msg;
    };
#pragma line 257 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    typedef _Ios_Fmtflags fmtflags;
#pragma empty_line
#pragma empty_line
    static const fmtflags boolalpha = _S_boolalpha;
#pragma empty_line
#pragma empty_line
    static const fmtflags dec = _S_dec;
#pragma empty_line
#pragma empty_line
    static const fmtflags fixed = _S_fixed;
#pragma empty_line
#pragma empty_line
    static const fmtflags hex = _S_hex;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags internal = _S_internal;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags left = _S_left;
#pragma empty_line
#pragma empty_line
    static const fmtflags oct = _S_oct;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags right = _S_right;
#pragma empty_line
#pragma empty_line
    static const fmtflags scientific = _S_scientific;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags showbase = _S_showbase;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags showpoint = _S_showpoint;
#pragma empty_line
#pragma empty_line
    static const fmtflags showpos = _S_showpos;
#pragma empty_line
#pragma empty_line
    static const fmtflags skipws = _S_skipws;
#pragma empty_line
#pragma empty_line
    static const fmtflags unitbuf = _S_unitbuf;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const fmtflags uppercase = _S_uppercase;
#pragma empty_line
#pragma empty_line
    static const fmtflags adjustfield = _S_adjustfield;
#pragma empty_line
#pragma empty_line
    static const fmtflags basefield = _S_basefield;
#pragma empty_line
#pragma empty_line
    static const fmtflags floatfield = _S_floatfield;
#pragma line 332 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    typedef _Ios_Iostate iostate;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const iostate badbit = _S_badbit;
#pragma empty_line
#pragma empty_line
    static const iostate eofbit = _S_eofbit;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const iostate failbit = _S_failbit;
#pragma empty_line
#pragma empty_line
    static const iostate goodbit = _S_goodbit;
#pragma line 363 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    typedef _Ios_Openmode openmode;
#pragma empty_line
#pragma empty_line
    static const openmode app = _S_app;
#pragma empty_line
#pragma empty_line
    static const openmode ate = _S_ate;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const openmode binary = _S_bin;
#pragma empty_line
#pragma empty_line
    static const openmode in = _S_in;
#pragma empty_line
#pragma empty_line
    static const openmode out = _S_out;
#pragma empty_line
#pragma empty_line
    static const openmode trunc = _S_trunc;
#pragma line 395 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    typedef _Ios_Seekdir seekdir;
#pragma empty_line
#pragma empty_line
    static const seekdir beg = _S_beg;
#pragma empty_line
#pragma empty_line
    static const seekdir cur = _S_cur;
#pragma empty_line
#pragma empty_line
    static const seekdir end = _S_end;
#pragma empty_line
#pragma empty_line
    typedef int io_state;
    typedef int open_mode;
    typedef int seek_dir;
#pragma empty_line
    typedef std::streampos streampos;
    typedef std::streamoff streamoff;
#pragma line 421 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    enum event
    {
      erase_event,
      imbue_event,
      copyfmt_event
    };
#pragma line 438 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    typedef void (*event_callback) (event, ios_base&, int);
#pragma line 450 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    void
    register_callback(event_callback __fn, int __index);
#pragma empty_line
  protected:
    streamsize _M_precision;
    streamsize _M_width;
    fmtflags _M_flags;
    iostate _M_exception;
    iostate _M_streambuf_state;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    struct _Callback_list
    {
#pragma empty_line
      _Callback_list* _M_next;
      ios_base::event_callback _M_fn;
      int _M_index;
      _Atomic_word _M_refcount;
#pragma empty_line
      _Callback_list(ios_base::event_callback __fn, int __index,
       _Callback_list* __cb)
      : _M_next(__cb), _M_fn(__fn), _M_index(__index), _M_refcount(0) { }
#pragma empty_line
      void
      _M_add_reference() { __gnu_cxx::__atomic_add_dispatch(&_M_refcount, 1); }
#pragma empty_line
#pragma empty_line
      int
      _M_remove_reference()
      {
#pragma empty_line
        ;
        int __res = __gnu_cxx::__exchange_and_add_dispatch(&_M_refcount, -1);
        if (__res == 0)
          {
            ;
          }
        return __res;
      }
    };
#pragma empty_line
     _Callback_list* _M_callbacks;
#pragma empty_line
    void
    _M_call_callbacks(event __ev) throw();
#pragma empty_line
    void
    _M_dispose_callbacks(void) throw();
#pragma empty_line
#pragma empty_line
    struct _Words
    {
      void* _M_pword;
      long _M_iword;
      _Words() : _M_pword(0), _M_iword(0) { }
    };
#pragma empty_line
#pragma empty_line
    _Words _M_word_zero;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    enum { _S_local_word_size = 8 };
    _Words _M_local_word[_S_local_word_size];
#pragma empty_line
#pragma empty_line
    int _M_word_size;
    _Words* _M_word;
#pragma empty_line
    _Words&
    _M_grow_words(int __index, bool __iword);
#pragma empty_line
#pragma empty_line
    locale _M_ios_locale;
#pragma empty_line
    void
    _M_init() throw();
#pragma empty_line
  public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    class Init
    {
      friend class ios_base;
    public:
      Init();
      ~Init();
#pragma empty_line
    private:
      static _Atomic_word _S_refcount;
      static bool _S_synced_with_stdio;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    fmtflags
    flags() const
    { return _M_flags; }
#pragma line 563 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    fmtflags
    flags(fmtflags __fmtfl)
    {
      fmtflags __old = _M_flags;
      _M_flags = __fmtfl;
      return __old;
    }
#pragma line 579 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    fmtflags
    setf(fmtflags __fmtfl)
    {
      fmtflags __old = _M_flags;
      _M_flags |= __fmtfl;
      return __old;
    }
#pragma line 596 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    fmtflags
    setf(fmtflags __fmtfl, fmtflags __mask)
    {
      fmtflags __old = _M_flags;
      _M_flags &= ~__mask;
      _M_flags |= (__fmtfl & __mask);
      return __old;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    void
    unsetf(fmtflags __mask)
    { _M_flags &= ~__mask; }
#pragma line 622 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    streamsize
    precision() const
    { return _M_precision; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    streamsize
    precision(streamsize __prec)
    {
      streamsize __old = _M_precision;
      _M_precision = __prec;
      return __old;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    streamsize
    width() const
    { return _M_width; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    streamsize
    width(streamsize __wide)
    {
      streamsize __old = _M_width;
      _M_width = __wide;
      return __old;
    }
#pragma line 673 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    static bool
    sync_with_stdio(bool __sync = true);
#pragma line 685 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    locale
    imbue(const locale& __loc) throw();
#pragma line 696 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    locale
    getloc() const
    { return _M_ios_locale; }
#pragma line 707 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    const locale&
    _M_getloc() const
    { return _M_ios_locale; }
#pragma line 726 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    static int
    xalloc() throw();
#pragma line 742 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    long&
    iword(int __ix)
    {
      _Words& __word = (__ix < _M_word_size)
   ? _M_word[__ix] : _M_grow_words(__ix, true);
      return __word._M_iword;
    }
#pragma line 763 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    void*&
    pword(int __ix)
    {
      _Words& __word = (__ix < _M_word_size)
   ? _M_word[__ix] : _M_grow_words(__ix, false);
      return __word._M_pword;
    }
#pragma line 780 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ios_base.h" 3
    virtual ~ios_base();
#pragma empty_line
  protected:
    ios_base() throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  private:
    ios_base(const ios_base&);
#pragma empty_line
    ios_base&
    operator=(const ios_base&);
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline ios_base&
  boolalpha(ios_base& __base)
  {
    __base.setf(ios_base::boolalpha);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  noboolalpha(ios_base& __base)
  {
    __base.unsetf(ios_base::boolalpha);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  showbase(ios_base& __base)
  {
    __base.setf(ios_base::showbase);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  noshowbase(ios_base& __base)
  {
    __base.unsetf(ios_base::showbase);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  showpoint(ios_base& __base)
  {
    __base.setf(ios_base::showpoint);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  noshowpoint(ios_base& __base)
  {
    __base.unsetf(ios_base::showpoint);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  showpos(ios_base& __base)
  {
    __base.setf(ios_base::showpos);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  noshowpos(ios_base& __base)
  {
    __base.unsetf(ios_base::showpos);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  skipws(ios_base& __base)
  {
    __base.setf(ios_base::skipws);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  noskipws(ios_base& __base)
  {
    __base.unsetf(ios_base::skipws);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  uppercase(ios_base& __base)
  {
    __base.setf(ios_base::uppercase);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  nouppercase(ios_base& __base)
  {
    __base.unsetf(ios_base::uppercase);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  unitbuf(ios_base& __base)
  {
     __base.setf(ios_base::unitbuf);
     return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  nounitbuf(ios_base& __base)
  {
     __base.unsetf(ios_base::unitbuf);
     return __base;
  }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline ios_base&
  internal(ios_base& __base)
  {
     __base.setf(ios_base::internal, ios_base::adjustfield);
     return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  left(ios_base& __base)
  {
    __base.setf(ios_base::left, ios_base::adjustfield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  right(ios_base& __base)
  {
    __base.setf(ios_base::right, ios_base::adjustfield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline ios_base&
  dec(ios_base& __base)
  {
    __base.setf(ios_base::dec, ios_base::basefield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  hex(ios_base& __base)
  {
    __base.setf(ios_base::hex, ios_base::basefield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  oct(ios_base& __base)
  {
    __base.setf(ios_base::oct, ios_base::basefield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline ios_base&
  fixed(ios_base& __base)
  {
    __base.setf(ios_base::fixed, ios_base::floatfield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
  inline ios_base&
  scientific(ios_base& __base)
  {
    __base.setf(ios_base::scientific, ios_base::floatfield);
    return __base;
  }
#pragma empty_line
#pragma empty_line
}
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
#pragma empty_line
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
#pragma line 46 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    streamsize
    __copy_streambufs_eof(basic_streambuf<_CharT, _Traits>*,
     basic_streambuf<_CharT, _Traits>*, bool&);
#pragma line 116 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
  template<typename _CharT, typename _Traits>
    class basic_streambuf
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef _Traits traits_type;
      typedef typename traits_type::int_type int_type;
      typedef typename traits_type::pos_type pos_type;
      typedef typename traits_type::off_type off_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef basic_streambuf<char_type, traits_type> __streambuf_type;
#pragma empty_line
#pragma empty_line
      friend class basic_ios<char_type, traits_type>;
      friend class basic_istream<char_type, traits_type>;
      friend class basic_ostream<char_type, traits_type>;
      friend class istreambuf_iterator<char_type, traits_type>;
      friend class ostreambuf_iterator<char_type, traits_type>;
#pragma empty_line
      friend streamsize
      __copy_streambufs_eof<>(__streambuf_type*, __streambuf_type*, bool&);
#pragma empty_line
      template<bool _IsMove, typename _CharT2>
        friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
            _CharT2*>::__type
        __copy_move_a2(istreambuf_iterator<_CharT2>,
         istreambuf_iterator<_CharT2>, _CharT2*);
#pragma empty_line
      template<typename _CharT2>
        friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
      istreambuf_iterator<_CharT2> >::__type
        find(istreambuf_iterator<_CharT2>, istreambuf_iterator<_CharT2>,
      const _CharT2&);
#pragma empty_line
      template<typename _CharT2, typename _Traits2>
        friend basic_istream<_CharT2, _Traits2>&
        operator>>(basic_istream<_CharT2, _Traits2>&, _CharT2*);
#pragma empty_line
      template<typename _CharT2, typename _Traits2, typename _Alloc>
        friend basic_istream<_CharT2, _Traits2>&
        operator>>(basic_istream<_CharT2, _Traits2>&,
     basic_string<_CharT2, _Traits2, _Alloc>&);
#pragma empty_line
      template<typename _CharT2, typename _Traits2, typename _Alloc>
        friend basic_istream<_CharT2, _Traits2>&
        getline(basic_istream<_CharT2, _Traits2>&,
  basic_string<_CharT2, _Traits2, _Alloc>&, _CharT2);
#pragma empty_line
    protected:
#pragma line 182 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      char_type* _M_in_beg;
      char_type* _M_in_cur;
      char_type* _M_in_end;
      char_type* _M_out_beg;
      char_type* _M_out_cur;
      char_type* _M_out_end;
#pragma empty_line
#pragma empty_line
      locale _M_buf_locale;
#pragma empty_line
  public:
#pragma empty_line
      virtual
      ~basic_streambuf()
      { }
#pragma line 206 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      locale
      pubimbue(const locale &__loc)
      {
 locale __tmp(this->getloc());
 this->imbue(__loc);
 _M_buf_locale = __loc;
 return __tmp;
      }
#pragma line 223 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      locale
      getloc() const
      { return _M_buf_locale; }
#pragma line 236 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      __streambuf_type*
      pubsetbuf(char_type* __s, streamsize __n)
      { return this->setbuf(__s, __n); }
#pragma empty_line
      pos_type
      pubseekoff(off_type __off, ios_base::seekdir __way,
   ios_base::openmode __mode = ios_base::in | ios_base::out)
      { return this->seekoff(__off, __way, __mode); }
#pragma empty_line
      pos_type
      pubseekpos(pos_type __sp,
   ios_base::openmode __mode = ios_base::in | ios_base::out)
      { return this->seekpos(__sp, __mode); }
#pragma empty_line
      int
      pubsync() { return this->sync(); }
#pragma line 263 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      streamsize
      in_avail()
      {
 const streamsize __ret = this->egptr() - this->gptr();
 return __ret ? __ret : this->showmanyc();
      }
#pragma line 277 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      snextc()
      {
 int_type __ret = traits_type::eof();
 if (__builtin_expect(!traits_type::eq_int_type(this->sbumpc(),
             __ret), true))
   __ret = this->sgetc();
 return __ret;
      }
#pragma line 295 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      sbumpc()
      {
 int_type __ret;
 if (__builtin_expect(this->gptr() < this->egptr(), true))
   {
     __ret = traits_type::to_int_type(*this->gptr());
     this->gbump(1);
   }
 else
   __ret = this->uflow();
 return __ret;
      }
#pragma line 317 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      sgetc()
      {
 int_type __ret;
 if (__builtin_expect(this->gptr() < this->egptr(), true))
   __ret = traits_type::to_int_type(*this->gptr());
 else
   __ret = this->underflow();
 return __ret;
      }
#pragma line 336 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      streamsize
      sgetn(char_type* __s, streamsize __n)
      { return this->xsgetn(__s, __n); }
#pragma line 351 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      sputbackc(char_type __c)
      {
 int_type __ret;
 const bool __testpos = this->eback() < this->gptr();
 if (__builtin_expect(!__testpos ||
        !traits_type::eq(__c, this->gptr()[-1]), false))
   __ret = this->pbackfail(traits_type::to_int_type(__c));
 else
   {
     this->gbump(-1);
     __ret = traits_type::to_int_type(*this->gptr());
   }
 return __ret;
      }
#pragma line 376 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      sungetc()
      {
 int_type __ret;
 if (__builtin_expect(this->eback() < this->gptr(), true))
   {
     this->gbump(-1);
     __ret = traits_type::to_int_type(*this->gptr());
   }
 else
   __ret = this->pbackfail();
 return __ret;
      }
#pragma line 403 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      int_type
      sputc(char_type __c)
      {
 int_type __ret;
 if (__builtin_expect(this->pptr() < this->epptr(), true))
   {
     *this->pptr() = __c;
     this->pbump(1);
     __ret = traits_type::to_int_type(__c);
   }
 else
   __ret = this->overflow(traits_type::to_int_type(__c));
 return __ret;
      }
#pragma line 429 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      streamsize
      sputn(const char_type* __s, streamsize __n)
      { return this->xsputn(__s, __n); }
#pragma empty_line
    protected:
#pragma line 443 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      basic_streambuf()
      : _M_in_beg(0), _M_in_cur(0), _M_in_end(0),
      _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
      _M_buf_locale(locale())
      { }
#pragma line 461 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      char_type*
      eback() const { return _M_in_beg; }
#pragma empty_line
      char_type*
      gptr() const { return _M_in_cur; }
#pragma empty_line
      char_type*
      egptr() const { return _M_in_end; }
#pragma line 477 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      void
      gbump(int __n) { _M_in_cur += __n; }
#pragma line 488 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      void
      setg(char_type* __gbeg, char_type* __gnext, char_type* __gend)
      {
 _M_in_beg = __gbeg;
 _M_in_cur = __gnext;
 _M_in_end = __gend;
      }
#pragma line 508 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      char_type*
      pbase() const { return _M_out_beg; }
#pragma empty_line
      char_type*
      pptr() const { return _M_out_cur; }
#pragma empty_line
      char_type*
      epptr() const { return _M_out_end; }
#pragma line 524 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      void
      pbump(int __n) { _M_out_cur += __n; }
#pragma line 534 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      void
      setp(char_type* __pbeg, char_type* __pend)
      {
 _M_out_beg = _M_out_cur = __pbeg;
 _M_out_end = __pend;
      }
#pragma line 555 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual void
      imbue(const locale&)
      { }
#pragma line 570 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual basic_streambuf<char_type,_Traits>*
      setbuf(char_type*, streamsize)
      { return this; }
#pragma line 581 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual pos_type
      seekoff(off_type, ios_base::seekdir,
       ios_base::openmode = ios_base::in | ios_base::out)
      { return pos_type(off_type(-1)); }
#pragma line 593 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual pos_type
      seekpos(pos_type,
       ios_base::openmode = ios_base::in | ios_base::out)
      { return pos_type(off_type(-1)); }
#pragma line 606 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual int
      sync() { return 0; }
#pragma line 628 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual streamsize
      showmanyc() { return 0; }
#pragma line 644 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual streamsize
      xsgetn(char_type* __s, streamsize __n);
#pragma line 666 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual int_type
      underflow()
      { return traits_type::eof(); }
#pragma line 679 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual int_type
      uflow()
      {
 int_type __ret = traits_type::eof();
 const bool __testeof = traits_type::eq_int_type(this->underflow(),
       __ret);
 if (!__testeof)
   {
     __ret = traits_type::to_int_type(*this->gptr());
     this->gbump(1);
   }
 return __ret;
      }
#pragma line 703 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual int_type
      pbackfail(int_type = traits_type::eof())
      { return traits_type::eof(); }
#pragma line 721 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual streamsize
      xsputn(const char_type* __s, streamsize __n);
#pragma line 747 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      virtual int_type
      overflow(int_type = traits_type::eof())
      { return traits_type::eof(); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
    public:
#pragma line 762 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 3
      void
      stossc()
      {
 if (this->gptr() < this->egptr())
   this->gbump(1);
 else
   this->uflow();
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      __safe_gbump(streamsize __n) { _M_in_cur += __n; }
#pragma empty_line
      void
      __safe_pbump(streamsize __n) { _M_out_cur += __n; }
#pragma empty_line
    private:
#pragma empty_line
#pragma empty_line
      basic_streambuf(const __streambuf_type& __sb)
      : _M_in_beg(__sb._M_in_beg), _M_in_cur(__sb._M_in_cur),
      _M_in_end(__sb._M_in_end), _M_out_beg(__sb._M_out_beg),
      _M_out_cur(__sb._M_out_cur), _M_out_end(__sb._M_out_cur),
      _M_buf_locale(__sb._M_buf_locale)
      { }
#pragma empty_line
      __streambuf_type&
      operator=(const __streambuf_type&) { return *this; };
    };
#pragma empty_line
#pragma empty_line
  template<>
    streamsize
    __copy_streambufs_eof(basic_streambuf<char>* __sbin,
     basic_streambuf<char>* __sbout, bool& __ineof);
#pragma empty_line
  template<>
    streamsize
    __copy_streambufs_eof(basic_streambuf<wchar_t>* __sbin,
     basic_streambuf<wchar_t>* __sbout, bool& __ineof);
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf.tcc" 1 3
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf.tcc" 3
#pragma empty_line
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf.tcc" 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    streamsize
    basic_streambuf<_CharT, _Traits>::
    xsgetn(char_type* __s, streamsize __n)
    {
      streamsize __ret = 0;
      while (__ret < __n)
 {
   const streamsize __buf_len = this->egptr() - this->gptr();
   if (__buf_len)
     {
       const streamsize __remaining = __n - __ret;
       const streamsize __len = std::min(__buf_len, __remaining);
       traits_type::copy(__s, this->gptr(), __len);
       __ret += __len;
       __s += __len;
       this->__safe_gbump(__len);
     }
#pragma empty_line
   if (__ret < __n)
     {
       const int_type __c = this->uflow();
       if (!traits_type::eq_int_type(__c, traits_type::eof()))
  {
    traits_type::assign(*__s++, traits_type::to_char_type(__c));
    ++__ret;
  }
       else
  break;
     }
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    streamsize
    basic_streambuf<_CharT, _Traits>::
    xsputn(const char_type* __s, streamsize __n)
    {
      streamsize __ret = 0;
      while (__ret < __n)
 {
   const streamsize __buf_len = this->epptr() - this->pptr();
   if (__buf_len)
     {
       const streamsize __remaining = __n - __ret;
       const streamsize __len = std::min(__buf_len, __remaining);
       traits_type::copy(this->pptr(), __s, __len);
       __ret += __len;
       __s += __len;
       this->__safe_pbump(__len);
     }
#pragma empty_line
   if (__ret < __n)
     {
       int_type __c = this->overflow(traits_type::to_int_type(*__s));
       if (!traits_type::eq_int_type(__c, traits_type::eof()))
  {
    ++__ret;
    ++__s;
  }
       else
  break;
     }
 }
      return __ret;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    streamsize
    __copy_streambufs_eof(basic_streambuf<_CharT, _Traits>* __sbin,
     basic_streambuf<_CharT, _Traits>* __sbout,
     bool& __ineof)
    {
      streamsize __ret = 0;
      __ineof = true;
      typename _Traits::int_type __c = __sbin->sgetc();
      while (!_Traits::eq_int_type(__c, _Traits::eof()))
 {
   __c = __sbout->sputc(_Traits::to_char_type(__c));
   if (_Traits::eq_int_type(__c, _Traits::eof()))
     {
       __ineof = false;
       break;
     }
   ++__ret;
   __c = __sbin->snextc();
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline streamsize
    __copy_streambufs(basic_streambuf<_CharT, _Traits>* __sbin,
        basic_streambuf<_CharT, _Traits>* __sbout)
    {
      bool __ineof;
      return __copy_streambufs_eof(__sbin, __sbout, __ineof);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class basic_streambuf<char>;
  extern template
    streamsize
    __copy_streambufs(basic_streambuf<char>*,
        basic_streambuf<char>*);
  extern template
    streamsize
    __copy_streambufs_eof(basic_streambuf<char>*,
     basic_streambuf<char>*, bool&);
#pragma empty_line
#pragma empty_line
  extern template class basic_streambuf<wchar_t>;
  extern template
    streamsize
    __copy_streambufs(basic_streambuf<wchar_t>*,
        basic_streambuf<wchar_t>*);
  extern template
    streamsize
    __copy_streambufs_eof(basic_streambuf<wchar_t>*,
     basic_streambuf<wchar_t>*, bool&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 809 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/streambuf" 2 3
#pragma line 45 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 1 3
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
#pragma empty_line
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 3
#pragma line 52 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 3
#pragma line 1 "/usr/include/wctype.h" 1 3 4
#pragma line 38 "/usr/include/wctype.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h" 1 3 4
#pragma line 38 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h" 3 4
typedef unsigned long int wctype_t;
#pragma line 56 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h" 3 4
enum
{
  __ISwupper = 0,
  __ISwlower = 1,
  __ISwalpha = 2,
  __ISwdigit = 3,
  __ISwxdigit = 4,
  __ISwspace = 5,
  __ISwprint = 6,
  __ISwgraph = 7,
  __ISwblank = 8,
  __ISwcntrl = 9,
  __ISwpunct = 10,
  __ISwalnum = 11,
#pragma empty_line
  _ISwupper = ((__ISwupper) < 8 ? (int) ((1UL << (__ISwupper)) << 24) : ((__ISwupper) < 16 ? (int) ((1UL << (__ISwupper)) << 8) : ((__ISwupper) < 24 ? (int) ((1UL << (__ISwupper)) >> 8) : (int) ((1UL << (__ISwupper)) >> 24)))),
  _ISwlower = ((__ISwlower) < 8 ? (int) ((1UL << (__ISwlower)) << 24) : ((__ISwlower) < 16 ? (int) ((1UL << (__ISwlower)) << 8) : ((__ISwlower) < 24 ? (int) ((1UL << (__ISwlower)) >> 8) : (int) ((1UL << (__ISwlower)) >> 24)))),
  _ISwalpha = ((__ISwalpha) < 8 ? (int) ((1UL << (__ISwalpha)) << 24) : ((__ISwalpha) < 16 ? (int) ((1UL << (__ISwalpha)) << 8) : ((__ISwalpha) < 24 ? (int) ((1UL << (__ISwalpha)) >> 8) : (int) ((1UL << (__ISwalpha)) >> 24)))),
  _ISwdigit = ((__ISwdigit) < 8 ? (int) ((1UL << (__ISwdigit)) << 24) : ((__ISwdigit) < 16 ? (int) ((1UL << (__ISwdigit)) << 8) : ((__ISwdigit) < 24 ? (int) ((1UL << (__ISwdigit)) >> 8) : (int) ((1UL << (__ISwdigit)) >> 24)))),
  _ISwxdigit = ((__ISwxdigit) < 8 ? (int) ((1UL << (__ISwxdigit)) << 24) : ((__ISwxdigit) < 16 ? (int) ((1UL << (__ISwxdigit)) << 8) : ((__ISwxdigit) < 24 ? (int) ((1UL << (__ISwxdigit)) >> 8) : (int) ((1UL << (__ISwxdigit)) >> 24)))),
  _ISwspace = ((__ISwspace) < 8 ? (int) ((1UL << (__ISwspace)) << 24) : ((__ISwspace) < 16 ? (int) ((1UL << (__ISwspace)) << 8) : ((__ISwspace) < 24 ? (int) ((1UL << (__ISwspace)) >> 8) : (int) ((1UL << (__ISwspace)) >> 24)))),
  _ISwprint = ((__ISwprint) < 8 ? (int) ((1UL << (__ISwprint)) << 24) : ((__ISwprint) < 16 ? (int) ((1UL << (__ISwprint)) << 8) : ((__ISwprint) < 24 ? (int) ((1UL << (__ISwprint)) >> 8) : (int) ((1UL << (__ISwprint)) >> 24)))),
  _ISwgraph = ((__ISwgraph) < 8 ? (int) ((1UL << (__ISwgraph)) << 24) : ((__ISwgraph) < 16 ? (int) ((1UL << (__ISwgraph)) << 8) : ((__ISwgraph) < 24 ? (int) ((1UL << (__ISwgraph)) >> 8) : (int) ((1UL << (__ISwgraph)) >> 24)))),
  _ISwblank = ((__ISwblank) < 8 ? (int) ((1UL << (__ISwblank)) << 24) : ((__ISwblank) < 16 ? (int) ((1UL << (__ISwblank)) << 8) : ((__ISwblank) < 24 ? (int) ((1UL << (__ISwblank)) >> 8) : (int) ((1UL << (__ISwblank)) >> 24)))),
  _ISwcntrl = ((__ISwcntrl) < 8 ? (int) ((1UL << (__ISwcntrl)) << 24) : ((__ISwcntrl) < 16 ? (int) ((1UL << (__ISwcntrl)) << 8) : ((__ISwcntrl) < 24 ? (int) ((1UL << (__ISwcntrl)) >> 8) : (int) ((1UL << (__ISwcntrl)) >> 24)))),
  _ISwpunct = ((__ISwpunct) < 8 ? (int) ((1UL << (__ISwpunct)) << 24) : ((__ISwpunct) < 16 ? (int) ((1UL << (__ISwpunct)) << 8) : ((__ISwpunct) < 24 ? (int) ((1UL << (__ISwpunct)) >> 8) : (int) ((1UL << (__ISwpunct)) >> 24)))),
  _ISwalnum = ((__ISwalnum) < 8 ? (int) ((1UL << (__ISwalnum)) << 24) : ((__ISwalnum) < 16 ? (int) ((1UL << (__ISwalnum)) << 8) : ((__ISwalnum) < 24 ? (int) ((1UL << (__ISwalnum)) >> 8) : (int) ((1UL << (__ISwalnum)) >> 24))))
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswalnum (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswalpha (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
extern int iswcntrl (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswdigit (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswgraph (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswlower (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
extern int iswprint (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswpunct (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswspace (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswupper (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswxdigit (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswblank (wint_t __wc) throw ();
#pragma line 155 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h" 3 4
extern wctype_t wctype (const char *__property) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswctype (wint_t __wc, wctype_t __desc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t towlower (wint_t __wc) throw ();
#pragma empty_line
#pragma empty_line
extern wint_t towupper (wint_t __wc) throw ();
#pragma empty_line
}
#pragma line 39 "/usr/include/wctype.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef const __int32_t *wctrans_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wctrans_t wctrans (const char *__property) throw ();
#pragma empty_line
#pragma empty_line
extern wint_t towctrans (wint_t __wc, wctrans_t __desc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswalnum_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswalpha_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
extern int iswcntrl_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswdigit_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswgraph_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswlower_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
extern int iswprint_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswpunct_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswspace_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswupper_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswxdigit_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswblank_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wctype_t wctype_l (const char *__property, locale_t __locale)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int iswctype_l (wint_t __wc, wctype_t __desc, locale_t __locale)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wint_t towlower_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
extern wint_t towupper_l (wint_t __wc, locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wctrans_t wctrans_l (const char *__property, locale_t __locale)
     throw ();
#pragma empty_line
#pragma empty_line
extern wint_t towctrans_l (wint_t __wc, wctrans_t __desc,
      locale_t __locale) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 53 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 2 3
#pragma line 82 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwctype" 3
namespace std
{
  using ::wctrans_t;
  using ::wctype_t;
  using ::wint_t;
#pragma empty_line
  using ::iswalnum;
  using ::iswalpha;
#pragma empty_line
  using ::iswblank;
#pragma empty_line
  using ::iswcntrl;
  using ::iswctype;
  using ::iswdigit;
  using ::iswgraph;
  using ::iswlower;
  using ::iswprint;
  using ::iswpunct;
  using ::iswspace;
  using ::iswupper;
  using ::iswxdigit;
  using ::towctrans;
  using ::towlower;
  using ::towupper;
  using ::wctrans;
  using ::wctype;
}
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
#pragma line 43 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/ctype_base.h" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/ctype_base.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  struct ctype_base
  {
#pragma empty_line
    typedef const int* __to_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    typedef unsigned short mask;
    static const mask upper = _ISupper;
    static const mask lower = _ISlower;
    static const mask alpha = _ISalpha;
    static const mask digit = _ISdigit;
    static const mask xdigit = _ISxdigit;
    static const mask space = _ISspace;
    static const mask print = _ISprint;
    static const mask graph = _ISalpha | _ISdigit | _ISpunct;
    static const mask cntrl = _IScntrl;
    static const mask punct = _ISpunct;
    static const mask alnum = _ISalpha | _ISdigit;
  };
#pragma empty_line
#pragma empty_line
}
#pragma line 44 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf_iterator.h" 1 3
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf_iterator.h" 3
#pragma empty_line
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf_iterator.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 51 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/streambuf_iterator.h" 3
  template<typename _CharT, typename _Traits>
    class istreambuf_iterator
    : public iterator<input_iterator_tag, _CharT, typename _Traits::off_type,
        _CharT*, _CharT&>
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef _Traits traits_type;
      typedef typename _Traits::int_type int_type;
      typedef basic_streambuf<_CharT, _Traits> streambuf_type;
      typedef basic_istream<_CharT, _Traits> istream_type;
#pragma empty_line
#pragma empty_line
      template<typename _CharT2>
 friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
                      ostreambuf_iterator<_CharT2> >::__type
 copy(istreambuf_iterator<_CharT2>, istreambuf_iterator<_CharT2>,
      ostreambuf_iterator<_CharT2>);
#pragma empty_line
      template<bool _IsMove, typename _CharT2>
 friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
            _CharT2*>::__type
 __copy_move_a2(istreambuf_iterator<_CharT2>,
         istreambuf_iterator<_CharT2>, _CharT2*);
#pragma empty_line
      template<typename _CharT2>
 friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
               istreambuf_iterator<_CharT2> >::__type
 find(istreambuf_iterator<_CharT2>, istreambuf_iterator<_CharT2>,
      const _CharT2&);
#pragma empty_line
    private:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      mutable streambuf_type* _M_sbuf;
      mutable int_type _M_c;
#pragma empty_line
    public:
#pragma empty_line
      istreambuf_iterator() throw()
      : _M_sbuf(0), _M_c(traits_type::eof()) { }
#pragma empty_line
#pragma empty_line
      istreambuf_iterator(istream_type& __s) throw()
      : _M_sbuf(__s.rdbuf()), _M_c(traits_type::eof()) { }
#pragma empty_line
#pragma empty_line
      istreambuf_iterator(streambuf_type* __s) throw()
      : _M_sbuf(__s), _M_c(traits_type::eof()) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      char_type
      operator*() const
      {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 return traits_type::to_char_type(_M_get());
      }
#pragma empty_line
#pragma empty_line
      istreambuf_iterator&
      operator++()
      {
#pragma empty_line
#pragma empty_line
                        ;
 if (_M_sbuf)
   {
     _M_sbuf->sbumpc();
     _M_c = traits_type::eof();
   }
 return *this;
      }
#pragma empty_line
#pragma empty_line
      istreambuf_iterator
      operator++(int)
      {
#pragma empty_line
#pragma empty_line
                        ;
#pragma empty_line
 istreambuf_iterator __old = *this;
 if (_M_sbuf)
   {
     __old._M_c = _M_sbuf->sbumpc();
     _M_c = traits_type::eof();
   }
 return __old;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      bool
      equal(const istreambuf_iterator& __b) const
      { return _M_at_eof() == __b._M_at_eof(); }
#pragma empty_line
    private:
      int_type
      _M_get() const
      {
 const int_type __eof = traits_type::eof();
 int_type __ret = __eof;
 if (_M_sbuf)
   {
     if (!traits_type::eq_int_type(_M_c, __eof))
       __ret = _M_c;
     else if (!traits_type::eq_int_type((__ret = _M_sbuf->sgetc()),
            __eof))
       _M_c = __ret;
     else
       _M_sbuf = 0;
   }
 return __ret;
      }
#pragma empty_line
      bool
      _M_at_eof() const
      {
 const int_type __eof = traits_type::eof();
 return traits_type::eq_int_type(_M_get(), __eof);
      }
    };
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline bool
    operator==(const istreambuf_iterator<_CharT, _Traits>& __a,
        const istreambuf_iterator<_CharT, _Traits>& __b)
    { return __a.equal(__b); }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline bool
    operator!=(const istreambuf_iterator<_CharT, _Traits>& __a,
        const istreambuf_iterator<_CharT, _Traits>& __b)
    { return !__a.equal(__b); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    class ostreambuf_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef _Traits traits_type;
      typedef basic_streambuf<_CharT, _Traits> streambuf_type;
      typedef basic_ostream<_CharT, _Traits> ostream_type;
#pragma empty_line
#pragma empty_line
      template<typename _CharT2>
 friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
                      ostreambuf_iterator<_CharT2> >::__type
 copy(istreambuf_iterator<_CharT2>, istreambuf_iterator<_CharT2>,
      ostreambuf_iterator<_CharT2>);
#pragma empty_line
    private:
      streambuf_type* _M_sbuf;
      bool _M_failed;
#pragma empty_line
    public:
#pragma empty_line
      ostreambuf_iterator(ostream_type& __s) throw ()
      : _M_sbuf(__s.rdbuf()), _M_failed(!_M_sbuf) { }
#pragma empty_line
#pragma empty_line
      ostreambuf_iterator(streambuf_type* __s) throw ()
      : _M_sbuf(__s), _M_failed(!_M_sbuf) { }
#pragma empty_line
#pragma empty_line
      ostreambuf_iterator&
      operator=(_CharT __c)
      {
 if (!_M_failed &&
     _Traits::eq_int_type(_M_sbuf->sputc(__c), _Traits::eof()))
   _M_failed = true;
 return *this;
      }
#pragma empty_line
#pragma empty_line
      ostreambuf_iterator&
      operator*()
      { return *this; }
#pragma empty_line
#pragma empty_line
      ostreambuf_iterator&
      operator++(int)
      { return *this; }
#pragma empty_line
#pragma empty_line
      ostreambuf_iterator&
      operator++()
      { return *this; }
#pragma empty_line
#pragma empty_line
      bool
      failed() const throw()
      { return _M_failed; }
#pragma empty_line
      ostreambuf_iterator&
      _M_put(const _CharT* __ws, streamsize __len)
      {
 if (__builtin_expect(!_M_failed, true)
     && __builtin_expect(this->_M_sbuf->sputn(__ws, __len) != __len,
    false))
   _M_failed = true;
 return *this;
      }
    };
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
                           ostreambuf_iterator<_CharT> >::__type
    copy(istreambuf_iterator<_CharT> __first,
  istreambuf_iterator<_CharT> __last,
  ostreambuf_iterator<_CharT> __result)
    {
      if (__first._M_sbuf && !__last._M_sbuf && !__result._M_failed)
 {
   bool __ineof;
   __copy_streambufs_eof(__first._M_sbuf, __result._M_sbuf, __ineof);
   if (!__ineof)
     __result._M_failed = true;
 }
      return __result;
    }
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
            ostreambuf_iterator<_CharT> >::__type
    __copy_move_a2(_CharT* __first, _CharT* __last,
     ostreambuf_iterator<_CharT> __result)
    {
      const streamsize __num = __last - __first;
      if (__num > 0)
 __result._M_put(__first, __num);
      return __result;
    }
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
        ostreambuf_iterator<_CharT> >::__type
    __copy_move_a2(const _CharT* __first, const _CharT* __last,
     ostreambuf_iterator<_CharT> __result)
    {
      const streamsize __num = __last - __first;
      if (__num > 0)
 __result._M_put(__first, __num);
      return __result;
    }
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
            _CharT*>::__type
    __copy_move_a2(istreambuf_iterator<_CharT> __first,
     istreambuf_iterator<_CharT> __last, _CharT* __result)
    {
      typedef istreambuf_iterator<_CharT> __is_iterator_type;
      typedef typename __is_iterator_type::traits_type traits_type;
      typedef typename __is_iterator_type::streambuf_type streambuf_type;
      typedef typename traits_type::int_type int_type;
#pragma empty_line
      if (__first._M_sbuf && !__last._M_sbuf)
 {
   streambuf_type* __sb = __first._M_sbuf;
   int_type __c = __sb->sgetc();
   while (!traits_type::eq_int_type(__c, traits_type::eof()))
     {
       const streamsize __n = __sb->egptr() - __sb->gptr();
       if (__n > 1)
  {
    traits_type::copy(__result, __sb->gptr(), __n);
    __sb->__safe_gbump(__n);
    __result += __n;
    __c = __sb->underflow();
  }
       else
  {
    *__result++ = traits_type::to_char_type(__c);
    __c = __sb->snextc();
  }
     }
 }
      return __result;
    }
#pragma empty_line
  template<typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
          istreambuf_iterator<_CharT> >::__type
    find(istreambuf_iterator<_CharT> __first,
  istreambuf_iterator<_CharT> __last, const _CharT& __val)
    {
      typedef istreambuf_iterator<_CharT> __is_iterator_type;
      typedef typename __is_iterator_type::traits_type traits_type;
      typedef typename __is_iterator_type::streambuf_type streambuf_type;
      typedef typename traits_type::int_type int_type;
#pragma empty_line
      if (__first._M_sbuf && !__last._M_sbuf)
 {
   const int_type __ival = traits_type::to_int_type(__val);
   streambuf_type* __sb = __first._M_sbuf;
   int_type __c = __sb->sgetc();
   while (!traits_type::eq_int_type(__c, traits_type::eof())
   && !traits_type::eq_int_type(__c, __ival))
     {
       streamsize __n = __sb->egptr() - __sb->gptr();
       if (__n > 1)
  {
    const _CharT* __p = traits_type::find(__sb->gptr(),
       __n, __val);
    if (__p)
      __n = __p - __sb->gptr();
    __sb->__safe_gbump(__n);
    __c = __sb->sgetc();
  }
       else
  __c = __sb->snextc();
     }
#pragma empty_line
   if (!traits_type::eq_int_type(__c, traits_type::eof()))
     __first._M_c = __c;
   else
     __first._M_sbuf = 0;
 }
      return __first;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 51 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 66 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _Tp>
    void
    __convert_to_v(const char*, _Tp&, ios_base::iostate&,
     const __c_locale&) throw();
#pragma empty_line
#pragma empty_line
  template<>
    void
    __convert_to_v(const char*, float&, ios_base::iostate&,
     const __c_locale&) throw();
#pragma empty_line
  template<>
    void
    __convert_to_v(const char*, double&, ios_base::iostate&,
     const __c_locale&) throw();
#pragma empty_line
  template<>
    void
    __convert_to_v(const char*, long double&, ios_base::iostate&,
     const __c_locale&) throw();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    struct __pad
    {
      static void
      _S_pad(ios_base& __io, _CharT __fill, _CharT* __news,
      const _CharT* __olds, streamsize __newlen, streamsize __oldlen);
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    _CharT*
    __add_grouping(_CharT* __s, _CharT __sep,
     const char* __gbeg, size_t __gsize,
     const _CharT* __first, const _CharT* __last);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline
    ostreambuf_iterator<_CharT>
    __write(ostreambuf_iterator<_CharT> __s, const _CharT* __ws, int __len)
    {
      __s._M_put(__ws, __len);
      return __s;
    }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    inline
    _OutIter
    __write(_OutIter __s, const _CharT* __ws, int __len)
    {
      for (int __j = 0; __j < __len; __j++, ++__s)
 *__s = __ws[__j];
      return __s;
    }
#pragma line 144 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _CharT>
    class __ctype_abstract_base : public locale::facet, public ctype_base
    {
    public:
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
#pragma line 162 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      bool
      is(mask __m, char_type __c) const
      { return this->do_is(__m, __c); }
#pragma line 179 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      is(const char_type *__lo, const char_type *__hi, mask *__vec) const
      { return this->do_is(__lo, __hi, __vec); }
#pragma line 195 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      scan_is(mask __m, const char_type* __lo, const char_type* __hi) const
      { return this->do_scan_is(__m, __lo, __hi); }
#pragma line 211 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      scan_not(mask __m, const char_type* __lo, const char_type* __hi) const
      { return this->do_scan_not(__m, __lo, __hi); }
#pragma line 225 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      toupper(char_type __c) const
      { return this->do_toupper(__c); }
#pragma line 240 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      toupper(char_type *__lo, const char_type* __hi) const
      { return this->do_toupper(__lo, __hi); }
#pragma line 254 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      tolower(char_type __c) const
      { return this->do_tolower(__c); }
#pragma line 269 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      tolower(char_type* __lo, const char_type* __hi) const
      { return this->do_tolower(__lo, __hi); }
#pragma line 286 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      widen(char __c) const
      { return this->do_widen(__c); }
#pragma line 305 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char*
      widen(const char* __lo, const char* __hi, char_type* __to) const
      { return this->do_widen(__lo, __hi, __to); }
#pragma line 324 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char
      narrow(char_type __c, char __dfault) const
      { return this->do_narrow(__c, __dfault); }
#pragma line 346 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      narrow(const char_type* __lo, const char_type* __hi,
       char __dfault, char *__to) const
      { return this->do_narrow(__lo, __hi, __dfault, __to); }
#pragma empty_line
    protected:
      explicit
      __ctype_abstract_base(size_t __refs = 0): facet(__refs) { }
#pragma empty_line
      virtual
      ~__ctype_abstract_base() { }
#pragma line 371 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual bool
      do_is(mask __m, char_type __c) const = 0;
#pragma line 390 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_is(const char_type* __lo, const char_type* __hi,
     mask* __vec) const = 0;
#pragma line 409 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_scan_is(mask __m, const char_type* __lo,
   const char_type* __hi) const = 0;
#pragma line 428 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_scan_not(mask __m, const char_type* __lo,
    const char_type* __hi) const = 0;
#pragma line 446 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_toupper(char_type) const = 0;
#pragma line 463 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_toupper(char_type* __lo, const char_type* __hi) const = 0;
#pragma line 479 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_tolower(char_type) const = 0;
#pragma line 496 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_tolower(char_type* __lo, const char_type* __hi) const = 0;
#pragma line 515 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_widen(char) const = 0;
#pragma line 536 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char*
      do_widen(const char* __lo, const char* __hi,
        char_type* __dest) const = 0;
#pragma line 558 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char
      do_narrow(char_type, char __dfault) const = 0;
#pragma line 582 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_narrow(const char_type* __lo, const char_type* __hi,
  char __dfault, char* __dest) const = 0;
    };
#pragma line 605 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _CharT>
    class ctype : public __ctype_abstract_base<_CharT>
    {
    public:
#pragma empty_line
      typedef _CharT char_type;
      typedef typename __ctype_abstract_base<_CharT>::mask mask;
#pragma empty_line
#pragma empty_line
      static locale::id id;
#pragma empty_line
      explicit
      ctype(size_t __refs = 0) : __ctype_abstract_base<_CharT>(__refs) { }
#pragma empty_line
   protected:
      virtual
      ~ctype();
#pragma empty_line
      virtual bool
      do_is(mask __m, char_type __c) const;
#pragma empty_line
      virtual const char_type*
      do_is(const char_type* __lo, const char_type* __hi, mask* __vec) const;
#pragma empty_line
      virtual const char_type*
      do_scan_is(mask __m, const char_type* __lo, const char_type* __hi) const;
#pragma empty_line
      virtual const char_type*
      do_scan_not(mask __m, const char_type* __lo,
    const char_type* __hi) const;
#pragma empty_line
      virtual char_type
      do_toupper(char_type __c) const;
#pragma empty_line
      virtual const char_type*
      do_toupper(char_type* __lo, const char_type* __hi) const;
#pragma empty_line
      virtual char_type
      do_tolower(char_type __c) const;
#pragma empty_line
      virtual const char_type*
      do_tolower(char_type* __lo, const char_type* __hi) const;
#pragma empty_line
      virtual char_type
      do_widen(char __c) const;
#pragma empty_line
      virtual const char*
      do_widen(const char* __lo, const char* __hi, char_type* __dest) const;
#pragma empty_line
      virtual char
      do_narrow(char_type, char __dfault) const;
#pragma empty_line
      virtual const char_type*
      do_narrow(const char_type* __lo, const char_type* __hi,
  char __dfault, char* __dest) const;
    };
#pragma empty_line
  template<typename _CharT>
    locale::id ctype<_CharT>::id;
#pragma line 674 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<>
    class ctype<char> : public locale::facet, public ctype_base
    {
    public:
#pragma empty_line
#pragma empty_line
      typedef char char_type;
#pragma empty_line
    protected:
#pragma empty_line
      __c_locale _M_c_locale_ctype;
      bool _M_del;
      __to_type _M_toupper;
      __to_type _M_tolower;
      const mask* _M_table;
      mutable char _M_widen_ok;
      mutable char _M_widen[1 + static_cast<unsigned char>(-1)];
      mutable char _M_narrow[1 + static_cast<unsigned char>(-1)];
      mutable char _M_narrow_ok;
#pragma empty_line
#pragma empty_line
    public:
#pragma empty_line
      static locale::id id;
#pragma empty_line
      static const size_t table_size = 1 + static_cast<unsigned char>(-1);
#pragma line 711 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      ctype(const mask* __table = 0, bool __del = false, size_t __refs = 0);
#pragma line 724 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      ctype(__c_locale __cloc, const mask* __table = 0, bool __del = false,
     size_t __refs = 0);
#pragma line 737 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      inline bool
      is(mask __m, char __c) const;
#pragma line 752 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      inline const char*
      is(const char* __lo, const char* __hi, mask* __vec) const;
#pragma line 766 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      inline const char*
      scan_is(mask __m, const char* __lo, const char* __hi) const;
#pragma line 780 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      inline const char*
      scan_not(mask __m, const char* __lo, const char* __hi) const;
#pragma line 795 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      toupper(char_type __c) const
      { return this->do_toupper(__c); }
#pragma line 812 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      toupper(char_type *__lo, const char_type* __hi) const
      { return this->do_toupper(__lo, __hi); }
#pragma line 828 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      tolower(char_type __c) const
      { return this->do_tolower(__c); }
#pragma line 845 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      tolower(char_type* __lo, const char_type* __hi) const
      { return this->do_tolower(__lo, __hi); }
#pragma line 865 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      widen(char __c) const
      {
 if (_M_widen_ok)
   return _M_widen[static_cast<unsigned char>(__c)];
 this->_M_widen_init();
 return this->do_widen(__c);
      }
#pragma line 892 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char*
      widen(const char* __lo, const char* __hi, char_type* __to) const
      {
 if (_M_widen_ok == 1)
   {
     __builtin_memcpy(__to, __lo, __hi - __lo);
     return __hi;
   }
 if (!_M_widen_ok)
   _M_widen_init();
 return this->do_widen(__lo, __hi, __to);
      }
#pragma line 923 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char
      narrow(char_type __c, char __dfault) const
      {
 if (_M_narrow[static_cast<unsigned char>(__c)])
   return _M_narrow[static_cast<unsigned char>(__c)];
 const char __t = do_narrow(__c, __dfault);
 if (__t != __dfault)
   _M_narrow[static_cast<unsigned char>(__c)] = __t;
 return __t;
      }
#pragma line 956 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      const char_type*
      narrow(const char_type* __lo, const char_type* __hi,
      char __dfault, char *__to) const
      {
 if (__builtin_expect(_M_narrow_ok == 1, true))
   {
     __builtin_memcpy(__to, __lo, __hi - __lo);
     return __hi;
   }
 if (!_M_narrow_ok)
   _M_narrow_init();
 return this->do_narrow(__lo, __hi, __dfault, __to);
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const mask*
      table() const throw()
      { return _M_table; }
#pragma empty_line
#pragma empty_line
      static const mask*
      classic_table() throw();
    protected:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~ctype();
#pragma line 1005 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_toupper(char_type) const;
#pragma line 1022 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_toupper(char_type* __lo, const char_type* __hi) const;
#pragma line 1038 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_tolower(char_type) const;
#pragma line 1055 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_tolower(char_type* __lo, const char_type* __hi) const;
#pragma line 1075 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_widen(char __c) const
      { return __c; }
#pragma line 1098 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char*
      do_widen(const char* __lo, const char* __hi, char_type* __dest) const
      {
 __builtin_memcpy(__dest, __lo, __hi - __lo);
 return __hi;
      }
#pragma line 1124 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char
      do_narrow(char_type __c, char) const
      { return __c; }
#pragma line 1150 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_narrow(const char_type* __lo, const char_type* __hi,
  char, char* __dest) const
      {
 __builtin_memcpy(__dest, __lo, __hi - __lo);
 return __hi;
      }
#pragma empty_line
    private:
      void _M_narrow_init() const;
      void _M_widen_init() const;
    };
#pragma line 1175 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<>
    class ctype<wchar_t> : public __ctype_abstract_base<wchar_t>
    {
    public:
#pragma empty_line
#pragma empty_line
      typedef wchar_t char_type;
      typedef wctype_t __wmask_type;
#pragma empty_line
    protected:
      __c_locale _M_c_locale_ctype;
#pragma empty_line
#pragma empty_line
      bool _M_narrow_ok;
      char _M_narrow[128];
      wint_t _M_widen[1 + static_cast<unsigned char>(-1)];
#pragma empty_line
#pragma empty_line
      mask _M_bit[16];
      __wmask_type _M_wmask[16];
#pragma empty_line
    public:
#pragma empty_line
#pragma empty_line
      static locale::id id;
#pragma line 1208 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      ctype(size_t __refs = 0);
#pragma line 1219 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      ctype(__c_locale __cloc, size_t __refs = 0);
#pragma empty_line
    protected:
      __wmask_type
      _M_convert_to_wmask(const mask __m) const throw();
#pragma empty_line
#pragma empty_line
      virtual
      ~ctype();
#pragma line 1243 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual bool
      do_is(mask __m, char_type __c) const;
#pragma line 1262 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_is(const char_type* __lo, const char_type* __hi, mask* __vec) const;
#pragma line 1280 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_scan_is(mask __m, const char_type* __lo, const char_type* __hi) const;
#pragma line 1298 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_scan_not(mask __m, const char_type* __lo,
    const char_type* __hi) const;
#pragma line 1315 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_toupper(char_type) const;
#pragma line 1332 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_toupper(char_type* __lo, const char_type* __hi) const;
#pragma line 1348 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_tolower(char_type) const;
#pragma line 1365 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_tolower(char_type* __lo, const char_type* __hi) const;
#pragma line 1385 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_widen(char) const;
#pragma line 1407 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char*
      do_widen(const char* __lo, const char* __hi, char_type* __dest) const;
#pragma line 1430 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char
      do_narrow(char_type, char __dfault) const;
#pragma line 1456 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual const char_type*
      do_narrow(const char_type* __lo, const char_type* __hi,
  char __dfault, char* __dest) const;
#pragma empty_line
#pragma empty_line
      void
      _M_initialize_ctype() throw();
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    class ctype_byname : public ctype<_CharT>
    {
    public:
      typedef typename ctype<_CharT>::mask mask;
#pragma empty_line
      explicit
      ctype_byname(const char* __s, size_t __refs = 0);
#pragma empty_line
    protected:
      virtual
      ~ctype_byname() { };
    };
#pragma empty_line
#pragma empty_line
  template<>
    class ctype_byname<char> : public ctype<char>
    {
    public:
      explicit
      ctype_byname(const char* __s, size_t __refs = 0);
#pragma empty_line
    protected:
      virtual
      ~ctype_byname();
    };
#pragma empty_line
#pragma empty_line
  template<>
    class ctype_byname<wchar_t> : public ctype<wchar_t>
    {
    public:
      explicit
      ctype_byname(const char* __s, size_t __refs = 0);
#pragma empty_line
    protected:
      virtual
      ~ctype_byname();
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/ctype_inline.h" 1 3
#pragma line 37 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/ctype_inline.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  bool
  ctype<char>::
  is(mask __m, char __c) const
  { return _M_table[static_cast<unsigned char>(__c)] & __m; }
#pragma empty_line
  const char*
  ctype<char>::
  is(const char* __low, const char* __high, mask* __vec) const
  {
    while (__low < __high)
      *__vec++ = _M_table[static_cast<unsigned char>(*__low++)];
    return __high;
  }
#pragma empty_line
  const char*
  ctype<char>::
  scan_is(mask __m, const char* __low, const char* __high) const
  {
    while (__low < __high
    && !(_M_table[static_cast<unsigned char>(*__low)] & __m))
      ++__low;
    return __low;
  }
#pragma empty_line
  const char*
  ctype<char>::
  scan_not(mask __m, const char* __low, const char* __high) const
  {
    while (__low < __high
    && (_M_table[static_cast<unsigned char>(*__low)] & __m) != 0)
      ++__low;
    return __low;
  }
#pragma empty_line
#pragma empty_line
}
#pragma line 1513 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  class __num_base
  {
  public:
#pragma empty_line
#pragma empty_line
    enum
      {
        _S_ominus,
        _S_oplus,
        _S_ox,
        _S_oX,
        _S_odigits,
        _S_odigits_end = _S_odigits + 16,
        _S_oudigits = _S_odigits_end,
        _S_oudigits_end = _S_oudigits + 16,
        _S_oe = _S_odigits + 14,
        _S_oE = _S_oudigits + 14,
 _S_oend = _S_oudigits_end
      };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const char* _S_atoms_out;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static const char* _S_atoms_in;
#pragma empty_line
    enum
    {
      _S_iminus,
      _S_iplus,
      _S_ix,
      _S_iX,
      _S_izero,
      _S_ie = _S_izero + 14,
      _S_iE = _S_izero + 20,
      _S_iend = 26
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
    static void
    _S_format_float(const ios_base& __io, char* __fptr, char __mod) throw();
  };
#pragma empty_line
  template<typename _CharT>
    struct __numpunct_cache : public locale::facet
    {
      const char* _M_grouping;
      size_t _M_grouping_size;
      bool _M_use_grouping;
      const _CharT* _M_truename;
      size_t _M_truename_size;
      const _CharT* _M_falsename;
      size_t _M_falsename_size;
      _CharT _M_decimal_point;
      _CharT _M_thousands_sep;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      _CharT _M_atoms_out[__num_base::_S_oend];
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      _CharT _M_atoms_in[__num_base::_S_iend];
#pragma empty_line
      bool _M_allocated;
#pragma empty_line
      __numpunct_cache(size_t __refs = 0)
      : facet(__refs), _M_grouping(0), _M_grouping_size(0),
 _M_use_grouping(false),
 _M_truename(0), _M_truename_size(0), _M_falsename(0),
 _M_falsename_size(0), _M_decimal_point(_CharT()),
 _M_thousands_sep(_CharT()), _M_allocated(false)
        { }
#pragma empty_line
      ~__numpunct_cache();
#pragma empty_line
      void
      _M_cache(const locale& __loc);
#pragma empty_line
    private:
      __numpunct_cache&
      operator=(const __numpunct_cache&);
#pragma empty_line
      explicit
      __numpunct_cache(const __numpunct_cache&);
    };
#pragma empty_line
  template<typename _CharT>
    __numpunct_cache<_CharT>::~__numpunct_cache()
    {
      if (_M_allocated)
 {
   delete [] _M_grouping;
   delete [] _M_truename;
   delete [] _M_falsename;
 }
    }
#pragma line 1641 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _CharT>
    class numpunct : public locale::facet
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef basic_string<_CharT> string_type;
#pragma empty_line
      typedef __numpunct_cache<_CharT> __cache_type;
#pragma empty_line
    protected:
      __cache_type* _M_data;
#pragma empty_line
    public:
#pragma empty_line
      static locale::id id;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      explicit
      numpunct(size_t __refs = 0)
      : facet(__refs), _M_data(0)
      { _M_initialize_numpunct(); }
#pragma line 1679 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      numpunct(__cache_type* __cache, size_t __refs = 0)
      : facet(__refs), _M_data(__cache)
      { _M_initialize_numpunct(); }
#pragma line 1693 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      numpunct(__c_locale __cloc, size_t __refs = 0)
      : facet(__refs), _M_data(0)
      { _M_initialize_numpunct(__cloc); }
#pragma line 1707 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      decimal_point() const
      { return this->do_decimal_point(); }
#pragma line 1720 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      char_type
      thousands_sep() const
      { return this->do_thousands_sep(); }
#pragma line 1751 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      string
      grouping() const
      { return this->do_grouping(); }
#pragma line 1764 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      string_type
      truename() const
      { return this->do_truename(); }
#pragma line 1777 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      string_type
      falsename() const
      { return this->do_falsename(); }
#pragma empty_line
    protected:
#pragma empty_line
      virtual
      ~numpunct();
#pragma line 1794 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_decimal_point() const
      { return _M_data->_M_decimal_point; }
#pragma line 1806 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual char_type
      do_thousands_sep() const
      { return _M_data->_M_thousands_sep; }
#pragma line 1819 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual string
      do_grouping() const
      { return _M_data->_M_grouping; }
#pragma line 1832 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual string_type
      do_truename() const
      { return _M_data->_M_truename; }
#pragma line 1845 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual string_type
      do_falsename() const
      { return _M_data->_M_falsename; }
#pragma empty_line
#pragma empty_line
      void
      _M_initialize_numpunct(__c_locale __cloc = 0);
    };
#pragma empty_line
  template<typename _CharT>
    locale::id numpunct<_CharT>::id;
#pragma empty_line
  template<>
    numpunct<char>::~numpunct();
#pragma empty_line
  template<>
    void
    numpunct<char>::_M_initialize_numpunct(__c_locale __cloc);
#pragma empty_line
#pragma empty_line
  template<>
    numpunct<wchar_t>::~numpunct();
#pragma empty_line
  template<>
    void
    numpunct<wchar_t>::_M_initialize_numpunct(__c_locale __cloc);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    class numpunct_byname : public numpunct<_CharT>
    {
    public:
      typedef _CharT char_type;
      typedef basic_string<_CharT> string_type;
#pragma empty_line
      explicit
      numpunct_byname(const char* __s, size_t __refs = 0)
      : numpunct<_CharT>(__refs)
      {
 if (__builtin_strcmp(__s, "C") != 0
     && __builtin_strcmp(__s, "POSIX") != 0)
   {
     __c_locale __tmp;
     this->_S_create_c_locale(__tmp, __s);
     this->_M_initialize_numpunct(__tmp);
     this->_S_destroy_c_locale(__tmp);
   }
      }
#pragma empty_line
    protected:
      virtual
      ~numpunct_byname() { }
    };
#pragma empty_line
#pragma empty_line
#pragma line 1915 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _CharT, typename _InIter>
    class num_get : public locale::facet
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef _InIter iter_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static locale::id id;
#pragma line 1936 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      num_get(size_t __refs = 0) : facet(__refs) { }
#pragma line 1962 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, bool& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma line 1998 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, long& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, unsigned short& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, unsigned int& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, unsigned long& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, long long& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, unsigned long long& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma line 2057 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, float& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, double& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, long double& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma line 2099 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      get(iter_type __in, iter_type __end, ios_base& __io,
   ios_base::iostate& __err, void*& __v) const
      { return this->do_get(__in, __end, __io, __err, __v); }
#pragma empty_line
    protected:
#pragma empty_line
      virtual ~num_get() { }
#pragma empty_line
      iter_type
      _M_extract_float(iter_type, iter_type, ios_base&, ios_base::iostate&,
         string&) const;
#pragma empty_line
      template<typename _ValueT>
        iter_type
        _M_extract_int(iter_type, iter_type, ios_base&, ios_base::iostate&,
         _ValueT&) const;
#pragma empty_line
      template<typename _CharT2>
      typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value, int>::__type
        _M_find(const _CharT2*, size_t __len, _CharT2 __c) const
        {
   int __ret = -1;
   if (__len <= 10)
     {
       if (__c >= _CharT2('0') && __c < _CharT2(_CharT2('0') + __len))
  __ret = __c - _CharT2('0');
     }
   else
     {
       if (__c >= _CharT2('0') && __c <= _CharT2('9'))
  __ret = __c - _CharT2('0');
       else if (__c >= _CharT2('a') && __c <= _CharT2('f'))
  __ret = 10 + (__c - _CharT2('a'));
       else if (__c >= _CharT2('A') && __c <= _CharT2('F'))
  __ret = 10 + (__c - _CharT2('A'));
     }
   return __ret;
 }
#pragma empty_line
      template<typename _CharT2>
      typename __gnu_cxx::__enable_if<!__is_char<_CharT2>::__value,
          int>::__type
        _M_find(const _CharT2* __zero, size_t __len, _CharT2 __c) const
        {
   int __ret = -1;
   const char_type* __q = char_traits<_CharT2>::find(__zero, __len, __c);
   if (__q)
     {
       __ret = __q - __zero;
       if (__ret > 15)
  __ret -= 6;
     }
   return __ret;
 }
#pragma line 2170 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual iter_type
      do_get(iter_type, iter_type, ios_base&, ios_base::iostate&, bool&) const;
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, long& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, unsigned short& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, unsigned int& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, unsigned long& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, long long& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
      virtual iter_type
      do_get(iter_type __beg, iter_type __end, ios_base& __io,
      ios_base::iostate& __err, unsigned long long& __v) const
      { return _M_extract_int(__beg, __end, __io, __err, __v); }
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_get(iter_type, iter_type, ios_base&, ios_base::iostate& __err,
      float&) const;
#pragma empty_line
      virtual iter_type
      do_get(iter_type, iter_type, ios_base&, ios_base::iostate& __err,
      double&) const;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_get(iter_type, iter_type, ios_base&, ios_base::iostate& __err,
      long double&) const;
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_get(iter_type, iter_type, ios_base&, ios_base::iostate& __err,
      void*&) const;
#pragma line 2235 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
    };
#pragma empty_line
  template<typename _CharT, typename _InIter>
    locale::id num_get<_CharT, _InIter>::id;
#pragma line 2253 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
  template<typename _CharT, typename _OutIter>
    class num_put : public locale::facet
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef _OutIter iter_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
      static locale::id id;
#pragma line 2274 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      explicit
      num_put(size_t __refs = 0) : facet(__refs) { }
#pragma line 2292 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill, bool __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma line 2334 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill, long __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma empty_line
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill,
   unsigned long __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma empty_line
#pragma empty_line
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill, long long __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma empty_line
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill,
   unsigned long long __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma line 2397 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill, double __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma empty_line
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill,
   long double __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma line 2422 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      iter_type
      put(iter_type __s, ios_base& __f, char_type __fill,
   const void* __v) const
      { return this->do_put(__s, __f, __fill, __v); }
#pragma empty_line
    protected:
      template<typename _ValueT>
        iter_type
        _M_insert_float(iter_type, ios_base& __io, char_type __fill,
   char __mod, _ValueT __v) const;
#pragma empty_line
      void
      _M_group_float(const char* __grouping, size_t __grouping_size,
       char_type __sep, const char_type* __p, char_type* __new,
       char_type* __cs, int& __len) const;
#pragma empty_line
      template<typename _ValueT>
        iter_type
        _M_insert_int(iter_type, ios_base& __io, char_type __fill,
        _ValueT __v) const;
#pragma empty_line
      void
      _M_group_int(const char* __grouping, size_t __grouping_size,
     char_type __sep, ios_base& __io, char_type* __new,
     char_type* __cs, int& __len) const;
#pragma empty_line
      void
      _M_pad(char_type __fill, streamsize __w, ios_base& __io,
      char_type* __new, const char_type* __cs, int& __len) const;
#pragma empty_line
#pragma empty_line
      virtual
      ~num_put() { };
#pragma line 2470 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 3
      virtual iter_type
      do_put(iter_type, ios_base&, char_type __fill, bool __v) const;
#pragma empty_line
      virtual iter_type
      do_put(iter_type __s, ios_base& __io, char_type __fill, long __v) const
      { return _M_insert_int(__s, __io, __fill, __v); }
#pragma empty_line
      virtual iter_type
      do_put(iter_type __s, ios_base& __io, char_type __fill,
      unsigned long __v) const
      { return _M_insert_int(__s, __io, __fill, __v); }
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_put(iter_type __s, ios_base& __io, char_type __fill,
      long long __v) const
      { return _M_insert_int(__s, __io, __fill, __v); }
#pragma empty_line
      virtual iter_type
      do_put(iter_type __s, ios_base& __io, char_type __fill,
      unsigned long long __v) const
      { return _M_insert_int(__s, __io, __fill, __v); }
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_put(iter_type, ios_base&, char_type __fill, double __v) const;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_put(iter_type, ios_base&, char_type __fill, long double __v) const;
#pragma empty_line
#pragma empty_line
      virtual iter_type
      do_put(iter_type, ios_base&, char_type __fill, const void* __v) const;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    };
#pragma empty_line
  template <typename _CharT, typename _OutIter>
    locale::id num_put<_CharT, _OutIter>::id;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isspace(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::space, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isprint(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::print, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    iscntrl(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::cntrl, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isupper(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::upper, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    islower(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::lower, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isalpha(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::alpha, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isdigit(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::digit, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    ispunct(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::punct, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isxdigit(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::xdigit, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isalnum(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::alnum, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline bool
    isgraph(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).is(ctype_base::graph, __c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline _CharT
    toupper(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).toupper(__c); }
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    inline _CharT
    tolower(_CharT __c, const locale& __loc)
    { return use_facet<ctype<_CharT> >(__loc).tolower(__c); }
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 1 3
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
#pragma empty_line
#pragma line 36 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Facet>
    struct __use_cache
    {
      const _Facet*
      operator() (const locale& __loc) const;
    };
#pragma empty_line
#pragma empty_line
  template<typename _CharT>
    struct __use_cache<__numpunct_cache<_CharT> >
    {
      const __numpunct_cache<_CharT>*
      operator() (const locale& __loc) const
      {
 const size_t __i = numpunct<_CharT>::id._M_id();
 const locale::facet** __caches = __loc._M_impl->_M_caches;
 if (!__caches[__i])
   {
     __numpunct_cache<_CharT>* __tmp = 0;
     try
       {
  __tmp = new __numpunct_cache<_CharT>;
  __tmp->_M_cache(__loc);
       }
     catch(...)
       {
  delete __tmp;
  throw;
       }
     __loc._M_impl->_M_install_cache(__tmp, __i);
   }
 return static_cast<const __numpunct_cache<_CharT>*>(__caches[__i]);
      }
    };
#pragma empty_line
  template<typename _CharT>
    void
    __numpunct_cache<_CharT>::_M_cache(const locale& __loc)
    {
      _M_allocated = true;
#pragma empty_line
      const numpunct<_CharT>& __np = use_facet<numpunct<_CharT> >(__loc);
#pragma empty_line
      char* __grouping = 0;
      _CharT* __truename = 0;
      _CharT* __falsename = 0;
      try
 {
   _M_grouping_size = __np.grouping().size();
   __grouping = new char[_M_grouping_size];
   __np.grouping().copy(__grouping, _M_grouping_size);
   _M_grouping = __grouping;
   _M_use_grouping = (_M_grouping_size
        && static_cast<signed char>(_M_grouping[0]) > 0
        && (_M_grouping[0]
     != __gnu_cxx::__numeric_traits<char>::__max));
#pragma empty_line
   _M_truename_size = __np.truename().size();
   __truename = new _CharT[_M_truename_size];
   __np.truename().copy(__truename, _M_truename_size);
   _M_truename = __truename;
#pragma empty_line
   _M_falsename_size = __np.falsename().size();
   __falsename = new _CharT[_M_falsename_size];
   __np.falsename().copy(__falsename, _M_falsename_size);
   _M_falsename = __falsename;
#pragma empty_line
   _M_decimal_point = __np.decimal_point();
   _M_thousands_sep = __np.thousands_sep();
#pragma empty_line
   const ctype<_CharT>& __ct = use_facet<ctype<_CharT> >(__loc);
   __ct.widen(__num_base::_S_atoms_out,
       __num_base::_S_atoms_out
       + __num_base::_S_oend, _M_atoms_out);
   __ct.widen(__num_base::_S_atoms_in,
       __num_base::_S_atoms_in
       + __num_base::_S_iend, _M_atoms_in);
 }
      catch(...)
 {
   delete [] __grouping;
   delete [] __truename;
   delete [] __falsename;
   throw;
 }
    }
#pragma line 138 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
  __attribute__ ((__pure__)) bool
  __verify_grouping(const char* __grouping, size_t __grouping_size,
      const string& __grouping_tmp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    _M_extract_float(_InIter __beg, _InIter __end, ios_base& __io,
       ios_base::iostate& __err, string& __xtrc) const
    {
      typedef char_traits<_CharT> __traits_type;
      typedef __numpunct_cache<_CharT> __cache_type;
      __use_cache<__cache_type> __uc;
      const locale& __loc = __io._M_getloc();
      const __cache_type* __lc = __uc(__loc);
      const _CharT* __lit = __lc->_M_atoms_in;
      char_type __c = char_type();
#pragma empty_line
#pragma empty_line
      bool __testeof = __beg == __end;
#pragma empty_line
#pragma empty_line
      if (!__testeof)
 {
   __c = *__beg;
   const bool __plus = __c == __lit[__num_base::_S_iplus];
   if ((__plus || __c == __lit[__num_base::_S_iminus])
       && !(__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
       && !(__c == __lc->_M_decimal_point))
     {
       __xtrc += __plus ? '+' : '-';
       if (++__beg != __end)
  __c = *__beg;
       else
  __testeof = true;
     }
 }
#pragma empty_line
#pragma empty_line
      bool __found_mantissa = false;
      int __sep_pos = 0;
      while (!__testeof)
 {
   if ((__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
       || __c == __lc->_M_decimal_point)
     break;
   else if (__c == __lit[__num_base::_S_izero])
     {
       if (!__found_mantissa)
  {
    __xtrc += '0';
    __found_mantissa = true;
  }
       ++__sep_pos;
#pragma empty_line
       if (++__beg != __end)
  __c = *__beg;
       else
  __testeof = true;
     }
   else
     break;
 }
#pragma empty_line
#pragma empty_line
      bool __found_dec = false;
      bool __found_sci = false;
      string __found_grouping;
      if (__lc->_M_use_grouping)
 __found_grouping.reserve(32);
      const char_type* __lit_zero = __lit + __num_base::_S_izero;
#pragma empty_line
      if (!__lc->_M_allocated)
#pragma empty_line
 while (!__testeof)
   {
     const int __digit = _M_find(__lit_zero, 10, __c);
     if (__digit != -1)
       {
  __xtrc += '0' + __digit;
  __found_mantissa = true;
       }
     else if (__c == __lc->_M_decimal_point
       && !__found_dec && !__found_sci)
       {
  __xtrc += '.';
  __found_dec = true;
       }
     else if ((__c == __lit[__num_base::_S_ie]
        || __c == __lit[__num_base::_S_iE])
       && !__found_sci && __found_mantissa)
       {
#pragma empty_line
  __xtrc += 'e';
  __found_sci = true;
#pragma empty_line
#pragma empty_line
  if (++__beg != __end)
    {
      __c = *__beg;
      const bool __plus = __c == __lit[__num_base::_S_iplus];
      if (__plus || __c == __lit[__num_base::_S_iminus])
        __xtrc += __plus ? '+' : '-';
      else
        continue;
    }
  else
    {
      __testeof = true;
      break;
    }
       }
     else
       break;
#pragma empty_line
     if (++__beg != __end)
       __c = *__beg;
     else
       __testeof = true;
   }
      else
 while (!__testeof)
   {
#pragma empty_line
#pragma empty_line
     if (__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
       {
  if (!__found_dec && !__found_sci)
    {
#pragma empty_line
#pragma empty_line
      if (__sep_pos)
        {
   __found_grouping += static_cast<char>(__sep_pos);
   __sep_pos = 0;
        }
      else
        {
#pragma empty_line
#pragma empty_line
   __xtrc.clear();
   break;
        }
    }
  else
    break;
       }
     else if (__c == __lc->_M_decimal_point)
       {
  if (!__found_dec && !__found_sci)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__found_grouping.size())
        __found_grouping += static_cast<char>(__sep_pos);
      __xtrc += '.';
      __found_dec = true;
    }
  else
    break;
       }
     else
       {
  const char_type* __q =
    __traits_type::find(__lit_zero, 10, __c);
  if (__q)
    {
      __xtrc += '0' + (__q - __lit_zero);
      __found_mantissa = true;
      ++__sep_pos;
    }
  else if ((__c == __lit[__num_base::_S_ie]
     || __c == __lit[__num_base::_S_iE])
    && !__found_sci && __found_mantissa)
    {
#pragma empty_line
      if (__found_grouping.size() && !__found_dec)
        __found_grouping += static_cast<char>(__sep_pos);
      __xtrc += 'e';
      __found_sci = true;
#pragma empty_line
#pragma empty_line
      if (++__beg != __end)
        {
   __c = *__beg;
   const bool __plus = __c == __lit[__num_base::_S_iplus];
   if ((__plus || __c == __lit[__num_base::_S_iminus])
       && !(__lc->_M_use_grouping
     && __c == __lc->_M_thousands_sep)
       && !(__c == __lc->_M_decimal_point))
        __xtrc += __plus ? '+' : '-';
   else
     continue;
        }
      else
        {
   __testeof = true;
   break;
        }
    }
  else
    break;
       }
#pragma empty_line
     if (++__beg != __end)
       __c = *__beg;
     else
       __testeof = true;
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
      if (__found_grouping.size())
        {
#pragma empty_line
   if (!__found_dec && !__found_sci)
     __found_grouping += static_cast<char>(__sep_pos);
#pragma empty_line
          if (!std::__verify_grouping(__lc->_M_grouping,
          __lc->_M_grouping_size,
          __found_grouping))
     __err = ios_base::failbit;
        }
#pragma empty_line
      return __beg;
    }
#pragma empty_line
  template<typename _CharT, typename _InIter>
    template<typename _ValueT>
      _InIter
      num_get<_CharT, _InIter>::
      _M_extract_int(_InIter __beg, _InIter __end, ios_base& __io,
       ios_base::iostate& __err, _ValueT& __v) const
      {
        typedef char_traits<_CharT> __traits_type;
 using __gnu_cxx::__add_unsigned;
 typedef typename __add_unsigned<_ValueT>::__type __unsigned_type;
 typedef __numpunct_cache<_CharT> __cache_type;
 __use_cache<__cache_type> __uc;
 const locale& __loc = __io._M_getloc();
 const __cache_type* __lc = __uc(__loc);
 const _CharT* __lit = __lc->_M_atoms_in;
 char_type __c = char_type();
#pragma empty_line
#pragma empty_line
 const ios_base::fmtflags __basefield = __io.flags()
                                        & ios_base::basefield;
 const bool __oct = __basefield == ios_base::oct;
 int __base = __oct ? 8 : (__basefield == ios_base::hex ? 16 : 10);
#pragma empty_line
#pragma empty_line
 bool __testeof = __beg == __end;
#pragma empty_line
#pragma empty_line
 bool __negative = false;
 if (!__testeof)
   {
     __c = *__beg;
     __negative = __c == __lit[__num_base::_S_iminus];
     if ((__negative || __c == __lit[__num_base::_S_iplus])
  && !(__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
  && !(__c == __lc->_M_decimal_point))
       {
  if (++__beg != __end)
    __c = *__beg;
  else
    __testeof = true;
       }
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
 bool __found_zero = false;
 int __sep_pos = 0;
 while (!__testeof)
   {
     if ((__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
  || __c == __lc->_M_decimal_point)
       break;
     else if (__c == __lit[__num_base::_S_izero]
       && (!__found_zero || __base == 10))
       {
  __found_zero = true;
  ++__sep_pos;
  if (__basefield == 0)
    __base = 8;
  if (__base == 8)
    __sep_pos = 0;
       }
     else if (__found_zero
       && (__c == __lit[__num_base::_S_ix]
    || __c == __lit[__num_base::_S_iX]))
       {
  if (__basefield == 0)
    __base = 16;
  if (__base == 16)
    {
      __found_zero = false;
      __sep_pos = 0;
    }
  else
    break;
       }
     else
       break;
#pragma empty_line
     if (++__beg != __end)
       {
  __c = *__beg;
  if (!__found_zero)
    break;
       }
     else
       __testeof = true;
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
 const size_t __len = (__base == 16 ? __num_base::_S_iend
         - __num_base::_S_izero : __base);
#pragma empty_line
#pragma empty_line
 string __found_grouping;
 if (__lc->_M_use_grouping)
   __found_grouping.reserve(32);
 bool __testfail = false;
 bool __testoverflow = false;
 const __unsigned_type __max =
   (__negative && __gnu_cxx::__numeric_traits<_ValueT>::__is_signed)
   ? -__gnu_cxx::__numeric_traits<_ValueT>::__min
   : __gnu_cxx::__numeric_traits<_ValueT>::__max;
 const __unsigned_type __smax = __max / __base;
 __unsigned_type __result = 0;
 int __digit = 0;
 const char_type* __lit_zero = __lit + __num_base::_S_izero;
#pragma empty_line
 if (!__lc->_M_allocated)
#pragma empty_line
   while (!__testeof)
     {
       __digit = _M_find(__lit_zero, __len, __c);
       if (__digit == -1)
  break;
#pragma empty_line
       if (__result > __smax)
  __testoverflow = true;
       else
  {
    __result *= __base;
    __testoverflow |= __result > __max - __digit;
    __result += __digit;
    ++__sep_pos;
  }
#pragma empty_line
       if (++__beg != __end)
  __c = *__beg;
       else
  __testeof = true;
     }
 else
   while (!__testeof)
     {
#pragma empty_line
#pragma empty_line
       if (__lc->_M_use_grouping && __c == __lc->_M_thousands_sep)
  {
#pragma empty_line
#pragma empty_line
    if (__sep_pos)
      {
        __found_grouping += static_cast<char>(__sep_pos);
        __sep_pos = 0;
      }
    else
      {
        __testfail = true;
        break;
      }
  }
       else if (__c == __lc->_M_decimal_point)
  break;
       else
  {
    const char_type* __q =
      __traits_type::find(__lit_zero, __len, __c);
    if (!__q)
      break;
#pragma empty_line
    __digit = __q - __lit_zero;
    if (__digit > 15)
      __digit -= 6;
    if (__result > __smax)
      __testoverflow = true;
    else
      {
        __result *= __base;
        __testoverflow |= __result > __max - __digit;
        __result += __digit;
        ++__sep_pos;
      }
  }
#pragma empty_line
       if (++__beg != __end)
  __c = *__beg;
       else
  __testeof = true;
     }
#pragma empty_line
#pragma empty_line
#pragma empty_line
 if (__found_grouping.size())
   {
#pragma empty_line
     __found_grouping += static_cast<char>(__sep_pos);
#pragma empty_line
     if (!std::__verify_grouping(__lc->_M_grouping,
     __lc->_M_grouping_size,
     __found_grouping))
       __err = ios_base::failbit;
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
 if ((!__sep_pos && !__found_zero && !__found_grouping.size())
     || __testfail)
   {
     __v = 0;
     __err = ios_base::failbit;
   }
 else if (__testoverflow)
   {
     if (__negative
  && __gnu_cxx::__numeric_traits<_ValueT>::__is_signed)
       __v = __gnu_cxx::__numeric_traits<_ValueT>::__min;
     else
       __v = __gnu_cxx::__numeric_traits<_ValueT>::__max;
     __err = ios_base::failbit;
   }
 else
   __v = __negative ? -__result : __result;
#pragma empty_line
 if (__testeof)
   __err |= ios_base::eofbit;
 return __beg;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    do_get(iter_type __beg, iter_type __end, ios_base& __io,
           ios_base::iostate& __err, bool& __v) const
    {
      if (!(__io.flags() & ios_base::boolalpha))
        {
#pragma empty_line
#pragma empty_line
#pragma empty_line
   long __l = -1;
          __beg = _M_extract_int(__beg, __end, __io, __err, __l);
   if (__l == 0 || __l == 1)
     __v = bool(__l);
   else
     {
#pragma empty_line
#pragma empty_line
       __v = true;
       __err = ios_base::failbit;
       if (__beg == __end)
  __err |= ios_base::eofbit;
     }
        }
      else
        {
#pragma empty_line
   typedef __numpunct_cache<_CharT> __cache_type;
   __use_cache<__cache_type> __uc;
   const locale& __loc = __io._M_getloc();
   const __cache_type* __lc = __uc(__loc);
#pragma empty_line
   bool __testf = true;
   bool __testt = true;
   bool __donef = __lc->_M_falsename_size == 0;
   bool __donet = __lc->_M_truename_size == 0;
   bool __testeof = false;
   size_t __n = 0;
   while (!__donef || !__donet)
     {
       if (__beg == __end)
  {
    __testeof = true;
    break;
  }
#pragma empty_line
       const char_type __c = *__beg;
#pragma empty_line
       if (!__donef)
  __testf = __c == __lc->_M_falsename[__n];
#pragma empty_line
       if (!__testf && __donet)
  break;
#pragma empty_line
       if (!__donet)
  __testt = __c == __lc->_M_truename[__n];
#pragma empty_line
       if (!__testt && __donef)
  break;
#pragma empty_line
       if (!__testt && !__testf)
  break;
#pragma empty_line
       ++__n;
       ++__beg;
#pragma empty_line
       __donef = !__testf || __n >= __lc->_M_falsename_size;
       __donet = !__testt || __n >= __lc->_M_truename_size;
     }
   if (__testf && __n == __lc->_M_falsename_size && __n)
     {
       __v = false;
       if (__testt && __n == __lc->_M_truename_size)
  __err = ios_base::failbit;
       else
  __err = __testeof ? ios_base::eofbit : ios_base::goodbit;
     }
   else if (__testt && __n == __lc->_M_truename_size && __n)
     {
       __v = true;
       __err = __testeof ? ios_base::eofbit : ios_base::goodbit;
     }
   else
     {
#pragma empty_line
#pragma empty_line
       __v = false;
       __err = ios_base::failbit;
       if (__testeof)
  __err |= ios_base::eofbit;
     }
 }
      return __beg;
    }
#pragma empty_line
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    do_get(iter_type __beg, iter_type __end, ios_base& __io,
    ios_base::iostate& __err, float& __v) const
    {
      string __xtrc;
      __xtrc.reserve(32);
      __beg = _M_extract_float(__beg, __end, __io, __err, __xtrc);
      std::__convert_to_v(__xtrc.c_str(), __v, __err, _S_get_c_locale());
      if (__beg == __end)
 __err |= ios_base::eofbit;
      return __beg;
    }
#pragma empty_line
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    do_get(iter_type __beg, iter_type __end, ios_base& __io,
           ios_base::iostate& __err, double& __v) const
    {
      string __xtrc;
      __xtrc.reserve(32);
      __beg = _M_extract_float(__beg, __end, __io, __err, __xtrc);
      std::__convert_to_v(__xtrc.c_str(), __v, __err, _S_get_c_locale());
      if (__beg == __end)
 __err |= ios_base::eofbit;
      return __beg;
    }
#pragma line 732 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    do_get(iter_type __beg, iter_type __end, ios_base& __io,
           ios_base::iostate& __err, long double& __v) const
    {
      string __xtrc;
      __xtrc.reserve(32);
      __beg = _M_extract_float(__beg, __end, __io, __err, __xtrc);
      std::__convert_to_v(__xtrc.c_str(), __v, __err, _S_get_c_locale());
      if (__beg == __end)
 __err |= ios_base::eofbit;
      return __beg;
    }
#pragma empty_line
  template<typename _CharT, typename _InIter>
    _InIter
    num_get<_CharT, _InIter>::
    do_get(iter_type __beg, iter_type __end, ios_base& __io,
           ios_base::iostate& __err, void*& __v) const
    {
#pragma empty_line
      typedef ios_base::fmtflags fmtflags;
      const fmtflags __fmt = __io.flags();
      __io.flags((__fmt & ~ios_base::basefield) | ios_base::hex);
#pragma empty_line
      typedef __gnu_cxx::__conditional_type<(sizeof(void*)
          <= sizeof(unsigned long)),
 unsigned long, unsigned long long>::__type _UIntPtrType;
#pragma empty_line
      _UIntPtrType __ul;
      __beg = _M_extract_int(__beg, __end, __io, __err, __ul);
#pragma empty_line
#pragma empty_line
      __io.flags(__fmt);
#pragma empty_line
      __v = reinterpret_cast<void*>(__ul);
      return __beg;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    void
    num_put<_CharT, _OutIter>::
    _M_pad(_CharT __fill, streamsize __w, ios_base& __io,
    _CharT* __new, const _CharT* __cs, int& __len) const
    {
#pragma empty_line
#pragma empty_line
      __pad<_CharT, char_traits<_CharT> >::_S_pad(__io, __fill, __new,
        __cs, __w, __len);
      __len = static_cast<int>(__w);
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _ValueT>
    int
    __int_to_char(_CharT* __bufend, _ValueT __v, const _CharT* __lit,
    ios_base::fmtflags __flags, bool __dec)
    {
      _CharT* __buf = __bufend;
      if (__builtin_expect(__dec, true))
 {
#pragma empty_line
   do
     {
       *--__buf = __lit[(__v % 10) + __num_base::_S_odigits];
       __v /= 10;
     }
   while (__v != 0);
 }
      else if ((__flags & ios_base::basefield) == ios_base::oct)
 {
#pragma empty_line
   do
     {
       *--__buf = __lit[(__v & 0x7) + __num_base::_S_odigits];
       __v >>= 3;
     }
   while (__v != 0);
 }
      else
 {
#pragma empty_line
   const bool __uppercase = __flags & ios_base::uppercase;
   const int __case_offset = __uppercase ? __num_base::_S_oudigits
                                         : __num_base::_S_odigits;
   do
     {
       *--__buf = __lit[(__v & 0xf) + __case_offset];
       __v >>= 4;
     }
   while (__v != 0);
 }
      return __bufend - __buf;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    void
    num_put<_CharT, _OutIter>::
    _M_group_int(const char* __grouping, size_t __grouping_size, _CharT __sep,
   ios_base&, _CharT* __new, _CharT* __cs, int& __len) const
    {
      _CharT* __p = std::__add_grouping(__new, __sep, __grouping,
     __grouping_size, __cs, __cs + __len);
      __len = __p - __new;
    }
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    template<typename _ValueT>
      _OutIter
      num_put<_CharT, _OutIter>::
      _M_insert_int(_OutIter __s, ios_base& __io, _CharT __fill,
      _ValueT __v) const
      {
 using __gnu_cxx::__add_unsigned;
 typedef typename __add_unsigned<_ValueT>::__type __unsigned_type;
 typedef __numpunct_cache<_CharT> __cache_type;
 __use_cache<__cache_type> __uc;
 const locale& __loc = __io._M_getloc();
 const __cache_type* __lc = __uc(__loc);
 const _CharT* __lit = __lc->_M_atoms_out;
 const ios_base::fmtflags __flags = __io.flags();
#pragma empty_line
#pragma empty_line
 const int __ilen = 5 * sizeof(_ValueT);
 _CharT* __cs = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
            * __ilen));
#pragma empty_line
#pragma empty_line
#pragma empty_line
 const ios_base::fmtflags __basefield = __flags & ios_base::basefield;
 const bool __dec = (__basefield != ios_base::oct
       && __basefield != ios_base::hex);
 const __unsigned_type __u = ((__v > 0 || !__dec)
         ? __unsigned_type(__v)
         : -__unsigned_type(__v));
  int __len = __int_to_char(__cs + __ilen, __u, __lit, __flags, __dec);
 __cs += __ilen - __len;
#pragma empty_line
#pragma empty_line
 if (__lc->_M_use_grouping)
   {
#pragma empty_line
#pragma empty_line
     _CharT* __cs2 = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
          * (__len + 1)
          * 2));
     _M_group_int(__lc->_M_grouping, __lc->_M_grouping_size,
    __lc->_M_thousands_sep, __io, __cs2 + 2, __cs, __len);
     __cs = __cs2 + 2;
   }
#pragma empty_line
#pragma empty_line
 if (__builtin_expect(__dec, true))
   {
#pragma empty_line
     if (__v >= 0)
       {
  if (bool(__flags & ios_base::showpos)
      && __gnu_cxx::__numeric_traits<_ValueT>::__is_signed)
    *--__cs = __lit[__num_base::_S_oplus], ++__len;
       }
     else
       *--__cs = __lit[__num_base::_S_ominus], ++__len;
   }
 else if (bool(__flags & ios_base::showbase) && __v)
   {
     if (__basefield == ios_base::oct)
       *--__cs = __lit[__num_base::_S_odigits], ++__len;
     else
       {
#pragma empty_line
  const bool __uppercase = __flags & ios_base::uppercase;
  *--__cs = __lit[__num_base::_S_ox + __uppercase];
#pragma empty_line
  *--__cs = __lit[__num_base::_S_odigits];
  __len += 2;
       }
   }
#pragma empty_line
#pragma empty_line
 const streamsize __w = __io.width();
 if (__w > static_cast<streamsize>(__len))
   {
     _CharT* __cs3 = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
          * __w));
     _M_pad(__fill, __w, __io, __cs3, __cs, __len);
     __cs = __cs3;
   }
 __io.width(0);
#pragma empty_line
#pragma empty_line
#pragma empty_line
 return std::__write(__s, __cs, __len);
      }
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    void
    num_put<_CharT, _OutIter>::
    _M_group_float(const char* __grouping, size_t __grouping_size,
     _CharT __sep, const _CharT* __p, _CharT* __new,
     _CharT* __cs, int& __len) const
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      const int __declen = __p ? __p - __cs : __len;
      _CharT* __p2 = std::__add_grouping(__new, __sep, __grouping,
      __grouping_size,
      __cs, __cs + __declen);
#pragma empty_line
#pragma empty_line
      int __newlen = __p2 - __new;
      if (__p)
 {
   char_traits<_CharT>::copy(__p2, __p, __len - __declen);
   __newlen += __len - __declen;
 }
      __len = __newlen;
    }
#pragma line 968 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
  template<typename _CharT, typename _OutIter>
    template<typename _ValueT>
      _OutIter
      num_put<_CharT, _OutIter>::
      _M_insert_float(_OutIter __s, ios_base& __io, _CharT __fill, char __mod,
         _ValueT __v) const
      {
 typedef __numpunct_cache<_CharT> __cache_type;
 __use_cache<__cache_type> __uc;
 const locale& __loc = __io._M_getloc();
 const __cache_type* __lc = __uc(__loc);
#pragma empty_line
#pragma empty_line
 const streamsize __prec = __io.precision() < 0 ? 6 : __io.precision();
#pragma empty_line
 const int __max_digits =
   __gnu_cxx::__numeric_traits<_ValueT>::__digits10;
#pragma empty_line
#pragma empty_line
 int __len;
#pragma empty_line
 char __fbuf[16];
 __num_base::_S_format_float(__io, __fbuf, __mod);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 int __cs_size = __max_digits * 3;
 char* __cs = static_cast<char*>(__builtin_alloca(__cs_size));
 __len = std::__convert_from_v(_S_get_c_locale(), __cs, __cs_size,
          __fbuf, __prec, __v);
#pragma empty_line
#pragma empty_line
 if (__len >= __cs_size)
   {
     __cs_size = __len + 1;
     __cs = static_cast<char*>(__builtin_alloca(__cs_size));
     __len = std::__convert_from_v(_S_get_c_locale(), __cs, __cs_size,
       __fbuf, __prec, __v);
   }
#pragma line 1029 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
 const ctype<_CharT>& __ctype = use_facet<ctype<_CharT> >(__loc);
#pragma empty_line
 _CharT* __ws = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
            * __len));
 __ctype.widen(__cs, __cs + __len, __ws);
#pragma empty_line
#pragma empty_line
 _CharT* __wp = 0;
 const char* __p = char_traits<char>::find(__cs, __len, '.');
 if (__p)
   {
     __wp = __ws + (__p - __cs);
     *__wp = __lc->_M_decimal_point;
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 if (__lc->_M_use_grouping
     && (__wp || __len < 3 || (__cs[1] <= '9' && __cs[2] <= '9'
          && __cs[1] >= '0' && __cs[2] >= '0')))
   {
#pragma empty_line
#pragma empty_line
     _CharT* __ws2 = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
          * __len * 2));
#pragma empty_line
     streamsize __off = 0;
     if (__cs[0] == '-' || __cs[0] == '+')
       {
  __off = 1;
  __ws2[0] = __ws[0];
  __len -= 1;
       }
#pragma empty_line
     _M_group_float(__lc->_M_grouping, __lc->_M_grouping_size,
      __lc->_M_thousands_sep, __wp, __ws2 + __off,
      __ws + __off, __len);
     __len += __off;
#pragma empty_line
     __ws = __ws2;
   }
#pragma empty_line
#pragma empty_line
 const streamsize __w = __io.width();
 if (__w > static_cast<streamsize>(__len))
   {
     _CharT* __ws3 = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
          * __w));
     _M_pad(__fill, __w, __io, __ws3, __ws, __len);
     __ws = __ws3;
   }
 __io.width(0);
#pragma empty_line
#pragma empty_line
#pragma empty_line
 return std::__write(__s, __ws, __len);
      }
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    _OutIter
    num_put<_CharT, _OutIter>::
    do_put(iter_type __s, ios_base& __io, char_type __fill, bool __v) const
    {
      const ios_base::fmtflags __flags = __io.flags();
      if ((__flags & ios_base::boolalpha) == 0)
        {
          const long __l = __v;
          __s = _M_insert_int(__s, __io, __fill, __l);
        }
      else
        {
   typedef __numpunct_cache<_CharT> __cache_type;
   __use_cache<__cache_type> __uc;
   const locale& __loc = __io._M_getloc();
   const __cache_type* __lc = __uc(__loc);
#pragma empty_line
   const _CharT* __name = __v ? __lc->_M_truename
                              : __lc->_M_falsename;
   int __len = __v ? __lc->_M_truename_size
                   : __lc->_M_falsename_size;
#pragma empty_line
   const streamsize __w = __io.width();
   if (__w > static_cast<streamsize>(__len))
     {
       const streamsize __plen = __w - __len;
       _CharT* __ps
  = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
       * __plen));
#pragma empty_line
       char_traits<_CharT>::assign(__ps, __plen, __fill);
       __io.width(0);
#pragma empty_line
       if ((__flags & ios_base::adjustfield) == ios_base::left)
  {
    __s = std::__write(__s, __name, __len);
    __s = std::__write(__s, __ps, __plen);
  }
       else
  {
    __s = std::__write(__s, __ps, __plen);
    __s = std::__write(__s, __name, __len);
  }
       return __s;
     }
   __io.width(0);
   __s = std::__write(__s, __name, __len);
 }
      return __s;
    }
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    _OutIter
    num_put<_CharT, _OutIter>::
    do_put(iter_type __s, ios_base& __io, char_type __fill, double __v) const
    { return _M_insert_float(__s, __io, __fill, char(), __v); }
#pragma line 1154 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
  template<typename _CharT, typename _OutIter>
    _OutIter
    num_put<_CharT, _OutIter>::
    do_put(iter_type __s, ios_base& __io, char_type __fill,
    long double __v) const
    { return _M_insert_float(__s, __io, __fill, 'L', __v); }
#pragma empty_line
  template<typename _CharT, typename _OutIter>
    _OutIter
    num_put<_CharT, _OutIter>::
    do_put(iter_type __s, ios_base& __io, char_type __fill,
           const void* __v) const
    {
      const ios_base::fmtflags __flags = __io.flags();
      const ios_base::fmtflags __fmt = ~(ios_base::basefield
      | ios_base::uppercase);
      __io.flags((__flags & __fmt) | (ios_base::hex | ios_base::showbase));
#pragma empty_line
      typedef __gnu_cxx::__conditional_type<(sizeof(const void*)
          <= sizeof(unsigned long)),
 unsigned long, unsigned long long>::__type _UIntPtrType;
#pragma empty_line
      __s = _M_insert_int(__s, __io, __fill,
     reinterpret_cast<_UIntPtrType>(__v));
      __io.flags(__flags);
      return __s;
    }
#pragma empty_line
#pragma empty_line
#pragma line 1191 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.tcc" 3
  template<typename _CharT, typename _Traits>
    void
    __pad<_CharT, _Traits>::_S_pad(ios_base& __io, _CharT __fill,
       _CharT* __news, const _CharT* __olds,
       streamsize __newlen, streamsize __oldlen)
    {
      const size_t __plen = static_cast<size_t>(__newlen - __oldlen);
      const ios_base::fmtflags __adjust = __io.flags() & ios_base::adjustfield;
#pragma empty_line
#pragma empty_line
      if (__adjust == ios_base::left)
 {
   _Traits::copy(__news, __olds, __oldlen);
   _Traits::assign(__news + __oldlen, __plen, __fill);
   return;
 }
#pragma empty_line
      size_t __mod = 0;
      if (__adjust == ios_base::internal)
 {
#pragma empty_line
#pragma empty_line
#pragma empty_line
          const locale& __loc = __io._M_getloc();
   const ctype<_CharT>& __ctype = use_facet<ctype<_CharT> >(__loc);
#pragma empty_line
   if (__ctype.widen('-') == __olds[0]
       || __ctype.widen('+') == __olds[0])
     {
       __news[0] = __olds[0];
       __mod = 1;
       ++__news;
     }
   else if (__ctype.widen('0') == __olds[0]
     && __oldlen > 1
     && (__ctype.widen('x') == __olds[1]
         || __ctype.widen('X') == __olds[1]))
     {
       __news[0] = __olds[0];
       __news[1] = __olds[1];
       __mod = 2;
       __news += 2;
     }
#pragma empty_line
 }
      _Traits::assign(__news, __plen, __fill);
      _Traits::copy(__news + __plen, __olds + __mod, __oldlen - __mod);
    }
#pragma empty_line
  template<typename _CharT>
    _CharT*
    __add_grouping(_CharT* __s, _CharT __sep,
     const char* __gbeg, size_t __gsize,
     const _CharT* __first, const _CharT* __last)
    {
      size_t __idx = 0;
      size_t __ctr = 0;
#pragma empty_line
      while (__last - __first > __gbeg[__idx]
      && static_cast<signed char>(__gbeg[__idx]) > 0
      && __gbeg[__idx] != __gnu_cxx::__numeric_traits<char>::__max)
 {
   __last -= __gbeg[__idx];
   __idx < __gsize - 1 ? ++__idx : ++__ctr;
 }
#pragma empty_line
      while (__first != __last)
 *__s++ = *__first++;
#pragma empty_line
      while (__ctr--)
 {
   *__s++ = __sep;
   for (char __i = __gbeg[__idx]; __i > 0; --__i)
     *__s++ = *__first++;
 }
#pragma empty_line
      while (__idx--)
 {
   *__s++ = __sep;
   for (char __i = __gbeg[__idx]; __i > 0; --__i)
     *__s++ = *__first++;
 }
#pragma empty_line
      return __s;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class numpunct<char>;
  extern template class numpunct_byname<char>;
  extern template class num_get<char>;
  extern template class num_put<char>;
  extern template class ctype_byname<char>;
#pragma empty_line
  extern template
    const ctype<char>&
    use_facet<ctype<char> >(const locale&);
#pragma empty_line
  extern template
    const numpunct<char>&
    use_facet<numpunct<char> >(const locale&);
#pragma empty_line
  extern template
    const num_put<char>&
    use_facet<num_put<char> >(const locale&);
#pragma empty_line
  extern template
    const num_get<char>&
    use_facet<num_get<char> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<ctype<char> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<numpunct<char> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<num_put<char> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<num_get<char> >(const locale&);
#pragma empty_line
#pragma empty_line
  extern template class numpunct<wchar_t>;
  extern template class numpunct_byname<wchar_t>;
  extern template class num_get<wchar_t>;
  extern template class num_put<wchar_t>;
  extern template class ctype_byname<wchar_t>;
#pragma empty_line
  extern template
    const ctype<wchar_t>&
    use_facet<ctype<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    const numpunct<wchar_t>&
    use_facet<numpunct<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    const num_put<wchar_t>&
    use_facet<num_put<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    const num_get<wchar_t>&
    use_facet<num_get<wchar_t> >(const locale&);
#pragma empty_line
 extern template
    bool
    has_facet<ctype<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<numpunct<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<num_put<wchar_t> >(const locale&);
#pragma empty_line
  extern template
    bool
    has_facet<num_get<wchar_t> >(const locale&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 2609 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/locale_facets.h" 2 3
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 2 3
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Facet>
    inline const _Facet&
    __check_facet(const _Facet* __f)
    {
      if (!__f)
 __throw_bad_cast();
      return *__f;
    }
#pragma line 63 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
  template<typename _CharT, typename _Traits>
    class basic_ios : public ios_base
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef typename _Traits::int_type int_type;
      typedef typename _Traits::pos_type pos_type;
      typedef typename _Traits::off_type off_type;
      typedef _Traits traits_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef ctype<_CharT> __ctype_type;
      typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
           __num_put_type;
      typedef num_get<_CharT, istreambuf_iterator<_CharT, _Traits> >
           __num_get_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    protected:
      basic_ostream<_CharT, _Traits>* _M_tie;
      mutable char_type _M_fill;
      mutable bool _M_fill_init;
      basic_streambuf<_CharT, _Traits>* _M_streambuf;
#pragma empty_line
#pragma empty_line
      const __ctype_type* _M_ctype;
#pragma empty_line
      const __num_put_type* _M_num_put;
#pragma empty_line
      const __num_get_type* _M_num_get;
#pragma empty_line
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      operator void*() const
      { return this->fail() ? 0 : const_cast<basic_ios*>(this); }
#pragma empty_line
      bool
      operator!() const
      { return this->fail(); }
#pragma line 128 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      iostate
      rdstate() const
      { return _M_streambuf_state; }
#pragma line 139 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      void
      clear(iostate __state = goodbit);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      setstate(iostate __state)
      { this->clear(this->rdstate() | __state); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      _M_setstate(iostate __state)
      {
#pragma empty_line
#pragma empty_line
 _M_streambuf_state |= __state;
 if (this->exceptions() & __state)
   throw;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      bool
      good() const
      { return this->rdstate() == 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      bool
      eof() const
      { return (this->rdstate() & eofbit) != 0; }
#pragma line 192 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      bool
      fail() const
      { return (this->rdstate() & (badbit | failbit)) != 0; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      bool
      bad() const
      { return (this->rdstate() & badbit) != 0; }
#pragma line 213 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      iostate
      exceptions() const
      { return _M_exception; }
#pragma line 248 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      void
      exceptions(iostate __except)
      {
        _M_exception = __except;
        this->clear(_M_streambuf_state);
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      explicit
      basic_ios(basic_streambuf<_CharT, _Traits>* __sb)
      : ios_base(), _M_tie(0), _M_fill(), _M_fill_init(false), _M_streambuf(0),
 _M_ctype(0), _M_num_put(0), _M_num_get(0)
      { this->init(__sb); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~basic_ios() { }
#pragma line 286 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      basic_ostream<_CharT, _Traits>*
      tie() const
      { return _M_tie; }
#pragma line 298 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      basic_ostream<_CharT, _Traits>*
      tie(basic_ostream<_CharT, _Traits>* __tiestr)
      {
        basic_ostream<_CharT, _Traits>* __old = _M_tie;
        _M_tie = __tiestr;
        return __old;
      }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_streambuf<_CharT, _Traits>*
      rdbuf() const
      { return _M_streambuf; }
#pragma line 338 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      basic_streambuf<_CharT, _Traits>*
      rdbuf(basic_streambuf<_CharT, _Traits>* __sb);
#pragma line 352 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      basic_ios&
      copyfmt(const basic_ios& __rhs);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      char_type
      fill() const
      {
 if (!_M_fill_init)
   {
     _M_fill = this->widen(' ');
     _M_fill_init = true;
   }
 return _M_fill;
      }
#pragma line 381 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      char_type
      fill(char_type __ch)
      {
 char_type __old = this->fill();
 _M_fill = __ch;
 return __old;
      }
#pragma line 401 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      locale
      imbue(const locale& __loc);
#pragma line 421 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      char
      narrow(char_type __c, char __dfault) const
      { return __check_facet(_M_ctype).narrow(__c, __dfault); }
#pragma line 440 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 3
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
#pragma empty_line
    protected:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      basic_ios()
      : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false),
 _M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
      { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      void
      init(basic_streambuf<_CharT, _Traits>* __sb);
#pragma empty_line
      void
      _M_cache_locale(const locale& __loc);
    };
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.tcc" 1 3
#pragma line 34 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.tcc" 3
#pragma empty_line
#pragma line 35 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.tcc" 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    void
    basic_ios<_CharT, _Traits>::clear(iostate __state)
    {
      if (this->rdbuf())
 _M_streambuf_state = __state;
      else
   _M_streambuf_state = __state | badbit;
      if (this->exceptions() & this->rdstate())
 __throw_ios_failure(("basic_ios::clear"));
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_streambuf<_CharT, _Traits>*
    basic_ios<_CharT, _Traits>::rdbuf(basic_streambuf<_CharT, _Traits>* __sb)
    {
      basic_streambuf<_CharT, _Traits>* __old = _M_streambuf;
      _M_streambuf = __sb;
      this->clear();
      return __old;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ios<_CharT, _Traits>&
    basic_ios<_CharT, _Traits>::copyfmt(const basic_ios& __rhs)
    {
#pragma empty_line
#pragma empty_line
      if (this != &__rhs)
 {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
   _Words* __words = (__rhs._M_word_size <= _S_local_word_size) ?
                      _M_local_word : new _Words[__rhs._M_word_size];
#pragma empty_line
#pragma empty_line
   _Callback_list* __cb = __rhs._M_callbacks;
   if (__cb)
     __cb->_M_add_reference();
   _M_call_callbacks(erase_event);
   if (_M_word != _M_local_word)
     {
       delete [] _M_word;
       _M_word = 0;
     }
   _M_dispose_callbacks();
#pragma empty_line
#pragma empty_line
   _M_callbacks = __cb;
   for (int __i = 0; __i < __rhs._M_word_size; ++__i)
     __words[__i] = __rhs._M_word[__i];
   _M_word = __words;
   _M_word_size = __rhs._M_word_size;
#pragma empty_line
   this->flags(__rhs.flags());
   this->width(__rhs.width());
   this->precision(__rhs.precision());
   this->tie(__rhs.tie());
   this->fill(__rhs.fill());
   _M_ios_locale = __rhs.getloc();
   _M_cache_locale(_M_ios_locale);
#pragma empty_line
   _M_call_callbacks(copyfmt_event);
#pragma empty_line
#pragma empty_line
   this->exceptions(__rhs.exceptions());
 }
      return *this;
    }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    locale
    basic_ios<_CharT, _Traits>::imbue(const locale& __loc)
    {
      locale __old(this->getloc());
      ios_base::imbue(__loc);
      _M_cache_locale(__loc);
      if (this->rdbuf() != 0)
 this->rdbuf()->pubimbue(__loc);
      return __old;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    void
    basic_ios<_CharT, _Traits>::init(basic_streambuf<_CharT, _Traits>* __sb)
    {
#pragma empty_line
      ios_base::_M_init();
#pragma empty_line
#pragma empty_line
      _M_cache_locale(_M_ios_locale);
#pragma line 147 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.tcc" 3
      _M_fill = _CharT();
      _M_fill_init = false;
#pragma empty_line
      _M_tie = 0;
      _M_exception = goodbit;
      _M_streambuf = __sb;
      _M_streambuf_state = __sb ? goodbit : badbit;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    void
    basic_ios<_CharT, _Traits>::_M_cache_locale(const locale& __loc)
    {
      if (__builtin_expect(has_facet<__ctype_type>(__loc), true))
 _M_ctype = &use_facet<__ctype_type>(__loc);
      else
 _M_ctype = 0;
#pragma empty_line
      if (__builtin_expect(has_facet<__num_put_type>(__loc), true))
 _M_num_put = &use_facet<__num_put_type>(__loc);
      else
 _M_num_put = 0;
#pragma empty_line
      if (__builtin_expect(has_facet<__num_get_type>(__loc), true))
 _M_num_get = &use_facet<__num_get_type>(__loc);
      else
 _M_num_get = 0;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class basic_ios<char>;
#pragma empty_line
#pragma empty_line
  extern template class basic_ios<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 474 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_ios.h" 2 3
#pragma line 46 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ios" 2 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 2 3
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 56 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
  template<typename _CharT, typename _Traits>
    class basic_ostream : virtual public basic_ios<_CharT, _Traits>
    {
    public:
#pragma empty_line
      typedef _CharT char_type;
      typedef typename _Traits::int_type int_type;
      typedef typename _Traits::pos_type pos_type;
      typedef typename _Traits::off_type off_type;
      typedef _Traits traits_type;
#pragma empty_line
#pragma empty_line
      typedef basic_streambuf<_CharT, _Traits> __streambuf_type;
      typedef basic_ios<_CharT, _Traits> __ios_type;
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
             __num_put_type;
      typedef ctype<_CharT> __ctype_type;
#pragma line 83 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      explicit
      basic_ostream(__streambuf_type* __sb)
      { this->init(__sb); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~basic_ostream() { }
#pragma empty_line
#pragma empty_line
      class sentry;
      friend class sentry;
#pragma line 109 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      operator<<(__ostream_type& (*__pf)(__ostream_type&))
      {
#pragma empty_line
#pragma empty_line
#pragma empty_line
 return __pf(*this);
      }
#pragma empty_line
      __ostream_type&
      operator<<(__ios_type& (*__pf)(__ios_type&))
      {
#pragma empty_line
#pragma empty_line
#pragma empty_line
 __pf(*this);
 return *this;
      }
#pragma empty_line
      __ostream_type&
      operator<<(ios_base& (*__pf) (ios_base&))
      {
#pragma empty_line
#pragma empty_line
#pragma empty_line
 __pf(*this);
 return *this;
      }
#pragma line 166 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      operator<<(long __n)
      { return _M_insert(__n); }
#pragma empty_line
      __ostream_type&
      operator<<(unsigned long __n)
      { return _M_insert(__n); }
#pragma empty_line
      __ostream_type&
      operator<<(bool __n)
      { return _M_insert(__n); }
#pragma empty_line
      __ostream_type&
      operator<<(short __n);
#pragma empty_line
      __ostream_type&
      operator<<(unsigned short __n)
      {
#pragma empty_line
#pragma empty_line
 return _M_insert(static_cast<unsigned long>(__n));
      }
#pragma empty_line
      __ostream_type&
      operator<<(int __n);
#pragma empty_line
      __ostream_type&
      operator<<(unsigned int __n)
      {
#pragma empty_line
#pragma empty_line
 return _M_insert(static_cast<unsigned long>(__n));
      }
#pragma empty_line
#pragma empty_line
      __ostream_type&
      operator<<(long long __n)
      { return _M_insert(__n); }
#pragma empty_line
      __ostream_type&
      operator<<(unsigned long long __n)
      { return _M_insert(__n); }
#pragma empty_line
#pragma empty_line
      __ostream_type&
      operator<<(double __f)
      { return _M_insert(__f); }
#pragma empty_line
      __ostream_type&
      operator<<(float __f)
      {
#pragma empty_line
#pragma empty_line
 return _M_insert(static_cast<double>(__f));
      }
#pragma empty_line
      __ostream_type&
      operator<<(long double __f)
      { return _M_insert(__f); }
#pragma empty_line
      __ostream_type&
      operator<<(const void* __p)
      { return _M_insert(__p); }
#pragma line 251 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      operator<<(__streambuf_type* __sb);
#pragma line 284 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      put(char_type __c);
#pragma empty_line
#pragma empty_line
      void
      _M_write(const char_type* __s, streamsize __n)
      {
 const streamsize __put = this->rdbuf()->sputn(__s, __n);
 if (__put != __n)
   this->setstate(ios_base::badbit);
      }
#pragma line 312 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      write(const char_type* __s, streamsize __n);
#pragma line 325 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      flush();
#pragma line 336 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      pos_type
      tellp();
#pragma line 347 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      __ostream_type&
      seekp(pos_type);
#pragma line 359 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
       __ostream_type&
      seekp(off_type, ios_base::seekdir);
#pragma empty_line
    protected:
      basic_ostream()
      { this->init(0); }
#pragma empty_line
      template<typename _ValueT>
        __ostream_type&
        _M_insert(_ValueT __v);
    };
#pragma line 378 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
  template <typename _CharT, typename _Traits>
    class basic_ostream<_CharT, _Traits>::sentry
    {
#pragma empty_line
      bool _M_ok;
      basic_ostream<_CharT, _Traits>& _M_os;
#pragma empty_line
    public:
#pragma line 397 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      explicit
      sentry(basic_ostream<_CharT, _Traits>& __os);
#pragma line 407 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      ~sentry()
      {
#pragma empty_line
 if (bool(_M_os.flags() & ios_base::unitbuf) && !uncaught_exception())
   {
#pragma empty_line
     if (_M_os.rdbuf() && _M_os.rdbuf()->pubsync() == -1)
       _M_os.setstate(ios_base::badbit);
   }
      }
#pragma line 428 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
      operator bool() const
      { return _M_ok; }
    };
#pragma line 449 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __out, _CharT __c)
    { return __ostream_insert(__out, &__c, 1); }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __out, char __c)
    { return (__out << __out.widen(__c)); }
#pragma empty_line
#pragma empty_line
  template <class _Traits>
    inline basic_ostream<char, _Traits>&
    operator<<(basic_ostream<char, _Traits>& __out, char __c)
    { return __ostream_insert(__out, &__c, 1); }
#pragma empty_line
#pragma empty_line
  template<class _Traits>
    inline basic_ostream<char, _Traits>&
    operator<<(basic_ostream<char, _Traits>& __out, signed char __c)
    { return (__out << static_cast<char>(__c)); }
#pragma empty_line
  template<class _Traits>
    inline basic_ostream<char, _Traits>&
    operator<<(basic_ostream<char, _Traits>& __out, unsigned char __c)
    { return (__out << static_cast<char>(__c)); }
#pragma line 491 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __out, const _CharT* __s)
    {
      if (!__s)
 __out.setstate(ios_base::badbit);
      else
 __ostream_insert(__out, __s,
    static_cast<streamsize>(_Traits::length(__s)));
      return __out;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits> &
    operator<<(basic_ostream<_CharT, _Traits>& __out, const char* __s);
#pragma empty_line
#pragma empty_line
  template<class _Traits>
    inline basic_ostream<char, _Traits>&
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
 __out.setstate(ios_base::badbit);
      else
 __ostream_insert(__out, __s,
    static_cast<streamsize>(_Traits::length(__s)));
      return __out;
    }
#pragma empty_line
#pragma empty_line
  template<class _Traits>
    inline basic_ostream<char, _Traits>&
    operator<<(basic_ostream<char, _Traits>& __out, const signed char* __s)
    { return (__out << reinterpret_cast<const char*>(__s)); }
#pragma empty_line
  template<class _Traits>
    inline basic_ostream<char, _Traits> &
    operator<<(basic_ostream<char, _Traits>& __out, const unsigned char* __s)
    { return (__out << reinterpret_cast<const char*>(__s)); }
#pragma line 541 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    ends(basic_ostream<_CharT, _Traits>& __os)
    { return __os.put(_CharT()); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
#pragma line 585 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 3
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream.tcc" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream.tcc" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream.tcc" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>::sentry::
    sentry(basic_ostream<_CharT, _Traits>& __os)
    : _M_ok(false), _M_os(__os)
    {
#pragma empty_line
      if (__os.tie() && __os.good())
 __os.tie()->flush();
#pragma empty_line
      if (__os.good())
 _M_ok = true;
      else
 __os.setstate(ios_base::failbit);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    template<typename _ValueT>
      basic_ostream<_CharT, _Traits>&
      basic_ostream<_CharT, _Traits>::
      _M_insert(_ValueT __v)
      {
 sentry __cerb(*this);
 if (__cerb)
   {
     ios_base::iostate __err = ios_base::goodbit;
     try
       {
  const __num_put_type& __np = __check_facet(this->_M_num_put);
  if (__np.put(*this, *this, this->fill(), __v).failed())
    __err |= ios_base::badbit;
       }
     catch(__cxxabiv1::__forced_unwind&)
       {
  this->_M_setstate(ios_base::badbit);
  throw;
       }
     catch(...)
       { this->_M_setstate(ios_base::badbit); }
     if (__err)
       this->setstate(__err);
   }
 return *this;
      }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    operator<<(short __n)
    {
#pragma empty_line
#pragma empty_line
      const ios_base::fmtflags __fmt = this->flags() & ios_base::basefield;
      if (__fmt == ios_base::oct || __fmt == ios_base::hex)
 return _M_insert(static_cast<long>(static_cast<unsigned short>(__n)));
      else
 return _M_insert(static_cast<long>(__n));
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    operator<<(int __n)
    {
#pragma empty_line
#pragma empty_line
      const ios_base::fmtflags __fmt = this->flags() & ios_base::basefield;
      if (__fmt == ios_base::oct || __fmt == ios_base::hex)
 return _M_insert(static_cast<long>(static_cast<unsigned int>(__n)));
      else
 return _M_insert(static_cast<long>(__n));
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    operator<<(__streambuf_type* __sbin)
    {
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this);
      if (__cerb && __sbin)
 {
   try
     {
       if (!__copy_streambufs(__sbin, this->rdbuf()))
  __err |= ios_base::failbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::failbit); }
 }
      else if (!__sbin)
 __err |= ios_base::badbit;
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    put(char_type __c)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      sentry __cerb(*this);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       const int_type __put = this->rdbuf()->sputc(__c);
       if (traits_type::eq_int_type(__put, traits_type::eof()))
  __err |= ios_base::badbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    write(const _CharT* __s, streamsize __n)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      sentry __cerb(*this);
      if (__cerb)
 {
   try
     { _M_write(__s, __n); }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    flush()
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      ios_base::iostate __err = ios_base::goodbit;
      try
 {
   if (this->rdbuf() && this->rdbuf()->pubsync() == -1)
     __err |= ios_base::badbit;
 }
      catch(__cxxabiv1::__forced_unwind&)
 {
   this->_M_setstate(ios_base::badbit);
   throw;
 }
      catch(...)
 { this->_M_setstate(ios_base::badbit); }
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    typename basic_ostream<_CharT, _Traits>::pos_type
    basic_ostream<_CharT, _Traits>::
    tellp()
    {
      pos_type __ret = pos_type(-1);
      try
 {
   if (!this->fail())
     __ret = this->rdbuf()->pubseekoff(0, ios_base::cur, ios_base::out);
 }
      catch(__cxxabiv1::__forced_unwind&)
 {
   this->_M_setstate(ios_base::badbit);
   throw;
 }
      catch(...)
 { this->_M_setstate(ios_base::badbit); }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    seekp(pos_type __pos)
    {
      ios_base::iostate __err = ios_base::goodbit;
      try
 {
   if (!this->fail())
     {
#pragma empty_line
#pragma empty_line
       const pos_type __p = this->rdbuf()->pubseekpos(__pos,
            ios_base::out);
#pragma empty_line
#pragma empty_line
       if (__p == pos_type(off_type(-1)))
  __err |= ios_base::failbit;
     }
 }
      catch(__cxxabiv1::__forced_unwind&)
 {
   this->_M_setstate(ios_base::badbit);
   throw;
 }
      catch(...)
 { this->_M_setstate(ios_base::badbit); }
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    basic_ostream<_CharT, _Traits>::
    seekp(off_type __off, ios_base::seekdir __dir)
    {
      ios_base::iostate __err = ios_base::goodbit;
      try
 {
   if (!this->fail())
     {
#pragma empty_line
#pragma empty_line
       const pos_type __p = this->rdbuf()->pubseekoff(__off, __dir,
            ios_base::out);
#pragma empty_line
#pragma empty_line
       if (__p == pos_type(off_type(-1)))
  __err |= ios_base::failbit;
     }
 }
      catch(__cxxabiv1::__forced_unwind&)
 {
   this->_M_setstate(ios_base::badbit);
   throw;
 }
      catch(...)
 { this->_M_setstate(ios_base::badbit); }
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __out, const char* __s)
    {
      if (!__s)
 __out.setstate(ios_base::badbit);
      else
 {
#pragma empty_line
#pragma empty_line
   const size_t __clen = char_traits<char>::length(__s);
   try
     {
       struct __ptr_guard
       {
  _CharT *__p;
  __ptr_guard (_CharT *__ip): __p(__ip) { }
  ~__ptr_guard() { delete[] __p; }
  _CharT* __get() { return __p; }
       } __pg (new _CharT[__clen]);
#pragma empty_line
       _CharT *__ws = __pg.__get();
       for (size_t __i = 0; __i < __clen; ++__i)
  __ws[__i] = __out.widen(__s[__i]);
       __ostream_insert(__out, __ws, __clen);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __out._M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { __out._M_setstate(ios_base::badbit); }
 }
      return __out;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class basic_ostream<char>;
  extern template ostream& endl(ostream&);
  extern template ostream& ends(ostream&);
  extern template ostream& flush(ostream&);
  extern template ostream& operator<<(ostream&, char);
  extern template ostream& operator<<(ostream&, unsigned char);
  extern template ostream& operator<<(ostream&, signed char);
  extern template ostream& operator<<(ostream&, const char*);
  extern template ostream& operator<<(ostream&, const unsigned char*);
  extern template ostream& operator<<(ostream&, const signed char*);
#pragma empty_line
  extern template ostream& ostream::_M_insert(long);
  extern template ostream& ostream::_M_insert(unsigned long);
  extern template ostream& ostream::_M_insert(bool);
#pragma empty_line
  extern template ostream& ostream::_M_insert(long long);
  extern template ostream& ostream::_M_insert(unsigned long long);
#pragma empty_line
  extern template ostream& ostream::_M_insert(double);
  extern template ostream& ostream::_M_insert(long double);
  extern template ostream& ostream::_M_insert(const void*);
#pragma empty_line
#pragma empty_line
  extern template class basic_ostream<wchar_t>;
  extern template wostream& endl(wostream&);
  extern template wostream& ends(wostream&);
  extern template wostream& flush(wostream&);
  extern template wostream& operator<<(wostream&, wchar_t);
  extern template wostream& operator<<(wostream&, char);
  extern template wostream& operator<<(wostream&, const wchar_t*);
  extern template wostream& operator<<(wostream&, const char*);
#pragma empty_line
  extern template wostream& wostream::_M_insert(long);
  extern template wostream& wostream::_M_insert(unsigned long);
  extern template wostream& wostream::_M_insert(bool);
#pragma empty_line
  extern template wostream& wostream::_M_insert(long long);
  extern template wostream& wostream::_M_insert(unsigned long long);
#pragma empty_line
  extern template wostream& wostream::_M_insert(double);
  extern template wostream& wostream::_M_insert(long double);
  extern template wostream& wostream::_M_insert(const void*);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 589 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ostream" 2 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 2 3
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 1 3
#pragma line 38 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
#pragma empty_line
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 56 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    class basic_istream : virtual public basic_ios<_CharT, _Traits>
    {
    public:
#pragma empty_line
      typedef _CharT char_type;
      typedef typename _Traits::int_type int_type;
      typedef typename _Traits::pos_type pos_type;
      typedef typename _Traits::off_type off_type;
      typedef _Traits traits_type;
#pragma empty_line
#pragma empty_line
      typedef basic_streambuf<_CharT, _Traits> __streambuf_type;
      typedef basic_ios<_CharT, _Traits> __ios_type;
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef num_get<_CharT, istreambuf_iterator<_CharT, _Traits> >
        __num_get_type;
      typedef ctype<_CharT> __ctype_type;
#pragma empty_line
    protected:
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      streamsize _M_gcount;
#pragma empty_line
    public:
#pragma line 92 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      explicit
      basic_istream(__streambuf_type* __sb)
      : _M_gcount(streamsize(0))
      { this->init(__sb); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~basic_istream()
      { _M_gcount = streamsize(0); }
#pragma empty_line
#pragma empty_line
      class sentry;
      friend class sentry;
#pragma line 121 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      operator>>(__istream_type& (*__pf)(__istream_type&))
      { return __pf(*this); }
#pragma empty_line
      __istream_type&
      operator>>(__ios_type& (*__pf)(__ios_type&))
      {
 __pf(*this);
 return *this;
      }
#pragma empty_line
      __istream_type&
      operator>>(ios_base& (*__pf)(ios_base&))
      {
 __pf(*this);
 return *this;
      }
#pragma line 168 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      operator>>(bool& __n)
      { return _M_extract(__n); }
#pragma empty_line
      __istream_type&
      operator>>(short& __n);
#pragma empty_line
      __istream_type&
      operator>>(unsigned short& __n)
      { return _M_extract(__n); }
#pragma empty_line
      __istream_type&
      operator>>(int& __n);
#pragma empty_line
      __istream_type&
      operator>>(unsigned int& __n)
      { return _M_extract(__n); }
#pragma empty_line
      __istream_type&
      operator>>(long& __n)
      { return _M_extract(__n); }
#pragma empty_line
      __istream_type&
      operator>>(unsigned long& __n)
      { return _M_extract(__n); }
#pragma empty_line
#pragma empty_line
      __istream_type&
      operator>>(long long& __n)
      { return _M_extract(__n); }
#pragma empty_line
      __istream_type&
      operator>>(unsigned long long& __n)
      { return _M_extract(__n); }
#pragma empty_line
#pragma empty_line
      __istream_type&
      operator>>(float& __f)
      { return _M_extract(__f); }
#pragma empty_line
      __istream_type&
      operator>>(double& __f)
      { return _M_extract(__f); }
#pragma empty_line
      __istream_type&
      operator>>(long double& __f)
      { return _M_extract(__f); }
#pragma empty_line
      __istream_type&
      operator>>(void*& __p)
      { return _M_extract(__p); }
#pragma line 240 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      operator>>(__streambuf_type* __sb);
#pragma line 250 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      streamsize
      gcount() const
      { return _M_gcount; }
#pragma line 282 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      int_type
      get();
#pragma line 296 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      get(char_type& __c);
#pragma line 323 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      get(char_type* __s, streamsize __n, char_type __delim);
#pragma line 334 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      get(char_type* __s, streamsize __n)
      { return this->get(__s, __n, this->widen('\n')); }
#pragma line 357 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      get(__streambuf_type& __sb, char_type __delim);
#pragma line 367 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      get(__streambuf_type& __sb)
      { return this->get(__sb, this->widen('\n')); }
#pragma line 396 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      getline(char_type* __s, streamsize __n, char_type __delim);
#pragma line 407 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      getline(char_type* __s, streamsize __n)
      { return this->getline(__s, __n, this->widen('\n')); }
#pragma line 431 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      ignore();
#pragma empty_line
      __istream_type&
      ignore(streamsize __n);
#pragma empty_line
      __istream_type&
      ignore(streamsize __n, int_type __delim);
#pragma line 448 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      int_type
      peek();
#pragma line 466 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      read(char_type* __s, streamsize __n);
#pragma line 485 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      streamsize
      readsome(char_type* __s, streamsize __n);
#pragma line 502 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      putback(char_type __c);
#pragma line 518 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      unget();
#pragma line 536 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      int
      sync();
#pragma line 551 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      pos_type
      tellg();
#pragma line 566 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      seekg(pos_type);
#pragma line 582 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      __istream_type&
      seekg(off_type, ios_base::seekdir);
#pragma empty_line
#pragma empty_line
    protected:
      basic_istream()
      : _M_gcount(streamsize(0))
      { this->init(0); }
#pragma empty_line
      template<typename _ValueT>
        __istream_type&
        _M_extract(_ValueT& __v);
    };
#pragma empty_line
#pragma empty_line
  template<>
    basic_istream<char>&
    basic_istream<char>::
    getline(char_type* __s, streamsize __n, char_type __delim);
#pragma empty_line
  template<>
    basic_istream<char>&
    basic_istream<char>::
    ignore(streamsize __n);
#pragma empty_line
  template<>
    basic_istream<char>&
    basic_istream<char>::
    ignore(streamsize __n, int_type __delim);
#pragma empty_line
#pragma empty_line
  template<>
    basic_istream<wchar_t>&
    basic_istream<wchar_t>::
    getline(char_type* __s, streamsize __n, char_type __delim);
#pragma empty_line
  template<>
    basic_istream<wchar_t>&
    basic_istream<wchar_t>::
    ignore(streamsize __n);
#pragma empty_line
  template<>
    basic_istream<wchar_t>&
    basic_istream<wchar_t>::
    ignore(streamsize __n, int_type __delim);
#pragma line 637 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    class basic_istream<_CharT, _Traits>::sentry
    {
#pragma empty_line
      bool _M_ok;
#pragma empty_line
    public:
#pragma empty_line
      typedef _Traits traits_type;
      typedef basic_streambuf<_CharT, _Traits> __streambuf_type;
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef typename __istream_type::__ctype_type __ctype_type;
      typedef typename _Traits::int_type __int_type;
#pragma line 673 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      explicit
      sentry(basic_istream<_CharT, _Traits>& __is, bool __noskipws = false);
#pragma line 686 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
      operator bool() const
      { return _M_ok; }
    };
#pragma line 703 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in, _CharT& __c);
#pragma empty_line
  template<class _Traits>
    inline basic_istream<char, _Traits>&
    operator>>(basic_istream<char, _Traits>& __in, unsigned char& __c)
    { return (__in >> reinterpret_cast<char&>(__c)); }
#pragma empty_line
  template<class _Traits>
    inline basic_istream<char, _Traits>&
    operator>>(basic_istream<char, _Traits>& __in, signed char& __c)
    { return (__in >> reinterpret_cast<char&>(__c)); }
#pragma line 745 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in, _CharT* __s);
#pragma empty_line
#pragma empty_line
  template<>
    basic_istream<char>&
    operator>>(basic_istream<char>& __in, char* __s);
#pragma empty_line
  template<class _Traits>
    inline basic_istream<char, _Traits>&
    operator>>(basic_istream<char, _Traits>& __in, unsigned char* __s)
    { return (__in >> reinterpret_cast<char*>(__s)); }
#pragma empty_line
  template<class _Traits>
    inline basic_istream<char, _Traits>&
    operator>>(basic_istream<char, _Traits>& __in, signed char* __s)
    { return (__in >> reinterpret_cast<char*>(__s)); }
#pragma line 773 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    class basic_iostream
    : public basic_istream<_CharT, _Traits>,
      public basic_ostream<_CharT, _Traits>
    {
    public:
#pragma empty_line
#pragma empty_line
#pragma empty_line
      typedef _CharT char_type;
      typedef typename _Traits::int_type int_type;
      typedef typename _Traits::pos_type pos_type;
      typedef typename _Traits::off_type off_type;
      typedef _Traits traits_type;
#pragma empty_line
#pragma empty_line
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      explicit
      basic_iostream(basic_streambuf<_CharT, _Traits>* __sb)
      : __istream_type(__sb), __ostream_type(__sb) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      virtual
      ~basic_iostream() { }
#pragma empty_line
    protected:
      basic_iostream()
      : __istream_type(), __ostream_type() { }
    };
#pragma line 834 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    ws(basic_istream<_CharT, _Traits>& __is);
#pragma line 856 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 3
#pragma empty_line
}
#pragma empty_line
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/istream.tcc" 1 3
#pragma line 39 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/istream.tcc" 3
#pragma empty_line
#pragma line 40 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/istream.tcc" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>::sentry::
    sentry(basic_istream<_CharT, _Traits>& __in, bool __noskip) : _M_ok(false)
    {
      ios_base::iostate __err = ios_base::goodbit;
      if (__in.good())
 {
   if (__in.tie())
     __in.tie()->flush();
   if (!__noskip && bool(__in.flags() & ios_base::skipws))
     {
       const __int_type __eof = traits_type::eof();
       __streambuf_type* __sb = __in.rdbuf();
       __int_type __c = __sb->sgetc();
#pragma empty_line
       const __ctype_type& __ct = __check_facet(__in._M_ctype);
       while (!traits_type::eq_int_type(__c, __eof)
       && __ct.is(ctype_base::space,
    traits_type::to_char_type(__c)))
  __c = __sb->snextc();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
       if (traits_type::eq_int_type(__c, __eof))
  __err |= ios_base::eofbit;
     }
 }
#pragma empty_line
      if (__in.good() && __err == ios_base::goodbit)
 _M_ok = true;
      else
 {
   __err |= ios_base::failbit;
   __in.setstate(__err);
 }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    template<typename _ValueT>
      basic_istream<_CharT, _Traits>&
      basic_istream<_CharT, _Traits>::
      _M_extract(_ValueT& __v)
      {
 sentry __cerb(*this, false);
 if (__cerb)
   {
     ios_base::iostate __err = ios_base::goodbit;
     try
       {
  const __num_get_type& __ng = __check_facet(this->_M_num_get);
  __ng.get(*this, 0, *this, __err, __v);
       }
     catch(__cxxabiv1::__forced_unwind&)
       {
  this->_M_setstate(ios_base::badbit);
  throw;
       }
     catch(...)
       { this->_M_setstate(ios_base::badbit); }
     if (__err)
       this->setstate(__err);
   }
 return *this;
      }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    operator>>(short& __n)
    {
#pragma empty_line
#pragma empty_line
      sentry __cerb(*this, false);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       long __l;
       const __num_get_type& __ng = __check_facet(this->_M_num_get);
       __ng.get(*this, 0, *this, __err, __l);
#pragma empty_line
#pragma empty_line
#pragma empty_line
       if (__l < __gnu_cxx::__numeric_traits<short>::__min)
  {
    __err |= ios_base::failbit;
    __n = __gnu_cxx::__numeric_traits<short>::__min;
  }
       else if (__l > __gnu_cxx::__numeric_traits<short>::__max)
  {
    __err |= ios_base::failbit;
    __n = __gnu_cxx::__numeric_traits<short>::__max;
  }
       else
  __n = short(__l);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    operator>>(int& __n)
    {
#pragma empty_line
#pragma empty_line
      sentry __cerb(*this, false);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       long __l;
       const __num_get_type& __ng = __check_facet(this->_M_num_get);
       __ng.get(*this, 0, *this, __err, __l);
#pragma empty_line
#pragma empty_line
#pragma empty_line
       if (__l < __gnu_cxx::__numeric_traits<int>::__min)
  {
    __err |= ios_base::failbit;
    __n = __gnu_cxx::__numeric_traits<int>::__min;
  }
       else if (__l > __gnu_cxx::__numeric_traits<int>::__max)
  {
    __err |= ios_base::failbit;
    __n = __gnu_cxx::__numeric_traits<int>::__max;
  }
       else
  __n = int(__l);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    operator>>(__streambuf_type* __sbout)
    {
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, false);
      if (__cerb && __sbout)
 {
   try
     {
       bool __ineof;
       if (!__copy_streambufs_eof(this->rdbuf(), __sbout, __ineof))
  __err |= ios_base::failbit;
       if (__ineof)
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::failbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::failbit); }
 }
      else if (!__sbout)
 __err |= ios_base::failbit;
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    typename basic_istream<_CharT, _Traits>::int_type
    basic_istream<_CharT, _Traits>::
    get(void)
    {
      const int_type __eof = traits_type::eof();
      int_type __c = __eof;
      _M_gcount = 0;
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   try
     {
       __c = this->rdbuf()->sbumpc();
#pragma empty_line
       if (!traits_type::eq_int_type(__c, __eof))
  _M_gcount = 1;
       else
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
      if (!_M_gcount)
 __err |= ios_base::failbit;
      if (__err)
 this->setstate(__err);
      return __c;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    get(char_type& __c)
    {
      _M_gcount = 0;
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   try
     {
       const int_type __cb = this->rdbuf()->sbumpc();
#pragma empty_line
       if (!traits_type::eq_int_type(__cb, traits_type::eof()))
  {
    _M_gcount = 1;
    __c = traits_type::to_char_type(__cb);
  }
       else
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
      if (!_M_gcount)
 __err |= ios_base::failbit;
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    get(char_type* __s, streamsize __n, char_type __delim)
    {
      _M_gcount = 0;
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   try
     {
       const int_type __idelim = traits_type::to_int_type(__delim);
       const int_type __eof = traits_type::eof();
       __streambuf_type* __sb = this->rdbuf();
       int_type __c = __sb->sgetc();
#pragma empty_line
       while (_M_gcount + 1 < __n
       && !traits_type::eq_int_type(__c, __eof)
       && !traits_type::eq_int_type(__c, __idelim))
  {
    *__s++ = traits_type::to_char_type(__c);
    ++_M_gcount;
    __c = __sb->snextc();
  }
       if (traits_type::eq_int_type(__c, __eof))
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
#pragma empty_line
#pragma empty_line
      if (__n > 0)
 *__s = char_type();
      if (!_M_gcount)
 __err |= ios_base::failbit;
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    get(__streambuf_type& __sb, char_type __delim)
    {
      _M_gcount = 0;
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   try
     {
       const int_type __idelim = traits_type::to_int_type(__delim);
       const int_type __eof = traits_type::eof();
       __streambuf_type* __this_sb = this->rdbuf();
       int_type __c = __this_sb->sgetc();
       char_type __c2 = traits_type::to_char_type(__c);
#pragma empty_line
       while (!traits_type::eq_int_type(__c, __eof)
       && !traits_type::eq_int_type(__c, __idelim)
       && !traits_type::eq_int_type(__sb.sputc(__c2), __eof))
  {
    ++_M_gcount;
    __c = __this_sb->snextc();
    __c2 = traits_type::to_char_type(__c);
  }
       if (traits_type::eq_int_type(__c, __eof))
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
      if (!_M_gcount)
 __err |= ios_base::failbit;
      if (__err)
 this->setstate(__err);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    getline(char_type* __s, streamsize __n, char_type __delim)
    {
      _M_gcount = 0;
      ios_base::iostate __err = ios_base::goodbit;
      sentry __cerb(*this, true);
      if (__cerb)
        {
          try
            {
              const int_type __idelim = traits_type::to_int_type(__delim);
              const int_type __eof = traits_type::eof();
              __streambuf_type* __sb = this->rdbuf();
              int_type __c = __sb->sgetc();
#pragma empty_line
              while (_M_gcount + 1 < __n
                     && !traits_type::eq_int_type(__c, __eof)
                     && !traits_type::eq_int_type(__c, __idelim))
                {
                  *__s++ = traits_type::to_char_type(__c);
                  __c = __sb->snextc();
                  ++_M_gcount;
                }
              if (traits_type::eq_int_type(__c, __eof))
                __err |= ios_base::eofbit;
              else
                {
                  if (traits_type::eq_int_type(__c, __idelim))
                    {
                      __sb->sbumpc();
                      ++_M_gcount;
                    }
                  else
                    __err |= ios_base::failbit;
                }
            }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
          catch(...)
            { this->_M_setstate(ios_base::badbit); }
        }
#pragma empty_line
#pragma empty_line
      if (__n > 0)
 *__s = char_type();
      if (!_M_gcount)
        __err |= ios_base::failbit;
      if (__err)
        this->setstate(__err);
      return *this;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    ignore(void)
    {
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       const int_type __eof = traits_type::eof();
       __streambuf_type* __sb = this->rdbuf();
#pragma empty_line
       if (traits_type::eq_int_type(__sb->sbumpc(), __eof))
  __err |= ios_base::eofbit;
       else
  _M_gcount = 1;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    ignore(streamsize __n)
    {
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb && __n > 0)
        {
          ios_base::iostate __err = ios_base::goodbit;
          try
            {
              const int_type __eof = traits_type::eof();
              __streambuf_type* __sb = this->rdbuf();
              int_type __c = __sb->sgetc();
#pragma line 515 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/istream.tcc" 3
       bool __large_ignore = false;
       while (true)
  {
    while (_M_gcount < __n
    && !traits_type::eq_int_type(__c, __eof))
      {
        ++_M_gcount;
        __c = __sb->snextc();
      }
    if (__n == __gnu_cxx::__numeric_traits<streamsize>::__max
        && !traits_type::eq_int_type(__c, __eof))
      {
        _M_gcount =
   __gnu_cxx::__numeric_traits<streamsize>::__min;
        __large_ignore = true;
      }
    else
      break;
  }
#pragma empty_line
       if (__large_ignore)
  _M_gcount = __gnu_cxx::__numeric_traits<streamsize>::__max;
#pragma empty_line
       if (traits_type::eq_int_type(__c, __eof))
                __err |= ios_base::eofbit;
            }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
          catch(...)
            { this->_M_setstate(ios_base::badbit); }
          if (__err)
            this->setstate(__err);
        }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    ignore(streamsize __n, int_type __delim)
    {
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb && __n > 0)
        {
          ios_base::iostate __err = ios_base::goodbit;
          try
            {
              const int_type __eof = traits_type::eof();
              __streambuf_type* __sb = this->rdbuf();
              int_type __c = __sb->sgetc();
#pragma empty_line
#pragma empty_line
       bool __large_ignore = false;
       while (true)
  {
    while (_M_gcount < __n
    && !traits_type::eq_int_type(__c, __eof)
    && !traits_type::eq_int_type(__c, __delim))
      {
        ++_M_gcount;
        __c = __sb->snextc();
      }
    if (__n == __gnu_cxx::__numeric_traits<streamsize>::__max
        && !traits_type::eq_int_type(__c, __eof)
        && !traits_type::eq_int_type(__c, __delim))
      {
        _M_gcount =
   __gnu_cxx::__numeric_traits<streamsize>::__min;
        __large_ignore = true;
      }
    else
      break;
  }
#pragma empty_line
       if (__large_ignore)
  _M_gcount = __gnu_cxx::__numeric_traits<streamsize>::__max;
#pragma empty_line
              if (traits_type::eq_int_type(__c, __eof))
                __err |= ios_base::eofbit;
       else if (traits_type::eq_int_type(__c, __delim))
  {
    if (_M_gcount
        < __gnu_cxx::__numeric_traits<streamsize>::__max)
      ++_M_gcount;
    __sb->sbumpc();
  }
            }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
          catch(...)
            { this->_M_setstate(ios_base::badbit); }
          if (__err)
            this->setstate(__err);
        }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    typename basic_istream<_CharT, _Traits>::int_type
    basic_istream<_CharT, _Traits>::
    peek(void)
    {
      int_type __c = traits_type::eof();
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       __c = this->rdbuf()->sgetc();
       if (traits_type::eq_int_type(__c, traits_type::eof()))
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return __c;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    read(char_type* __s, streamsize __n)
    {
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       _M_gcount = this->rdbuf()->sgetn(__s, __n);
       if (_M_gcount != __n)
  __err |= (ios_base::eofbit | ios_base::failbit);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    streamsize
    basic_istream<_CharT, _Traits>::
    readsome(char_type* __s, streamsize __n)
    {
      _M_gcount = 0;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
#pragma empty_line
       const streamsize __num = this->rdbuf()->in_avail();
       if (__num > 0)
  _M_gcount = this->rdbuf()->sgetn(__s, std::min(__num, __n));
       else if (__num == -1)
  __err |= ios_base::eofbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return _M_gcount;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    putback(char_type __c)
    {
#pragma empty_line
#pragma empty_line
      _M_gcount = 0;
#pragma empty_line
      this->clear(this->rdstate() & ~ios_base::eofbit);
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       const int_type __eof = traits_type::eof();
       __streambuf_type* __sb = this->rdbuf();
       if (!__sb
    || traits_type::eq_int_type(__sb->sputbackc(__c), __eof))
  __err |= ios_base::badbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    unget(void)
    {
#pragma empty_line
#pragma empty_line
      _M_gcount = 0;
#pragma empty_line
      this->clear(this->rdstate() & ~ios_base::eofbit);
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       const int_type __eof = traits_type::eof();
       __streambuf_type* __sb = this->rdbuf();
       if (!__sb
    || traits_type::eq_int_type(__sb->sungetc(), __eof))
  __err |= ios_base::badbit;
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    int
    basic_istream<_CharT, _Traits>::
    sync(void)
    {
#pragma empty_line
#pragma empty_line
      int __ret = -1;
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       __streambuf_type* __sb = this->rdbuf();
       if (__sb)
  {
    if (__sb->pubsync() == -1)
      __err |= ios_base::badbit;
    else
      __ret = 0;
  }
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    typename basic_istream<_CharT, _Traits>::pos_type
    basic_istream<_CharT, _Traits>::
    tellg(void)
    {
#pragma empty_line
#pragma empty_line
      pos_type __ret = pos_type(-1);
      sentry __cerb(*this, true);
      if (__cerb)
 {
   try
     {
       if (!this->fail())
  __ret = this->rdbuf()->pubseekoff(0, ios_base::cur,
        ios_base::in);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    seekg(pos_type __pos)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      this->clear(this->rdstate() & ~ios_base::eofbit);
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       if (!this->fail())
  {
#pragma empty_line
    const pos_type __p = this->rdbuf()->pubseekpos(__pos,
         ios_base::in);
#pragma empty_line
#pragma empty_line
    if (__p == pos_type(off_type(-1)))
      __err |= ios_base::failbit;
  }
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    basic_istream<_CharT, _Traits>::
    seekg(off_type __off, ios_base::seekdir __dir)
    {
#pragma empty_line
#pragma empty_line
#pragma empty_line
      this->clear(this->rdstate() & ~ios_base::eofbit);
      sentry __cerb(*this, true);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       if (!this->fail())
  {
#pragma empty_line
    const pos_type __p = this->rdbuf()->pubseekoff(__off, __dir,
         ios_base::in);
#pragma empty_line
#pragma empty_line
    if (__p == pos_type(off_type(-1)))
      __err |= ios_base::failbit;
  }
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       this->_M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { this->_M_setstate(ios_base::badbit); }
   if (__err)
     this->setstate(__err);
 }
      return *this;
    }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in, _CharT& __c)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef typename __istream_type::int_type __int_type;
#pragma empty_line
      typename __istream_type::sentry __cerb(__in, false);
      if (__cerb)
 {
   ios_base::iostate __err = ios_base::goodbit;
   try
     {
       const __int_type __cb = __in.rdbuf()->sbumpc();
       if (!_Traits::eq_int_type(__cb, _Traits::eof()))
  __c = _Traits::to_char_type(__cb);
       else
  __err |= (ios_base::eofbit | ios_base::failbit);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __in._M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { __in._M_setstate(ios_base::badbit); }
   if (__err)
     __in.setstate(__err);
 }
      return __in;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in, _CharT* __s)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_streambuf<_CharT, _Traits> __streambuf_type;
      typedef typename _Traits::int_type int_type;
      typedef _CharT char_type;
      typedef ctype<_CharT> __ctype_type;
#pragma empty_line
      streamsize __extracted = 0;
      ios_base::iostate __err = ios_base::goodbit;
      typename __istream_type::sentry __cerb(__in, false);
      if (__cerb)
 {
   try
     {
#pragma empty_line
       streamsize __num = __in.width();
       if (__num <= 0)
  __num = __gnu_cxx::__numeric_traits<streamsize>::__max;
#pragma empty_line
       const __ctype_type& __ct = use_facet<__ctype_type>(__in.getloc());
#pragma empty_line
       const int_type __eof = _Traits::eof();
       __streambuf_type* __sb = __in.rdbuf();
       int_type __c = __sb->sgetc();
#pragma empty_line
       while (__extracted < __num - 1
       && !_Traits::eq_int_type(__c, __eof)
       && !__ct.is(ctype_base::space,
     _Traits::to_char_type(__c)))
  {
    *__s++ = _Traits::to_char_type(__c);
    ++__extracted;
    __c = __sb->snextc();
  }
       if (_Traits::eq_int_type(__c, __eof))
  __err |= ios_base::eofbit;
#pragma empty_line
#pragma empty_line
#pragma empty_line
       *__s = char_type();
       __in.width(0);
     }
   catch(__cxxabiv1::__forced_unwind&)
     {
       __in._M_setstate(ios_base::badbit);
       throw;
     }
   catch(...)
     { __in._M_setstate(ios_base::badbit); }
 }
      if (!__extracted)
 __err |= ios_base::failbit;
      if (__err)
 __in.setstate(__err);
      return __in;
    }
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_istream<_CharT, _Traits>&
    ws(basic_istream<_CharT, _Traits>& __in)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_streambuf<_CharT, _Traits> __streambuf_type;
      typedef typename __istream_type::int_type __int_type;
      typedef ctype<_CharT> __ctype_type;
#pragma empty_line
      const __ctype_type& __ct = use_facet<__ctype_type>(__in.getloc());
      const __int_type __eof = _Traits::eof();
      __streambuf_type* __sb = __in.rdbuf();
      __int_type __c = __sb->sgetc();
#pragma empty_line
      while (!_Traits::eq_int_type(__c, __eof)
      && __ct.is(ctype_base::space, _Traits::to_char_type(__c)))
 __c = __sb->snextc();
#pragma empty_line
       if (_Traits::eq_int_type(__c, __eof))
  __in.setstate(ios_base::eofbit);
      return __in;
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern template class basic_istream<char>;
  extern template istream& ws(istream&);
  extern template istream& operator>>(istream&, char&);
  extern template istream& operator>>(istream&, char*);
  extern template istream& operator>>(istream&, unsigned char&);
  extern template istream& operator>>(istream&, signed char&);
  extern template istream& operator>>(istream&, unsigned char*);
  extern template istream& operator>>(istream&, signed char*);
#pragma empty_line
  extern template istream& istream::_M_extract(unsigned short&);
  extern template istream& istream::_M_extract(unsigned int&);
  extern template istream& istream::_M_extract(long&);
  extern template istream& istream::_M_extract(unsigned long&);
  extern template istream& istream::_M_extract(bool&);
#pragma empty_line
  extern template istream& istream::_M_extract(long long&);
  extern template istream& istream::_M_extract(unsigned long long&);
#pragma empty_line
  extern template istream& istream::_M_extract(float&);
  extern template istream& istream::_M_extract(double&);
  extern template istream& istream::_M_extract(long double&);
  extern template istream& istream::_M_extract(void*&);
#pragma empty_line
  extern template class basic_iostream<char>;
#pragma empty_line
#pragma empty_line
  extern template class basic_istream<wchar_t>;
  extern template wistream& ws(wistream&);
  extern template wistream& operator>>(wistream&, wchar_t&);
  extern template wistream& operator>>(wistream&, wchar_t*);
#pragma empty_line
  extern template wistream& wistream::_M_extract(unsigned short&);
  extern template wistream& wistream::_M_extract(unsigned int&);
  extern template wistream& wistream::_M_extract(long&);
  extern template wistream& wistream::_M_extract(unsigned long&);
  extern template wistream& wistream::_M_extract(bool&);
#pragma empty_line
  extern template wistream& wistream::_M_extract(long long&);
  extern template wistream& wistream::_M_extract(unsigned long long&);
#pragma empty_line
  extern template wistream& wistream::_M_extract(float&);
  extern template wistream& wistream::_M_extract(double&);
  extern template wistream& wistream::_M_extract(long double&);
  extern template wistream& wistream::_M_extract(void*&);
#pragma empty_line
  extern template class basic_iostream<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 860 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/istream" 2 3
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 61 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iostream" 3
  extern istream cin;
  extern ostream cout;
  extern ostream cerr;
  extern ostream clog;
#pragma empty_line
#pragma empty_line
  extern wistream wcin;
  extern wostream wcout;
  extern wostream wcerr;
  extern wostream wclog;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  static ios_base::Init __ioinit;
#pragma empty_line
#pragma empty_line
}
#pragma line 67 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul_test.cpp" 2
#pragma line 1 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul.h" 1
#pragma line 69 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul.h"
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 1 3
#pragma line 41 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 3
#pragma empty_line
#pragma line 42 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/math.h" 1 3 4
#pragma line 27 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
#pragma line 28 "/usr/include/math.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 1 3 4
#pragma line 25 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h" 1 3 4
#pragma line 26 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 2 3 4
#pragma line 41 "/usr/include/math.h" 2 3 4
#pragma line 138 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/flt-eval-method.h" 1 3 4
#pragma line 139 "/usr/include/math.h" 2 3 4
#pragma line 149 "/usr/include/math.h" 3 4
typedef float float_t;
typedef double double_t;
#pragma line 190 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/fp-logb.h" 1 3 4
#pragma line 191 "/usr/include/math.h" 2 3 4
#pragma line 233 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/fp-fast.h" 1 3 4
#pragma line 234 "/usr/include/math.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
  {
    FP_INT_UPWARD =
#pragma empty_line
      0,
    FP_INT_DOWNWARD =
#pragma empty_line
      1,
    FP_INT_TOWARDZERO =
#pragma empty_line
      2,
    FP_INT_TONEARESTFROMZERO =
#pragma empty_line
      3,
    FP_INT_TONEAREST =
#pragma empty_line
      4,
  };
#pragma line 289 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
#pragma line 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassify (double __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __signbit (double __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __isinf (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __finite (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __isnan (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __iseqsig (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern int __issignaling (double __value) throw ()
     __attribute__ ((__const__));
#pragma line 290 "/usr/include/math.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double acos (double __x) throw (); extern double __acos (double __x) throw ();
#pragma empty_line
extern double asin (double __x) throw (); extern double __asin (double __x) throw ();
#pragma empty_line
extern double atan (double __x) throw (); extern double __atan (double __x) throw ();
#pragma empty_line
extern double atan2 (double __y, double __x) throw (); extern double __atan2 (double __y, double __x) throw ();
#pragma empty_line
#pragma empty_line
 extern double cos (double __x) throw (); extern double __cos (double __x) throw ();
#pragma empty_line
 extern double sin (double __x) throw (); extern double __sin (double __x) throw ();
#pragma empty_line
extern double tan (double __x) throw (); extern double __tan (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double cosh (double __x) throw (); extern double __cosh (double __x) throw ();
#pragma empty_line
extern double sinh (double __x) throw (); extern double __sinh (double __x) throw ();
#pragma empty_line
extern double tanh (double __x) throw (); extern double __tanh (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincos (double __x, double *__sinx, double *__cosx) throw (); extern void __sincos (double __x, double *__sinx, double *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double acosh (double __x) throw (); extern double __acosh (double __x) throw ();
#pragma empty_line
extern double asinh (double __x) throw (); extern double __asinh (double __x) throw ();
#pragma empty_line
extern double atanh (double __x) throw (); extern double __atanh (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern double exp (double __x) throw (); extern double __exp (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double frexp (double __x, int *__exponent) throw (); extern double __frexp (double __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern double ldexp (double __x, int __exponent) throw (); extern double __ldexp (double __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern double log (double __x) throw (); extern double __log (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double log10 (double __x) throw (); extern double __log10 (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double modf (double __x, double *__iptr) throw (); extern double __modf (double __x, double *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double exp10 (double __x) throw (); extern double __exp10 (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double expm1 (double __x) throw (); extern double __expm1 (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double log1p (double __x) throw (); extern double __log1p (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double logb (double __x) throw (); extern double __logb (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double exp2 (double __x) throw (); extern double __exp2 (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double log2 (double __x) throw (); extern double __log2 (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern double pow (double __x, double __y) throw (); extern double __pow (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern double sqrt (double __x) throw (); extern double __sqrt (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double hypot (double __x, double __y) throw (); extern double __hypot (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double cbrt (double __x) throw (); extern double __cbrt (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double ceil (double __x) throw () __attribute__ ((__const__)); extern double __ceil (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double fabs (double __x) throw () __attribute__ ((__const__)); extern double __fabs (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double floor (double __x) throw () __attribute__ ((__const__)); extern double __floor (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double fmod (double __x, double __y) throw (); extern double __fmod (double __x, double __y) throw ();
#pragma line 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinf (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int finite (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double drem (double __x, double __y) throw (); extern double __drem (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double significand (double __x) throw (); extern double __significand (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double copysign (double __x, double __y) throw () __attribute__ ((__const__)); extern double __copysign (double __x, double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double nan (const char *__tagb) throw (); extern double __nan (const char *__tagb) throw ();
#pragma line 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnan (double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double j0 (double) throw (); extern double __j0 (double) throw ();
extern double j1 (double) throw (); extern double __j1 (double) throw ();
extern double jn (int, double) throw (); extern double __jn (int, double) throw ();
extern double y0 (double) throw (); extern double __y0 (double) throw ();
extern double y1 (double) throw (); extern double __y1 (double) throw ();
extern double yn (int, double) throw (); extern double __yn (int, double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double erf (double) throw (); extern double __erf (double) throw ();
extern double erfc (double) throw (); extern double __erfc (double) throw ();
extern double lgamma (double) throw (); extern double __lgamma (double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double tgamma (double) throw (); extern double __tgamma (double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double gamma (double) throw (); extern double __gamma (double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double lgamma_r (double, int *__signgamp) throw (); extern double __lgamma_r (double, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double rint (double __x) throw (); extern double __rint (double __x) throw ();
#pragma empty_line
#pragma empty_line
extern double nextafter (double __x, double __y) throw (); extern double __nextafter (double __x, double __y) throw ();
#pragma empty_line
extern double nexttoward (double __x, long double __y) throw (); extern double __nexttoward (double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double nextdown (double __x) throw (); extern double __nextdown (double __x) throw ();
#pragma empty_line
extern double nextup (double __x) throw (); extern double __nextup (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double remainder (double __x, double __y) throw (); extern double __remainder (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double scalbn (double __x, int __n) throw (); extern double __scalbn (double __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogb (double __x) throw (); extern int __ilogb (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogb (double __x) throw (); extern long int __llogb (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double scalbln (double __x, long int __n) throw (); extern double __scalbln (double __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double nearbyint (double __x) throw (); extern double __nearbyint (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double round (double __x) throw () __attribute__ ((__const__)); extern double __round (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double trunc (double __x) throw () __attribute__ ((__const__)); extern double __trunc (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double remquo (double __x, double __y, int *__quo) throw (); extern double __remquo (double __x, double __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrint (double __x) throw (); extern long int __lrint (double __x) throw ();
__extension__
extern long long int llrint (double __x) throw (); extern long long int __llrint (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lround (double __x) throw (); extern long int __lround (double __x) throw ();
__extension__
extern long long int llround (double __x) throw (); extern long long int __llround (double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double fdim (double __x, double __y) throw (); extern double __fdim (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern double fmax (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmax (double __x, double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double fmin (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmin (double __x, double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double fma (double __x, double __y, double __z) throw (); extern double __fma (double __x, double __y, double __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double roundeven (double __x) throw () __attribute__ ((__const__)); extern double __roundeven (double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t fromfp (double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfp (double __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t ufromfp (double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfp (double __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t fromfpx (double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpx (double __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t ufromfpx (double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpx (double __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern double fmaxmag (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmaxmag (double __x, double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern double fminmag (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fminmag (double __x, double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalize (double *__cx, const double *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int totalorder (const double *__x, const double *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int totalordermag (const double *__x, const double *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern double getpayload (const double *__x) throw (); extern double __getpayload (const double *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayload (double *__x, double __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsig (double *__x, double __payload) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double scalb (double __x, double __n) throw (); extern double __scalb (double __x, double __n) throw ();
#pragma line 291 "/usr/include/math.h" 2 3 4
#pragma line 306 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
#pragma line 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyf (float __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __signbitf (float __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __isinff (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __finitef (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __isnanf (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __iseqsigf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
extern int __issignalingf (float __value) throw ()
     __attribute__ ((__const__));
#pragma line 307 "/usr/include/math.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float acosf (float __x) throw (); extern float __acosf (float __x) throw ();
#pragma empty_line
extern float asinf (float __x) throw (); extern float __asinf (float __x) throw ();
#pragma empty_line
extern float atanf (float __x) throw (); extern float __atanf (float __x) throw ();
#pragma empty_line
extern float atan2f (float __y, float __x) throw (); extern float __atan2f (float __y, float __x) throw ();
#pragma empty_line
#pragma empty_line
 extern float cosf (float __x) throw (); extern float __cosf (float __x) throw ();
#pragma empty_line
 extern float sinf (float __x) throw (); extern float __sinf (float __x) throw ();
#pragma empty_line
extern float tanf (float __x) throw (); extern float __tanf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float coshf (float __x) throw (); extern float __coshf (float __x) throw ();
#pragma empty_line
extern float sinhf (float __x) throw (); extern float __sinhf (float __x) throw ();
#pragma empty_line
extern float tanhf (float __x) throw (); extern float __tanhf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf (float __x, float *__sinx, float *__cosx) throw (); extern void __sincosf (float __x, float *__sinx, float *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float acoshf (float __x) throw (); extern float __acoshf (float __x) throw ();
#pragma empty_line
extern float asinhf (float __x) throw (); extern float __asinhf (float __x) throw ();
#pragma empty_line
extern float atanhf (float __x) throw (); extern float __atanhf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern float expf (float __x) throw (); extern float __expf (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float frexpf (float __x, int *__exponent) throw (); extern float __frexpf (float __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern float ldexpf (float __x, int __exponent) throw (); extern float __ldexpf (float __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern float logf (float __x) throw (); extern float __logf (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float log10f (float __x) throw (); extern float __log10f (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float modff (float __x, float *__iptr) throw (); extern float __modff (float __x, float *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float exp10f (float __x) throw (); extern float __exp10f (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float expm1f (float __x) throw (); extern float __expm1f (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float log1pf (float __x) throw (); extern float __log1pf (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float logbf (float __x) throw (); extern float __logbf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float exp2f (float __x) throw (); extern float __exp2f (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float log2f (float __x) throw (); extern float __log2f (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern float powf (float __x, float __y) throw (); extern float __powf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
extern float sqrtf (float __x) throw (); extern float __sqrtf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float hypotf (float __x, float __y) throw (); extern float __hypotf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float cbrtf (float __x) throw (); extern float __cbrtf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float ceilf (float __x) throw () __attribute__ ((__const__)); extern float __ceilf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float fabsf (float __x) throw () __attribute__ ((__const__)); extern float __fabsf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float floorf (float __x) throw () __attribute__ ((__const__)); extern float __floorf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float fmodf (float __x, float __y) throw (); extern float __fmodf (float __x, float __y) throw ();
#pragma line 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinff (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int finitef (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float dremf (float __x, float __y) throw (); extern float __dremf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float significandf (float __x) throw (); extern float __significandf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float copysignf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float nanf (const char *__tagb) throw (); extern float __nanf (const char *__tagb) throw ();
#pragma line 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnanf (float __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float j0f (float) throw (); extern float __j0f (float) throw ();
extern float j1f (float) throw (); extern float __j1f (float) throw ();
extern float jnf (int, float) throw (); extern float __jnf (int, float) throw ();
extern float y0f (float) throw (); extern float __y0f (float) throw ();
extern float y1f (float) throw (); extern float __y1f (float) throw ();
extern float ynf (int, float) throw (); extern float __ynf (int, float) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float erff (float) throw (); extern float __erff (float) throw ();
extern float erfcf (float) throw (); extern float __erfcf (float) throw ();
extern float lgammaf (float) throw (); extern float __lgammaf (float) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float tgammaf (float) throw (); extern float __tgammaf (float) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float gammaf (float) throw (); extern float __gammaf (float) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float lgammaf_r (float, int *__signgamp) throw (); extern float __lgammaf_r (float, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float rintf (float __x) throw (); extern float __rintf (float __x) throw ();
#pragma empty_line
#pragma empty_line
extern float nextafterf (float __x, float __y) throw (); extern float __nextafterf (float __x, float __y) throw ();
#pragma empty_line
extern float nexttowardf (float __x, long double __y) throw (); extern float __nexttowardf (float __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float nextdownf (float __x) throw (); extern float __nextdownf (float __x) throw ();
#pragma empty_line
extern float nextupf (float __x) throw (); extern float __nextupf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float remainderf (float __x, float __y) throw (); extern float __remainderf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float scalbnf (float __x, int __n) throw (); extern float __scalbnf (float __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf (float __x) throw (); extern int __ilogbf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf (float __x) throw (); extern long int __llogbf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float scalblnf (float __x, long int __n) throw (); extern float __scalblnf (float __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float nearbyintf (float __x) throw (); extern float __nearbyintf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float roundf (float __x) throw () __attribute__ ((__const__)); extern float __roundf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float truncf (float __x) throw () __attribute__ ((__const__)); extern float __truncf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float remquof (float __x, float __y, int *__quo) throw (); extern float __remquof (float __x, float __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf (float __x) throw (); extern long int __lrintf (float __x) throw ();
__extension__
extern long long int llrintf (float __x) throw (); extern long long int __llrintf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf (float __x) throw (); extern long int __lroundf (float __x) throw ();
__extension__
extern long long int llroundf (float __x) throw (); extern long long int __llroundf (float __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float fdimf (float __x, float __y) throw (); extern float __fdimf (float __x, float __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fmaxf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float fminf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fminf (float __x, float __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float fmaf (float __x, float __y, float __z) throw (); extern float __fmaf (float __x, float __y, float __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float roundevenf (float __x) throw () __attribute__ ((__const__)); extern float __roundevenf (float __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (float __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern float fmaxmagf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fmaxmagf (float __x, float __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern float fminmagf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fminmagf (float __x, float __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef (float *__cx, const float *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const float *__x, const float *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const float *__x, const float *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern float getpayloadf (const float *__x) throw (); extern float __getpayloadf (const float *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf (float *__x, float __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf (float *__x, float __payload) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern float scalbf (float __x, float __n) throw (); extern float __scalbf (float __x, float __n) throw ();
#pragma line 308 "/usr/include/math.h" 2 3 4
#pragma line 349 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
#pragma line 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyl (long double __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __signbitl (long double __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __isinfl (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __finitel (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __isnanl (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __iseqsigl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern int __issignalingl (long double __value) throw ()
     __attribute__ ((__const__));
#pragma line 350 "/usr/include/math.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double acosl (long double __x) throw (); extern long double __acosl (long double __x) throw ();
#pragma empty_line
extern long double asinl (long double __x) throw (); extern long double __asinl (long double __x) throw ();
#pragma empty_line
extern long double atanl (long double __x) throw (); extern long double __atanl (long double __x) throw ();
#pragma empty_line
extern long double atan2l (long double __y, long double __x) throw (); extern long double __atan2l (long double __y, long double __x) throw ();
#pragma empty_line
#pragma empty_line
 extern long double cosl (long double __x) throw (); extern long double __cosl (long double __x) throw ();
#pragma empty_line
 extern long double sinl (long double __x) throw (); extern long double __sinl (long double __x) throw ();
#pragma empty_line
extern long double tanl (long double __x) throw (); extern long double __tanl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double coshl (long double __x) throw (); extern long double __coshl (long double __x) throw ();
#pragma empty_line
extern long double sinhl (long double __x) throw (); extern long double __sinhl (long double __x) throw ();
#pragma empty_line
extern long double tanhl (long double __x) throw (); extern long double __tanhl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosl (long double __x, long double *__sinx, long double *__cosx) throw (); extern void __sincosl (long double __x, long double *__sinx, long double *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double acoshl (long double __x) throw (); extern long double __acoshl (long double __x) throw ();
#pragma empty_line
extern long double asinhl (long double __x) throw (); extern long double __asinhl (long double __x) throw ();
#pragma empty_line
extern long double atanhl (long double __x) throw (); extern long double __atanhl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern long double expl (long double __x) throw (); extern long double __expl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double frexpl (long double __x, int *__exponent) throw (); extern long double __frexpl (long double __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern long double ldexpl (long double __x, int __exponent) throw (); extern long double __ldexpl (long double __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern long double logl (long double __x) throw (); extern long double __logl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double log10l (long double __x) throw (); extern long double __log10l (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double modfl (long double __x, long double *__iptr) throw (); extern long double __modfl (long double __x, long double *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double exp10l (long double __x) throw (); extern long double __exp10l (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double expm1l (long double __x) throw (); extern long double __expm1l (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double log1pl (long double __x) throw (); extern long double __log1pl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double logbl (long double __x) throw (); extern long double __logbl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double exp2l (long double __x) throw (); extern long double __exp2l (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double log2l (long double __x) throw (); extern long double __log2l (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern long double powl (long double __x, long double __y) throw (); extern long double __powl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern long double sqrtl (long double __x) throw (); extern long double __sqrtl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double hypotl (long double __x, long double __y) throw (); extern long double __hypotl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double cbrtl (long double __x) throw (); extern long double __cbrtl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double ceill (long double __x) throw () __attribute__ ((__const__)); extern long double __ceill (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double fabsl (long double __x) throw () __attribute__ ((__const__)); extern long double __fabsl (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double floorl (long double __x) throw () __attribute__ ((__const__)); extern long double __floorl (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double fmodl (long double __x, long double __y) throw (); extern long double __fmodl (long double __x, long double __y) throw ();
#pragma line 177 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isinfl (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int finitel (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double dreml (long double __x, long double __y) throw (); extern long double __dreml (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double significandl (long double __x) throw (); extern long double __significandl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double copysignl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double nanl (const char *__tagb) throw (); extern long double __nanl (const char *__tagb) throw ();
#pragma line 211 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int isnanl (long double __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double j0l (long double) throw (); extern long double __j0l (long double) throw ();
extern long double j1l (long double) throw (); extern long double __j1l (long double) throw ();
extern long double jnl (int, long double) throw (); extern long double __jnl (int, long double) throw ();
extern long double y0l (long double) throw (); extern long double __y0l (long double) throw ();
extern long double y1l (long double) throw (); extern long double __y1l (long double) throw ();
extern long double ynl (int, long double) throw (); extern long double __ynl (int, long double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double erfl (long double) throw (); extern long double __erfl (long double) throw ();
extern long double erfcl (long double) throw (); extern long double __erfcl (long double) throw ();
extern long double lgammal (long double) throw (); extern long double __lgammal (long double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double tgammal (long double) throw (); extern long double __tgammal (long double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double gammal (long double) throw (); extern long double __gammal (long double) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double lgammal_r (long double, int *__signgamp) throw (); extern long double __lgammal_r (long double, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double rintl (long double __x) throw (); extern long double __rintl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
extern long double nextafterl (long double __x, long double __y) throw (); extern long double __nextafterl (long double __x, long double __y) throw ();
#pragma empty_line
extern long double nexttowardl (long double __x, long double __y) throw (); extern long double __nexttowardl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double nextdownl (long double __x) throw (); extern long double __nextdownl (long double __x) throw ();
#pragma empty_line
extern long double nextupl (long double __x) throw (); extern long double __nextupl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double remainderl (long double __x, long double __y) throw (); extern long double __remainderl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double scalbnl (long double __x, int __n) throw (); extern long double __scalbnl (long double __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbl (long double __x) throw (); extern int __ilogbl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbl (long double __x) throw (); extern long int __llogbl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double scalblnl (long double __x, long int __n) throw (); extern long double __scalblnl (long double __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double nearbyintl (long double __x) throw (); extern long double __nearbyintl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double roundl (long double __x) throw () __attribute__ ((__const__)); extern long double __roundl (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double truncl (long double __x) throw () __attribute__ ((__const__)); extern long double __truncl (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double remquol (long double __x, long double __y, int *__quo) throw (); extern long double __remquol (long double __x, long double __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintl (long double __x) throw (); extern long int __lrintl (long double __x) throw ();
__extension__
extern long long int llrintl (long double __x) throw (); extern long long int __llrintl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundl (long double __x) throw (); extern long int __lroundl (long double __x) throw ();
__extension__
extern long long int llroundl (long double __x) throw (); extern long long int __llroundl (long double __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double fdiml (long double __x, long double __y) throw (); extern long double __fdiml (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern long double fmaxl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double fminl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double fmal (long double __x, long double __y, long double __z) throw (); extern long double __fmal (long double __x, long double __y, long double __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double roundevenl (long double __x) throw () __attribute__ ((__const__)); extern long double __roundevenl (long double __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpl
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpl
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpl
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpl
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxl
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxl
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxl
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxl
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (long double __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern long double fmaxmagl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fmaxmagl (long double __x, long double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern long double fminmagl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fminmagl (long double __x, long double __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizel (long double *__cx, const long double *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderl
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const long double *__x, const long double *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagl
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const long double *__x, const long double *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern long double getpayloadl (const long double *__x) throw (); extern long double __getpayloadl (const long double *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadl (long double *__x, long double __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigl (long double *__x, long double __payload) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long double scalbl (long double __x, long double __n) throw (); extern long double __scalbl (long double __x, long double __n) throw ();
#pragma line 351 "/usr/include/math.h" 2 3 4
#pragma line 389 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32 acosf32 (_Float32 __x) throw (); extern _Float32 __acosf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 asinf32 (_Float32 __x) throw (); extern _Float32 __asinf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 atanf32 (_Float32 __x) throw (); extern _Float32 __atanf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 atan2f32 (_Float32 __y, _Float32 __x) throw (); extern _Float32 __atan2f32 (_Float32 __y, _Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float32 cosf32 (_Float32 __x) throw (); extern _Float32 __cosf32 (_Float32 __x) throw ();
#pragma empty_line
 extern _Float32 sinf32 (_Float32 __x) throw (); extern _Float32 __sinf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 tanf32 (_Float32 __x) throw (); extern _Float32 __tanf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 coshf32 (_Float32 __x) throw (); extern _Float32 __coshf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 sinhf32 (_Float32 __x) throw (); extern _Float32 __sinhf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 tanhf32 (_Float32 __x) throw (); extern _Float32 __tanhf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) throw (); extern void __sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 acoshf32 (_Float32 __x) throw (); extern _Float32 __acoshf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 asinhf32 (_Float32 __x) throw (); extern _Float32 __asinhf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 atanhf32 (_Float32 __x) throw (); extern _Float32 __atanhf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float32 expf32 (_Float32 __x) throw (); extern _Float32 __expf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 frexpf32 (_Float32 __x, int *__exponent) throw (); extern _Float32 __frexpf32 (_Float32 __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 ldexpf32 (_Float32 __x, int __exponent) throw (); extern _Float32 __ldexpf32 (_Float32 __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float32 logf32 (_Float32 __x) throw (); extern _Float32 __logf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 log10f32 (_Float32 __x) throw (); extern _Float32 __log10f32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 modff32 (_Float32 __x, _Float32 *__iptr) throw (); extern _Float32 __modff32 (_Float32 __x, _Float32 *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 exp10f32 (_Float32 __x) throw (); extern _Float32 __exp10f32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 expm1f32 (_Float32 __x) throw (); extern _Float32 __expm1f32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 log1pf32 (_Float32 __x) throw (); extern _Float32 __log1pf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 logbf32 (_Float32 __x) throw (); extern _Float32 __logbf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 exp2f32 (_Float32 __x) throw (); extern _Float32 __exp2f32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 log2f32 (_Float32 __x) throw (); extern _Float32 __log2f32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float32 powf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __powf32 (_Float32 __x, _Float32 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 sqrtf32 (_Float32 __x) throw (); extern _Float32 __sqrtf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 hypotf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __hypotf32 (_Float32 __x, _Float32 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 cbrtf32 (_Float32 __x) throw (); extern _Float32 __cbrtf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 ceilf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __ceilf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 fabsf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __fabsf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 floorf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __floorf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 fmodf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __fmodf32 (_Float32 __x, _Float32 __y) throw ();
#pragma line 196 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32 copysignf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __copysignf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 nanf32 (const char *__tagb) throw (); extern _Float32 __nanf32 (const char *__tagb) throw ();
#pragma line 217 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32 j0f32 (_Float32) throw (); extern _Float32 __j0f32 (_Float32) throw ();
extern _Float32 j1f32 (_Float32) throw (); extern _Float32 __j1f32 (_Float32) throw ();
extern _Float32 jnf32 (int, _Float32) throw (); extern _Float32 __jnf32 (int, _Float32) throw ();
extern _Float32 y0f32 (_Float32) throw (); extern _Float32 __y0f32 (_Float32) throw ();
extern _Float32 y1f32 (_Float32) throw (); extern _Float32 __y1f32 (_Float32) throw ();
extern _Float32 ynf32 (int, _Float32) throw (); extern _Float32 __ynf32 (int, _Float32) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 erff32 (_Float32) throw (); extern _Float32 __erff32 (_Float32) throw ();
extern _Float32 erfcf32 (_Float32) throw (); extern _Float32 __erfcf32 (_Float32) throw ();
extern _Float32 lgammaf32 (_Float32) throw (); extern _Float32 __lgammaf32 (_Float32) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 tgammaf32 (_Float32) throw (); extern _Float32 __tgammaf32 (_Float32) throw ();
#pragma line 249 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32 lgammaf32_r (_Float32, int *__signgamp) throw (); extern _Float32 __lgammaf32_r (_Float32, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 rintf32 (_Float32 __x) throw (); extern _Float32 __rintf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 nextafterf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __nextafterf32 (_Float32 __x, _Float32 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 nextdownf32 (_Float32 __x) throw (); extern _Float32 __nextdownf32 (_Float32 __x) throw ();
#pragma empty_line
extern _Float32 nextupf32 (_Float32 __x) throw (); extern _Float32 __nextupf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 remainderf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __remainderf32 (_Float32 __x, _Float32 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 scalbnf32 (_Float32 __x, int __n) throw (); extern _Float32 __scalbnf32 (_Float32 __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf32 (_Float32 __x) throw (); extern int __ilogbf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf32 (_Float32 __x) throw (); extern long int __llogbf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 scalblnf32 (_Float32 __x, long int __n) throw (); extern _Float32 __scalblnf32 (_Float32 __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 nearbyintf32 (_Float32 __x) throw (); extern _Float32 __nearbyintf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 roundf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __roundf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 truncf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __truncf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 remquof32 (_Float32 __x, _Float32 __y, int *__quo) throw (); extern _Float32 __remquof32 (_Float32 __x, _Float32 __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf32 (_Float32 __x) throw (); extern long int __lrintf32 (_Float32 __x) throw ();
__extension__
extern long long int llrintf32 (_Float32 __x) throw (); extern long long int __llrintf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf32 (_Float32 __x) throw (); extern long int __lroundf32 (_Float32 __x) throw ();
__extension__
extern long long int llroundf32 (_Float32 __x) throw (); extern long long int __llroundf32 (_Float32 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 fdimf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __fdimf32 (_Float32 __x, _Float32 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 fmaxf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fmaxf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 fminf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fminf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) throw (); extern _Float32 __fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32 roundevenf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __roundevenf32 (_Float32 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf32
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf32
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf32
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf32
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf32
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf32
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf32
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf32
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32 __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern _Float32 fmaxmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fmaxmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32 fminmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fminmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef32 (_Float32 *__cx, const _Float32 *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf32
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float32 *__x, const _Float32 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf32
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float32 *__x, const _Float32 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern _Float32 getpayloadf32 (const _Float32 *__x) throw (); extern _Float32 __getpayloadf32 (const _Float32 *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf32 (_Float32 *__x, _Float32 __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf32 (_Float32 *__x, _Float32 __payload) throw ();
#pragma line 390 "/usr/include/math.h" 2 3 4
#pragma line 406 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64 acosf64 (_Float64 __x) throw (); extern _Float64 __acosf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 asinf64 (_Float64 __x) throw (); extern _Float64 __asinf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 atanf64 (_Float64 __x) throw (); extern _Float64 __atanf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 atan2f64 (_Float64 __y, _Float64 __x) throw (); extern _Float64 __atan2f64 (_Float64 __y, _Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float64 cosf64 (_Float64 __x) throw (); extern _Float64 __cosf64 (_Float64 __x) throw ();
#pragma empty_line
 extern _Float64 sinf64 (_Float64 __x) throw (); extern _Float64 __sinf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 tanf64 (_Float64 __x) throw (); extern _Float64 __tanf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 coshf64 (_Float64 __x) throw (); extern _Float64 __coshf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 sinhf64 (_Float64 __x) throw (); extern _Float64 __sinhf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 tanhf64 (_Float64 __x) throw (); extern _Float64 __tanhf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) throw (); extern void __sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 acoshf64 (_Float64 __x) throw (); extern _Float64 __acoshf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 asinhf64 (_Float64 __x) throw (); extern _Float64 __asinhf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 atanhf64 (_Float64 __x) throw (); extern _Float64 __atanhf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float64 expf64 (_Float64 __x) throw (); extern _Float64 __expf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 frexpf64 (_Float64 __x, int *__exponent) throw (); extern _Float64 __frexpf64 (_Float64 __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 ldexpf64 (_Float64 __x, int __exponent) throw (); extern _Float64 __ldexpf64 (_Float64 __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float64 logf64 (_Float64 __x) throw (); extern _Float64 __logf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 log10f64 (_Float64 __x) throw (); extern _Float64 __log10f64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 modff64 (_Float64 __x, _Float64 *__iptr) throw (); extern _Float64 __modff64 (_Float64 __x, _Float64 *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 exp10f64 (_Float64 __x) throw (); extern _Float64 __exp10f64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 expm1f64 (_Float64 __x) throw (); extern _Float64 __expm1f64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 log1pf64 (_Float64 __x) throw (); extern _Float64 __log1pf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 logbf64 (_Float64 __x) throw (); extern _Float64 __logbf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 exp2f64 (_Float64 __x) throw (); extern _Float64 __exp2f64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 log2f64 (_Float64 __x) throw (); extern _Float64 __log2f64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float64 powf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __powf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 sqrtf64 (_Float64 __x) throw (); extern _Float64 __sqrtf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 hypotf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __hypotf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 cbrtf64 (_Float64 __x) throw (); extern _Float64 __cbrtf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 ceilf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __ceilf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 fabsf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __fabsf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 floorf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __floorf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 fmodf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __fmodf64 (_Float64 __x, _Float64 __y) throw ();
#pragma line 196 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64 copysignf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __copysignf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 nanf64 (const char *__tagb) throw (); extern _Float64 __nanf64 (const char *__tagb) throw ();
#pragma line 217 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64 j0f64 (_Float64) throw (); extern _Float64 __j0f64 (_Float64) throw ();
extern _Float64 j1f64 (_Float64) throw (); extern _Float64 __j1f64 (_Float64) throw ();
extern _Float64 jnf64 (int, _Float64) throw (); extern _Float64 __jnf64 (int, _Float64) throw ();
extern _Float64 y0f64 (_Float64) throw (); extern _Float64 __y0f64 (_Float64) throw ();
extern _Float64 y1f64 (_Float64) throw (); extern _Float64 __y1f64 (_Float64) throw ();
extern _Float64 ynf64 (int, _Float64) throw (); extern _Float64 __ynf64 (int, _Float64) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 erff64 (_Float64) throw (); extern _Float64 __erff64 (_Float64) throw ();
extern _Float64 erfcf64 (_Float64) throw (); extern _Float64 __erfcf64 (_Float64) throw ();
extern _Float64 lgammaf64 (_Float64) throw (); extern _Float64 __lgammaf64 (_Float64) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 tgammaf64 (_Float64) throw (); extern _Float64 __tgammaf64 (_Float64) throw ();
#pragma line 249 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64 lgammaf64_r (_Float64, int *__signgamp) throw (); extern _Float64 __lgammaf64_r (_Float64, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 rintf64 (_Float64 __x) throw (); extern _Float64 __rintf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 nextafterf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __nextafterf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 nextdownf64 (_Float64 __x) throw (); extern _Float64 __nextdownf64 (_Float64 __x) throw ();
#pragma empty_line
extern _Float64 nextupf64 (_Float64 __x) throw (); extern _Float64 __nextupf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 remainderf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __remainderf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 scalbnf64 (_Float64 __x, int __n) throw (); extern _Float64 __scalbnf64 (_Float64 __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf64 (_Float64 __x) throw (); extern int __ilogbf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf64 (_Float64 __x) throw (); extern long int __llogbf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 scalblnf64 (_Float64 __x, long int __n) throw (); extern _Float64 __scalblnf64 (_Float64 __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 nearbyintf64 (_Float64 __x) throw (); extern _Float64 __nearbyintf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 roundf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __roundf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 truncf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __truncf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 remquof64 (_Float64 __x, _Float64 __y, int *__quo) throw (); extern _Float64 __remquof64 (_Float64 __x, _Float64 __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf64 (_Float64 __x) throw (); extern long int __lrintf64 (_Float64 __x) throw ();
__extension__
extern long long int llrintf64 (_Float64 __x) throw (); extern long long int __llrintf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf64 (_Float64 __x) throw (); extern long int __lroundf64 (_Float64 __x) throw ();
__extension__
extern long long int llroundf64 (_Float64 __x) throw (); extern long long int __llroundf64 (_Float64 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 fdimf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __fdimf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 fmaxf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fmaxf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 fminf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fminf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) throw (); extern _Float64 __fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64 roundevenf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __roundevenf64 (_Float64 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf64
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf64
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf64
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf64
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf64
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf64
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf64
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf64
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64 __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern _Float64 fmaxmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fmaxmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64 fminmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fminmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef64 (_Float64 *__cx, const _Float64 *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf64
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float64 *__x, const _Float64 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf64
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float64 *__x, const _Float64 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern _Float64 getpayloadf64 (const _Float64 *__x) throw (); extern _Float64 __getpayloadf64 (const _Float64 *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf64 (_Float64 *__x, _Float64 __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf64 (_Float64 *__x, _Float64 __payload) throw ();
#pragma line 407 "/usr/include/math.h" 2 3 4
#pragma line 420 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 1 3 4
#pragma line 21 "/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyf128 (_Float128 __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __signbitf128 (_Float128 __value) throw ()
     __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int __isinff128 (_Float128 __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __finitef128 (_Float128 __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __isnanf128 (_Float128 __value) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int __iseqsigf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern int __issignalingf128 (_Float128 __value) throw ()
     __attribute__ ((__const__));
#pragma line 421 "/usr/include/math.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float128 acosf128 (_Float128 __x) throw (); extern _Float128 __acosf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 asinf128 (_Float128 __x) throw (); extern _Float128 __asinf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 atanf128 (_Float128 __x) throw (); extern _Float128 __atanf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 atan2f128 (_Float128 __y, _Float128 __x) throw (); extern _Float128 __atan2f128 (_Float128 __y, _Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float128 cosf128 (_Float128 __x) throw (); extern _Float128 __cosf128 (_Float128 __x) throw ();
#pragma empty_line
 extern _Float128 sinf128 (_Float128 __x) throw (); extern _Float128 __sinf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 tanf128 (_Float128 __x) throw (); extern _Float128 __tanf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 coshf128 (_Float128 __x) throw (); extern _Float128 __coshf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 sinhf128 (_Float128 __x) throw (); extern _Float128 __sinhf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 tanhf128 (_Float128 __x) throw (); extern _Float128 __tanhf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf128 (_Float128 __x, _Float128 *__sinx, _Float128 *__cosx) throw (); extern void __sincosf128 (_Float128 __x, _Float128 *__sinx, _Float128 *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 acoshf128 (_Float128 __x) throw (); extern _Float128 __acoshf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 asinhf128 (_Float128 __x) throw (); extern _Float128 __asinhf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 atanhf128 (_Float128 __x) throw (); extern _Float128 __atanhf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float128 expf128 (_Float128 __x) throw (); extern _Float128 __expf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 frexpf128 (_Float128 __x, int *__exponent) throw (); extern _Float128 __frexpf128 (_Float128 __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 ldexpf128 (_Float128 __x, int __exponent) throw (); extern _Float128 __ldexpf128 (_Float128 __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float128 logf128 (_Float128 __x) throw (); extern _Float128 __logf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 log10f128 (_Float128 __x) throw (); extern _Float128 __log10f128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 modff128 (_Float128 __x, _Float128 *__iptr) throw (); extern _Float128 __modff128 (_Float128 __x, _Float128 *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 exp10f128 (_Float128 __x) throw (); extern _Float128 __exp10f128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 expm1f128 (_Float128 __x) throw (); extern _Float128 __expm1f128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 log1pf128 (_Float128 __x) throw (); extern _Float128 __log1pf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 logbf128 (_Float128 __x) throw (); extern _Float128 __logbf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 exp2f128 (_Float128 __x) throw (); extern _Float128 __exp2f128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 log2f128 (_Float128 __x) throw (); extern _Float128 __log2f128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float128 powf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __powf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 sqrtf128 (_Float128 __x) throw (); extern _Float128 __sqrtf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 hypotf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __hypotf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 cbrtf128 (_Float128 __x) throw (); extern _Float128 __cbrtf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 ceilf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __ceilf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 fabsf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __fabsf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 floorf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __floorf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 fmodf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __fmodf128 (_Float128 __x, _Float128 __y) throw ();
#pragma line 196 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float128 copysignf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__)); extern _Float128 __copysignf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 nanf128 (const char *__tagb) throw (); extern _Float128 __nanf128 (const char *__tagb) throw ();
#pragma line 217 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float128 j0f128 (_Float128) throw (); extern _Float128 __j0f128 (_Float128) throw ();
extern _Float128 j1f128 (_Float128) throw (); extern _Float128 __j1f128 (_Float128) throw ();
extern _Float128 jnf128 (int, _Float128) throw (); extern _Float128 __jnf128 (int, _Float128) throw ();
extern _Float128 y0f128 (_Float128) throw (); extern _Float128 __y0f128 (_Float128) throw ();
extern _Float128 y1f128 (_Float128) throw (); extern _Float128 __y1f128 (_Float128) throw ();
extern _Float128 ynf128 (int, _Float128) throw (); extern _Float128 __ynf128 (int, _Float128) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 erff128 (_Float128) throw (); extern _Float128 __erff128 (_Float128) throw ();
extern _Float128 erfcf128 (_Float128) throw (); extern _Float128 __erfcf128 (_Float128) throw ();
extern _Float128 lgammaf128 (_Float128) throw (); extern _Float128 __lgammaf128 (_Float128) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 tgammaf128 (_Float128) throw (); extern _Float128 __tgammaf128 (_Float128) throw ();
#pragma line 249 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float128 lgammaf128_r (_Float128, int *__signgamp) throw (); extern _Float128 __lgammaf128_r (_Float128, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 rintf128 (_Float128 __x) throw (); extern _Float128 __rintf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 nextafterf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __nextafterf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 nextdownf128 (_Float128 __x) throw (); extern _Float128 __nextdownf128 (_Float128 __x) throw ();
#pragma empty_line
extern _Float128 nextupf128 (_Float128 __x) throw (); extern _Float128 __nextupf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 remainderf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __remainderf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 scalbnf128 (_Float128 __x, int __n) throw (); extern _Float128 __scalbnf128 (_Float128 __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf128 (_Float128 __x) throw (); extern int __ilogbf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf128 (_Float128 __x) throw (); extern long int __llogbf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 scalblnf128 (_Float128 __x, long int __n) throw (); extern _Float128 __scalblnf128 (_Float128 __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 nearbyintf128 (_Float128 __x) throw (); extern _Float128 __nearbyintf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 roundf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __roundf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 truncf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __truncf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 remquof128 (_Float128 __x, _Float128 __y, int *__quo) throw (); extern _Float128 __remquof128 (_Float128 __x, _Float128 __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf128 (_Float128 __x) throw (); extern long int __lrintf128 (_Float128 __x) throw ();
__extension__
extern long long int llrintf128 (_Float128 __x) throw (); extern long long int __llrintf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf128 (_Float128 __x) throw (); extern long int __lroundf128 (_Float128 __x) throw ();
__extension__
extern long long int llroundf128 (_Float128 __x) throw (); extern long long int __llroundf128 (_Float128 __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 fdimf128 (_Float128 __x, _Float128 __y) throw (); extern _Float128 __fdimf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float128 fmaxf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__)); extern _Float128 __fmaxf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 fminf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__)); extern _Float128 __fminf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 fmaf128 (_Float128 __x, _Float128 __y, _Float128 __z) throw (); extern _Float128 __fmaf128 (_Float128 __x, _Float128 __y, _Float128 __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float128 roundevenf128 (_Float128 __x) throw () __attribute__ ((__const__)); extern _Float128 __roundevenf128 (_Float128 __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf128
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf128
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf128
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf128
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf128
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf128
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf128
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf128
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float128 __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern _Float128 fmaxmagf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__)); extern _Float128 __fmaxmagf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float128 fminmagf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__)); extern _Float128 __fminmagf128 (_Float128 __x, _Float128 __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef128 (_Float128 *__cx, const _Float128 *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf128
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float128 *__x, const _Float128 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf128
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float128 *__x, const _Float128 *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern _Float128 getpayloadf128 (const _Float128 *__x) throw (); extern _Float128 __getpayloadf128 (const _Float128 *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf128 (_Float128 *__x, _Float128 __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf128 (_Float128 *__x, _Float128 __payload) throw ();
#pragma line 424 "/usr/include/math.h" 2 3 4
#pragma line 440 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32x acosf32x (_Float32x __x) throw (); extern _Float32x __acosf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x asinf32x (_Float32x __x) throw (); extern _Float32x __asinf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x atanf32x (_Float32x __x) throw (); extern _Float32x __atanf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x atan2f32x (_Float32x __y, _Float32x __x) throw (); extern _Float32x __atan2f32x (_Float32x __y, _Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float32x cosf32x (_Float32x __x) throw (); extern _Float32x __cosf32x (_Float32x __x) throw ();
#pragma empty_line
 extern _Float32x sinf32x (_Float32x __x) throw (); extern _Float32x __sinf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x tanf32x (_Float32x __x) throw (); extern _Float32x __tanf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x coshf32x (_Float32x __x) throw (); extern _Float32x __coshf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x sinhf32x (_Float32x __x) throw (); extern _Float32x __sinhf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x tanhf32x (_Float32x __x) throw (); extern _Float32x __tanhf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) throw (); extern void __sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x acoshf32x (_Float32x __x) throw (); extern _Float32x __acoshf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x asinhf32x (_Float32x __x) throw (); extern _Float32x __asinhf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x atanhf32x (_Float32x __x) throw (); extern _Float32x __atanhf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float32x expf32x (_Float32x __x) throw (); extern _Float32x __expf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x frexpf32x (_Float32x __x, int *__exponent) throw (); extern _Float32x __frexpf32x (_Float32x __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x ldexpf32x (_Float32x __x, int __exponent) throw (); extern _Float32x __ldexpf32x (_Float32x __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float32x logf32x (_Float32x __x) throw (); extern _Float32x __logf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x log10f32x (_Float32x __x) throw (); extern _Float32x __log10f32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x modff32x (_Float32x __x, _Float32x *__iptr) throw (); extern _Float32x __modff32x (_Float32x __x, _Float32x *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x exp10f32x (_Float32x __x) throw (); extern _Float32x __exp10f32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x expm1f32x (_Float32x __x) throw (); extern _Float32x __expm1f32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x log1pf32x (_Float32x __x) throw (); extern _Float32x __log1pf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x logbf32x (_Float32x __x) throw (); extern _Float32x __logbf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x exp2f32x (_Float32x __x) throw (); extern _Float32x __exp2f32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x log2f32x (_Float32x __x) throw (); extern _Float32x __log2f32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float32x powf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __powf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x sqrtf32x (_Float32x __x) throw (); extern _Float32x __sqrtf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x hypotf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __hypotf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x cbrtf32x (_Float32x __x) throw (); extern _Float32x __cbrtf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x ceilf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __ceilf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x fabsf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __fabsf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x floorf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __floorf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x fmodf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __fmodf32x (_Float32x __x, _Float32x __y) throw ();
#pragma line 196 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32x copysignf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __copysignf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x nanf32x (const char *__tagb) throw (); extern _Float32x __nanf32x (const char *__tagb) throw ();
#pragma line 217 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32x j0f32x (_Float32x) throw (); extern _Float32x __j0f32x (_Float32x) throw ();
extern _Float32x j1f32x (_Float32x) throw (); extern _Float32x __j1f32x (_Float32x) throw ();
extern _Float32x jnf32x (int, _Float32x) throw (); extern _Float32x __jnf32x (int, _Float32x) throw ();
extern _Float32x y0f32x (_Float32x) throw (); extern _Float32x __y0f32x (_Float32x) throw ();
extern _Float32x y1f32x (_Float32x) throw (); extern _Float32x __y1f32x (_Float32x) throw ();
extern _Float32x ynf32x (int, _Float32x) throw (); extern _Float32x __ynf32x (int, _Float32x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x erff32x (_Float32x) throw (); extern _Float32x __erff32x (_Float32x) throw ();
extern _Float32x erfcf32x (_Float32x) throw (); extern _Float32x __erfcf32x (_Float32x) throw ();
extern _Float32x lgammaf32x (_Float32x) throw (); extern _Float32x __lgammaf32x (_Float32x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x tgammaf32x (_Float32x) throw (); extern _Float32x __tgammaf32x (_Float32x) throw ();
#pragma line 249 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float32x lgammaf32x_r (_Float32x, int *__signgamp) throw (); extern _Float32x __lgammaf32x_r (_Float32x, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x rintf32x (_Float32x __x) throw (); extern _Float32x __rintf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x nextafterf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __nextafterf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x nextdownf32x (_Float32x __x) throw (); extern _Float32x __nextdownf32x (_Float32x __x) throw ();
#pragma empty_line
extern _Float32x nextupf32x (_Float32x __x) throw (); extern _Float32x __nextupf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x remainderf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __remainderf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x scalbnf32x (_Float32x __x, int __n) throw (); extern _Float32x __scalbnf32x (_Float32x __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf32x (_Float32x __x) throw (); extern int __ilogbf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf32x (_Float32x __x) throw (); extern long int __llogbf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x scalblnf32x (_Float32x __x, long int __n) throw (); extern _Float32x __scalblnf32x (_Float32x __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x nearbyintf32x (_Float32x __x) throw (); extern _Float32x __nearbyintf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x roundf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __roundf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x truncf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __truncf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x remquof32x (_Float32x __x, _Float32x __y, int *__quo) throw (); extern _Float32x __remquof32x (_Float32x __x, _Float32x __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf32x (_Float32x __x) throw (); extern long int __lrintf32x (_Float32x __x) throw ();
__extension__
extern long long int llrintf32x (_Float32x __x) throw (); extern long long int __llrintf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf32x (_Float32x __x) throw (); extern long int __lroundf32x (_Float32x __x) throw ();
__extension__
extern long long int llroundf32x (_Float32x __x) throw (); extern long long int __llroundf32x (_Float32x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x fdimf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __fdimf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x fmaxf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fmaxf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x fminf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fminf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) throw (); extern _Float32x __fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float32x roundevenf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __roundevenf32x (_Float32x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf32x
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf32x
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf32x
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf32x
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf32x
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf32x
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf32x
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf32x
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float32x __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern _Float32x fmaxmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fmaxmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float32x fminmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fminmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef32x (_Float32x *__cx, const _Float32x *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf32x
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float32x *__x, const _Float32x *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf32x
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float32x *__x, const _Float32x *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern _Float32x getpayloadf32x (const _Float32x *__x) throw (); extern _Float32x __getpayloadf32x (const _Float32x *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf32x (_Float32x *__x, _Float32x __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf32x (_Float32x *__x, _Float32x __payload) throw ();
#pragma line 441 "/usr/include/math.h" 2 3 4
#pragma line 457 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
#pragma line 53 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64x acosf64x (_Float64x __x) throw (); extern _Float64x __acosf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x asinf64x (_Float64x __x) throw (); extern _Float64x __asinf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x atanf64x (_Float64x __x) throw (); extern _Float64x __atanf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x atan2f64x (_Float64x __y, _Float64x __x) throw (); extern _Float64x __atan2f64x (_Float64x __y, _Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float64x cosf64x (_Float64x __x) throw (); extern _Float64x __cosf64x (_Float64x __x) throw ();
#pragma empty_line
 extern _Float64x sinf64x (_Float64x __x) throw (); extern _Float64x __sinf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x tanf64x (_Float64x __x) throw (); extern _Float64x __tanf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x coshf64x (_Float64x __x) throw (); extern _Float64x __coshf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x sinhf64x (_Float64x __x) throw (); extern _Float64x __sinhf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x tanhf64x (_Float64x __x) throw (); extern _Float64x __tanhf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern void sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) throw (); extern void __sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x acoshf64x (_Float64x __x) throw (); extern _Float64x __acoshf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x asinhf64x (_Float64x __x) throw (); extern _Float64x __asinhf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x atanhf64x (_Float64x __x) throw (); extern _Float64x __atanhf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float64x expf64x (_Float64x __x) throw (); extern _Float64x __expf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x frexpf64x (_Float64x __x, int *__exponent) throw (); extern _Float64x __frexpf64x (_Float64x __x, int *__exponent) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x ldexpf64x (_Float64x __x, int __exponent) throw (); extern _Float64x __ldexpf64x (_Float64x __x, int __exponent) throw ();
#pragma empty_line
#pragma empty_line
 extern _Float64x logf64x (_Float64x __x) throw (); extern _Float64x __logf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x log10f64x (_Float64x __x) throw (); extern _Float64x __log10f64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x modff64x (_Float64x __x, _Float64x *__iptr) throw (); extern _Float64x __modff64x (_Float64x __x, _Float64x *__iptr) throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x exp10f64x (_Float64x __x) throw (); extern _Float64x __exp10f64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x expm1f64x (_Float64x __x) throw (); extern _Float64x __expm1f64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x log1pf64x (_Float64x __x) throw (); extern _Float64x __log1pf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x logbf64x (_Float64x __x) throw (); extern _Float64x __logbf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x exp2f64x (_Float64x __x) throw (); extern _Float64x __exp2f64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x log2f64x (_Float64x __x) throw (); extern _Float64x __log2f64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 extern _Float64x powf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __powf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x sqrtf64x (_Float64x __x) throw (); extern _Float64x __sqrtf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x hypotf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __hypotf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x cbrtf64x (_Float64x __x) throw (); extern _Float64x __cbrtf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x ceilf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __ceilf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x fabsf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __fabsf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x floorf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __floorf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x fmodf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __fmodf64x (_Float64x __x, _Float64x __y) throw ();
#pragma line 196 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64x copysignf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __copysignf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x nanf64x (const char *__tagb) throw (); extern _Float64x __nanf64x (const char *__tagb) throw ();
#pragma line 217 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64x j0f64x (_Float64x) throw (); extern _Float64x __j0f64x (_Float64x) throw ();
extern _Float64x j1f64x (_Float64x) throw (); extern _Float64x __j1f64x (_Float64x) throw ();
extern _Float64x jnf64x (int, _Float64x) throw (); extern _Float64x __jnf64x (int, _Float64x) throw ();
extern _Float64x y0f64x (_Float64x) throw (); extern _Float64x __y0f64x (_Float64x) throw ();
extern _Float64x y1f64x (_Float64x) throw (); extern _Float64x __y1f64x (_Float64x) throw ();
extern _Float64x ynf64x (int, _Float64x) throw (); extern _Float64x __ynf64x (int, _Float64x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x erff64x (_Float64x) throw (); extern _Float64x __erff64x (_Float64x) throw ();
extern _Float64x erfcf64x (_Float64x) throw (); extern _Float64x __erfcf64x (_Float64x) throw ();
extern _Float64x lgammaf64x (_Float64x) throw (); extern _Float64x __lgammaf64x (_Float64x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x tgammaf64x (_Float64x) throw (); extern _Float64x __tgammaf64x (_Float64x) throw ();
#pragma line 249 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern _Float64x lgammaf64x_r (_Float64x, int *__signgamp) throw (); extern _Float64x __lgammaf64x_r (_Float64x, int *__signgamp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x rintf64x (_Float64x __x) throw (); extern _Float64x __rintf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x nextafterf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __nextafterf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x nextdownf64x (_Float64x __x) throw (); extern _Float64x __nextdownf64x (_Float64x __x) throw ();
#pragma empty_line
extern _Float64x nextupf64x (_Float64x __x) throw (); extern _Float64x __nextupf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x remainderf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __remainderf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x scalbnf64x (_Float64x __x, int __n) throw (); extern _Float64x __scalbnf64x (_Float64x __x, int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int ilogbf64x (_Float64x __x) throw (); extern int __ilogbf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int llogbf64x (_Float64x __x) throw (); extern long int __llogbf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x scalblnf64x (_Float64x __x, long int __n) throw (); extern _Float64x __scalblnf64x (_Float64x __x, long int __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x nearbyintf64x (_Float64x __x) throw (); extern _Float64x __nearbyintf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x roundf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __roundf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x truncf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __truncf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x remquof64x (_Float64x __x, _Float64x __y, int *__quo) throw (); extern _Float64x __remquof64x (_Float64x __x, _Float64x __y, int *__quo) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lrintf64x (_Float64x __x) throw (); extern long int __lrintf64x (_Float64x __x) throw ();
__extension__
extern long long int llrintf64x (_Float64x __x) throw (); extern long long int __llrintf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern long int lroundf64x (_Float64x __x) throw (); extern long int __lroundf64x (_Float64x __x) throw ();
__extension__
extern long long int llroundf64x (_Float64x __x) throw (); extern long long int __llroundf64x (_Float64x __x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x fdimf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __fdimf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x fmaxf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fmaxf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x fminf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fminf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) throw (); extern _Float64x __fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern _Float64x roundevenf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __roundevenf64x (_Float64x __x) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpf64x
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpf64x
#pragma line 344 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw ()
                            ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpf64x
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpf64x
#pragma line 349 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw ()
                              ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __intmax_t
 fromfpxf64x
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw (); extern __intmax_t
 __fromfpxf64x
#pragma line 355 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw ()
                             ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern __uintmax_t
 ufromfpxf64x
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw (); extern __uintmax_t
 __ufromfpxf64x
#pragma line 361 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (_Float64x __x, int __round, unsigned int __width) throw ()
                               ;
#pragma empty_line
#pragma empty_line
extern _Float64x fmaxmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fmaxmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern _Float64x fminmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fminmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
extern int canonicalizef64x (_Float64x *__cx, const _Float64x *__x) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int
 totalorderf64x
#pragma line 376 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float64x *__x, const _Float64x *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern int
 totalordermagf64x
#pragma line 381 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
 (const _Float64x *__x, const _Float64x *__y) throw ()
#pragma empty_line
     __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
extern _Float64x getpayloadf64x (const _Float64x *__x) throw (); extern _Float64x __getpayloadf64x (const _Float64x *__x) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadf64x (_Float64x *__x, _Float64x __payload) throw ();
#pragma empty_line
#pragma empty_line
extern int setpayloadsigf64x (_Float64x *__x, _Float64x __payload) throw ();
#pragma line 458 "/usr/include/math.h" 2 3 4
#pragma line 503 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern float fadd (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fdiv (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fmul (double __x, double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fsub (double __x, double __y) throw ();
#pragma line 504 "/usr/include/math.h" 2 3 4
#pragma line 517 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern float faddl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fdivl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fmull (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern float fsubl (long double __x, long double __y) throw ();
#pragma line 518 "/usr/include/math.h" 2 3 4
#pragma line 537 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern double daddl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern double ddivl (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern double dmull (long double __x, long double __y) throw ();
#pragma empty_line
#pragma empty_line
extern double dsubl (long double __x, long double __y) throw ();
#pragma line 538 "/usr/include/math.h" 2 3 4
#pragma line 616 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32divf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32mulf32x (_Float32x __x, _Float32x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32subf32x (_Float32x __x, _Float32x __y) throw ();
#pragma line 617 "/usr/include/math.h" 2 3 4
#pragma line 626 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32divf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32mulf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32subf64 (_Float64 __x, _Float64 __y) throw ();
#pragma line 627 "/usr/include/math.h" 2 3 4
#pragma line 636 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32divf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32mulf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32subf64x (_Float64x __x, _Float64x __y) throw ();
#pragma line 637 "/usr/include/math.h" 2 3 4
#pragma line 646 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32divf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32mulf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32 f32subf128 (_Float128 __x, _Float128 __y) throw ();
#pragma line 647 "/usr/include/math.h" 2 3 4
#pragma line 666 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xdivf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xmulf64 (_Float64 __x, _Float64 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xsubf64 (_Float64 __x, _Float64 __y) throw ();
#pragma line 667 "/usr/include/math.h" 2 3 4
#pragma line 676 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xdivf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xmulf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xsubf64x (_Float64x __x, _Float64x __y) throw ();
#pragma line 677 "/usr/include/math.h" 2 3 4
#pragma line 686 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xdivf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xmulf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float32x f32xsubf128 (_Float128 __x, _Float128 __y) throw ();
#pragma line 687 "/usr/include/math.h" 2 3 4
#pragma line 706 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float64 f64addf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64divf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64mulf64x (_Float64x __x, _Float64x __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64subf64x (_Float64x __x, _Float64x __y) throw ();
#pragma line 707 "/usr/include/math.h" 2 3 4
#pragma line 716 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float64 f64addf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64divf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64mulf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64 f64subf128 (_Float128 __x, _Float128 __y) throw ();
#pragma line 717 "/usr/include/math.h" 2 3 4
#pragma line 736 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 1 3 4
#pragma line 24 "/usr/include/x86_64-linux-gnu/bits/mathcalls-narrow.h" 3 4
extern _Float64x f64xaddf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x f64xdivf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x f64xmulf128 (_Float128 __x, _Float128 __y) throw ();
#pragma empty_line
#pragma empty_line
extern _Float64x f64xsubf128 (_Float128 __x, _Float128 __y) throw ();
#pragma line 737 "/usr/include/math.h" 2 3 4
#pragma line 773 "/usr/include/math.h" 3 4
extern int signgam;
#pragma line 853 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =
#pragma empty_line
      0,
    FP_INFINITE =
#pragma empty_line
      1,
    FP_ZERO =
#pragma empty_line
      2,
    FP_SUBNORMAL =
#pragma empty_line
      3,
    FP_NORMAL =
#pragma empty_line
      4
  };
#pragma line 973 "/usr/include/math.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/iscanonical.h" 1 3 4
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/iscanonical.h" 3 4
extern int __iscanonicall (long double __x)
     throw () __attribute__ ((__const__));
#pragma line 46 "/usr/include/x86_64-linux-gnu/bits/iscanonical.h" 3 4
extern "C++" {
inline int iscanonical (float __val) { return ((void) (__typeof (__val)) (__val), 1); }
inline int iscanonical (double __val) { return ((void) (__typeof (__val)) (__val), 1); }
inline int iscanonical (long double __val) { return __iscanonicall (__val); }
#pragma empty_line
inline int iscanonical (_Float128 __val) { return ((void) (__typeof (__val)) (__val), 1); }
#pragma empty_line
}
#pragma line 974 "/usr/include/math.h" 2 3 4
#pragma line 985 "/usr/include/math.h" 3 4
extern "C++" {
inline int issignaling (float __val) { return __issignalingf (__val); }
inline int issignaling (double __val) { return __issignaling (__val); }
inline int
issignaling (long double __val)
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  return __issignalingl (__val);
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
inline int issignaling (_Float128 __val) { return __issignalingf128 (__val); }
#pragma empty_line
}
#pragma line 1016 "/usr/include/math.h" 3 4
extern "C++" {
#pragma line 1047 "/usr/include/math.h" 3 4
template <class __T> inline bool
iszero (__T __val)
{
  return __val == 0;
}
#pragma empty_line
}
#pragma line 1278 "/usr/include/math.h" 3 4
extern "C++" {
template<typename> struct __iseqsig_type;
#pragma empty_line
template<> struct __iseqsig_type<float>
{
  static int __call (float __x, float __y) throw ()
  {
    return __iseqsigf (__x, __y);
  }
};
#pragma empty_line
template<> struct __iseqsig_type<double>
{
  static int __call (double __x, double __y) throw ()
  {
    return __iseqsig (__x, __y);
  }
};
#pragma empty_line
template<> struct __iseqsig_type<long double>
{
  static int __call (long double __x, long double __y) throw ()
  {
#pragma empty_line
    return __iseqsigl (__x, __y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  }
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
template<> struct __iseqsig_type<_Float128>
{
  static int __call (_Float128 __x, _Float128 __y) throw ()
  {
    return __iseqsigf128 (__x, __y);
  }
};
#pragma empty_line
#pragma empty_line
template<typename _T1, typename _T2>
inline int
iseqsig (_T1 __x, _T2 __y) throw ()
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef __typeof (((__x) + (__y) + 0.0f)) _T3;
#pragma empty_line
  return __iseqsig_type<_T3>::__call (__x, __y);
}
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 47 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 2 3
#pragma line 77 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  inline double
  abs(double __x)
  { return __builtin_fabs(__x); }
#pragma empty_line
  inline float
  abs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    abs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::acos;
#pragma empty_line
  inline float
  acos(float __x)
  { return __builtin_acosf(__x); }
#pragma empty_line
  inline long double
  acos(long double __x)
  { return __builtin_acosl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    acos(_Tp __x)
    { return __builtin_acos(__x); }
#pragma empty_line
  using ::asin;
#pragma empty_line
  inline float
  asin(float __x)
  { return __builtin_asinf(__x); }
#pragma empty_line
  inline long double
  asin(long double __x)
  { return __builtin_asinl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    asin(_Tp __x)
    { return __builtin_asin(__x); }
#pragma empty_line
  using ::atan;
#pragma empty_line
  inline float
  atan(float __x)
  { return __builtin_atanf(__x); }
#pragma empty_line
  inline long double
  atan(long double __x)
  { return __builtin_atanl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    atan(_Tp __x)
    { return __builtin_atan(__x); }
#pragma empty_line
  using ::atan2;
#pragma empty_line
  inline float
  atan2(float __y, float __x)
  { return __builtin_atan2f(__y, __x); }
#pragma empty_line
  inline long double
  atan2(long double __y, long double __x)
  { return __builtin_atan2l(__y, __x); }
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    atan2(_Tp __y, _Up __x)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return atan2(__type(__y), __type(__x));
    }
#pragma empty_line
  using ::ceil;
#pragma empty_line
  inline float
  ceil(float __x)
  { return __builtin_ceilf(__x); }
#pragma empty_line
  inline long double
  ceil(long double __x)
  { return __builtin_ceill(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    ceil(_Tp __x)
    { return __builtin_ceil(__x); }
#pragma empty_line
  using ::cos;
#pragma empty_line
  inline float
  cos(float __x)
  { return __builtin_cosf(__x); }
#pragma empty_line
  inline long double
  cos(long double __x)
  { return __builtin_cosl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    cos(_Tp __x)
    { return __builtin_cos(__x); }
#pragma empty_line
  using ::cosh;
#pragma empty_line
  inline float
  cosh(float __x)
  { return __builtin_coshf(__x); }
#pragma empty_line
  inline long double
  cosh(long double __x)
  { return __builtin_coshl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    cosh(_Tp __x)
    { return __builtin_cosh(__x); }
#pragma empty_line
  using ::exp;
#pragma empty_line
  inline float
  exp(float __x)
  { return __builtin_expf(__x); }
#pragma empty_line
  inline long double
  exp(long double __x)
  { return __builtin_expl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    exp(_Tp __x)
    { return __builtin_exp(__x); }
#pragma empty_line
  using ::fabs;
#pragma empty_line
  inline float
  fabs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline long double
  fabs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    fabs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::floor;
#pragma empty_line
  inline float
  floor(float __x)
  { return __builtin_floorf(__x); }
#pragma empty_line
  inline long double
  floor(long double __x)
  { return __builtin_floorl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    floor(_Tp __x)
    { return __builtin_floor(__x); }
#pragma empty_line
  using ::fmod;
#pragma empty_line
  inline float
  fmod(float __x, float __y)
  { return __builtin_fmodf(__x, __y); }
#pragma empty_line
  inline long double
  fmod(long double __x, long double __y)
  { return __builtin_fmodl(__x, __y); }
#pragma empty_line
  using ::frexp;
#pragma empty_line
  inline float
  frexp(float __x, int* __exp)
  { return __builtin_frexpf(__x, __exp); }
#pragma empty_line
  inline long double
  frexp(long double __x, int* __exp)
  { return __builtin_frexpl(__x, __exp); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    frexp(_Tp __x, int* __exp)
    { return __builtin_frexp(__x, __exp); }
#pragma empty_line
  using ::ldexp;
#pragma empty_line
  inline float
  ldexp(float __x, int __exp)
  { return __builtin_ldexpf(__x, __exp); }
#pragma empty_line
  inline long double
  ldexp(long double __x, int __exp)
  { return __builtin_ldexpl(__x, __exp); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
  ldexp(_Tp __x, int __exp)
  { return __builtin_ldexp(__x, __exp); }
#pragma empty_line
  using ::log;
#pragma empty_line
  inline float
  log(float __x)
  { return __builtin_logf(__x); }
#pragma empty_line
  inline long double
  log(long double __x)
  { return __builtin_logl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    log(_Tp __x)
    { return __builtin_log(__x); }
#pragma empty_line
  using ::log10;
#pragma empty_line
  inline float
  log10(float __x)
  { return __builtin_log10f(__x); }
#pragma empty_line
  inline long double
  log10(long double __x)
  { return __builtin_log10l(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    log10(_Tp __x)
    { return __builtin_log10(__x); }
#pragma empty_line
  using ::modf;
#pragma empty_line
  inline float
  modf(float __x, float* __iptr)
  { return __builtin_modff(__x, __iptr); }
#pragma empty_line
  inline long double
  modf(long double __x, long double* __iptr)
  { return __builtin_modfl(__x, __iptr); }
#pragma empty_line
  using ::pow;
#pragma empty_line
  inline float
  pow(float __x, float __y)
  { return __builtin_powf(__x, __y); }
#pragma empty_line
  inline long double
  pow(long double __x, long double __y)
  { return __builtin_powl(__x, __y); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline double
  pow(double __x, int __i)
  { return __builtin_powi(__x, __i); }
#pragma empty_line
  inline float
  pow(float __x, int __n)
  { return __builtin_powif(__x, __n); }
#pragma empty_line
  inline long double
  pow(long double __x, int __n)
  { return __builtin_powil(__x, __n); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    pow(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return pow(__type(__x), __type(__y));
    }
#pragma empty_line
  using ::sin;
#pragma empty_line
  inline float
  sin(float __x)
  { return __builtin_sinf(__x); }
#pragma empty_line
  inline long double
  sin(long double __x)
  { return __builtin_sinl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sin(_Tp __x)
    { return __builtin_sin(__x); }
#pragma empty_line
  using ::sinh;
#pragma empty_line
  inline float
  sinh(float __x)
  { return __builtin_sinhf(__x); }
#pragma empty_line
  inline long double
  sinh(long double __x)
  { return __builtin_sinhl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sinh(_Tp __x)
    { return __builtin_sinh(__x); }
#pragma empty_line
  using ::sqrt;
#pragma empty_line
  inline float
  sqrt(float __x)
  { return __builtin_sqrtf(__x); }
#pragma empty_line
  inline long double
  sqrt(long double __x)
  { return __builtin_sqrtl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    sqrt(_Tp __x)
    { return __builtin_sqrt(__x); }
#pragma empty_line
  using ::tan;
#pragma empty_line
  inline float
  tan(float __x)
  { return __builtin_tanf(__x); }
#pragma empty_line
  inline long double
  tan(long double __x)
  { return __builtin_tanl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    tan(_Tp __x)
    { return __builtin_tan(__x); }
#pragma empty_line
  using ::tanh;
#pragma empty_line
  inline float
  tanh(float __x)
  { return __builtin_tanhf(__x); }
#pragma empty_line
  inline long double
  tanh(long double __x)
  { return __builtin_tanhl(__x); }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
        double>::__type
    tanh(_Tp __x)
    { return __builtin_tanh(__x); }
#pragma empty_line
#pragma empty_line
}
#pragma line 481 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma line 731 "/opt/Xilinx/Vivado_HLS/2017.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cmath" 3
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    fpclassify(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_fpclassify(0, 1, 4,
      3, 2, __type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isfinite(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isfinite(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isinf(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isinf(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isnan(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isnan(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isnormal(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isnormal(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    signbit(_Tp __f)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_signbit(__type(__f));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isgreater(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isgreater(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isgreaterequal(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isgreaterequal(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isless(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isless(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    islessequal(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_islessequal(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    islessgreater(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_islessgreater(__type(__f1), __type(__f2));
    }
#pragma empty_line
  template<typename _Tp>
    inline typename __gnu_cxx::__enable_if<__is_arithmetic<_Tp>::__value,
        int>::__type
    isunordered(_Tp __f1, _Tp __f2)
    {
      typedef typename __gnu_cxx::__promote<_Tp>::__type __type;
      return __builtin_isunordered(__type(__f1), __type(__f2));
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 70 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul.h" 2
using namespace std;
#pragma line 80 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul.h"
typedef char mat_a_t;
typedef char mat_b_t;
typedef short result_t;
#pragma empty_line
#pragma empty_line
void matrixmul(
      mat_a_t a[3][3],
      mat_b_t b[3][3],
      result_t res[3][3]);
#pragma line 68 "/home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab1/matrixmul_test.cpp" 2
#pragma empty_line
using namespace std;
#pragma empty_line
int main(int argc, char **argv)
{
   mat_a_t in_mat_a[3][3] = {
      {11, 12, 13},
      {14, 15, 16},
      {17, 18 ,19}
   };
   mat_b_t in_mat_b[3][3] = {
      {21, 22, 23},
      {24, 25, 26},
      {27, 28, 29}
   };
   result_t hw_result[3][3], sw_result[3][3];
   int err_cnt = 0;
#pragma empty_line
#pragma empty_line
#pragma empty_line
   for(int i = 0; i < 3; i++) {
      for(int j = 0; j < 3; j++) {
#pragma empty_line
         sw_result[i][j] = 0;
#pragma empty_line
         for(int k = 0; k < 3; k++) {
            sw_result[i][j] += in_mat_a[i][k] * in_mat_b[k][j];
         }
      }
   }
#pragma empty_line
#pragma empty_line
#pragma empty_line
   matrixmul(in_mat_a, in_mat_b, hw_result);
#pragma empty_line
#pragma empty_line
#pragma empty_line
   cout << "{" << endl;
#pragma empty_line
   for (int i = 0; i < 3; i++) {
      cout << "{";
      for (int j = 0; j < 3; j++) {
#pragma empty_line
         cout << hw_result[i][j];
#pragma empty_line
         if (hw_result[i][j] != sw_result[i][j]) {
            err_cnt++;
            cout << "*";
         }
#pragma empty_line
#pragma empty_line
#pragma empty_line
         if (j == 3 - 1)
            cout << "}" << endl;
         else
            cout << ",";
      }
   }
   cout << "}" << endl;
#pragma empty_line
#pragma empty_line
   if (err_cnt)
      cout << "ERROR: " << err_cnt << " mismatches detected!" << endl;
   else
      cout << "Test passed." << endl;
#pragma empty_line
   return err_cnt;
}
