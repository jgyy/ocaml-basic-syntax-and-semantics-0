let ft_print_comb () =
  let rec print_nums i j k =
    let print_combination () =
      print_int i;
      print_int j;
      print_int k
    in
    if i = 7 && j = 8 && k = 9 then
      begin
        print_combination ();
        print_string "\n"
      end
    else
      begin
        print_combination ();
        print_string ", "
      end;
    if k < 9 then
      print_nums i j (k + 1)
    else if j < 8 then
      print_nums i (j + 1) (j + 2)
    else if i < 7 then
      print_nums (i + 1) (i + 2) (i + 3)
  in
  print_nums 0 1 2

(*
let () = 
  ft_print_comb ()
*)
