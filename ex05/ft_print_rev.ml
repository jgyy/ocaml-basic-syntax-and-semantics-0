let ft_print_rev str =
  let len = String.length str in
  let rec print_reverse_helper i =
    if i >= 0 then begin
      print_char (String.get str i);
      print_reverse_helper (i - 1)
    end
  in
  print_reverse_helper (len - 1);
  print_char '\n'

(*
let () =
  ft_print_rev "Hello world !";
  ft_print_rev "";
  ft_print_rev "42";
  ft_print_rev "ocaml"
*)
