let print_number n =
  if n < 10 then
    (print_int 0; print_int n)
  else
    print_int n

let rec ft_print_comb2 () =
  let rec print_combinations i j =
    if i <= 98 then
      begin
        print_number i;
        print_char ' ';
        print_number j;
        if not (i = 98 && j = 99) then
          begin
            print_char ',';
            print_char ' '
          end;
        if j < 99 then
          print_combinations i (j + 1)
        else if i < 98 then
          print_combinations (i + 1) (i + 2)
      end
  in
  print_combinations 0 1;
  print_char '\n'

(*
let () = 
  ft_print_comb2 ()
*)
