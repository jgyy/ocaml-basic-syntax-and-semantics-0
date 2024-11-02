let ft_string_all pred str =
  let len = String.length str in
  let rec check_all i =
    if i >= len then true
    else if pred (String.get str i) then check_all (i + 1)
    else false
  in
  check_all 0

let main () =
  let is_digit c = c >= '0' && c <= '9' in
  print_string "Test with \"0123456789\": ";
  print_endline (string_of_bool (ft_string_all is_digit "0123456789"));
  
  print_string "Test with \"O12EAS67B9\": ";
  print_endline (string_of_bool (ft_string_all is_digit "O12EAS67B9"));
  
  let is_alpha c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') in
  print_string "Test with \"Hello\": ";
  print_endline (string_of_bool (ft_string_all is_alpha "Hello"));
  
  print_string "Test with \"Hello123\": ";
  print_endline (string_of_bool (ft_string_all is_alpha "Hello123"))

let () = main ()
