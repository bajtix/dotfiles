syntax keyword Statement asm assert break continue alias enum while import module switch typeid attribute catch default do fn nextcase return var const defer else if macro struct try extern inline for foreach faultdef
syntax keyword Type any void bool float int short isz float128 int128 long uint ushort usz uint128 double ulong byte char float16 bfloat16
syntax keyword Constant true false null
syntax match Special /@\w\+/
syntax match PreProc /$\w\+/
syntax match Comment "//.*$"
syntax region Comment start="/\*" end="\*/" contains=Comment
syntax match Special /[a-zA-Z]*::/
syn region String start=+\(L\|u\|u8\|U\)\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"\(sv\|s\|_\i*\)\=+ end='$'
syn match Character "'.*'"
syn match Operator "?"
syn match Operator "!"
syn match Number /\v(0[xX][0-9a-fA-F]+|0[0-7]+|[0-9]+(\.[0-9]+)?[fFlL]?)/
