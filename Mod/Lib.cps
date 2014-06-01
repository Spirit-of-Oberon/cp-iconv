MODULE IconvLib ["iconv"];
IMPORT
   C := CApiTypes;
TYPE
   PtrVoid* = C.p_void;
   PtrChar* = C.p_char;
   Size_t*  = C.size_t;

PROCEDURE [ccall] Open*  ["iconv_open" ] (tocode, fromcode: PtrChar): PtrVoid;
PROCEDURE [ccall] Close* ["iconv_close"] (cd: PtrVoid);
PROCEDURE [ccall] Iconv* ["iconv"] (cd: PtrVoid;
                                    VAR inbuf: PtrChar; VAR inbytes: Size_t;
                                    VAR outbuf: PtrChar; VAR outbytes: Size_t): Size_t;

END IconvLib.