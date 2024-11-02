let rotate_char n c =
  let is_upper = c >= 'A' && c <= 'Z' in
  let is_lower = c >= 'a' && c <= 'z' in
  
  if is_upper || is_lower then
    let base = if is_upper then int_of_char 'A' else int_of_char 'a' in
    let c_pos = (int_of_char c) - base in
    let new_pos = (c_pos + n) mod 26 in
    char_of_int (new_pos + base)
  else
    c

let ft_rot_n n str = 
  String.map (rotate_char n) str

(*
let () =
  print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 42 "0123456789");
  print_endline (ft_rot_n 2 "OI2EAS67B9");
  print_endline (ft_rot_n 0 "Damned !");
  print_endline (ft_rot_n 42 "");
  print_endline (ft_rot_n 1 "NBzlk qnbjr !")
*)
