(* $Id: dutil.mli,v 5.2 2006-10-04 21:26:12 ddr Exp $ *)
(* Copyright (c) 2006 INRIA *)

open Config;
open Dbdisk;

type name_index_data = array (array Def.iper);
type strings_of_fsname = array (array Def.istr);

value magic_gwb : string;
value magic_gwb_iso_8859_1 : string;
value table_size : int;

value check_magic : in_channel -> unit;
value compare_istr_fun : Dbdisk.base_data -> Def.istr -> Def.istr -> int;
value compare_names : Dbdisk.base_data -> string -> string -> int;

value dsk_person_misc_names :
  dsk_base -> dsk_person -> (dsk_person -> list dsk_title) -> list string;

value dsk_nobtit : config -> dsk_base -> dsk_person -> list dsk_title;

value poi : dsk_base -> Def.iper -> dsk_person;
value sou : dsk_base -> Def.istr -> string;
value p_first_name : dsk_base -> dsk_person -> string;
value p_surname : dsk_base -> dsk_person -> string;