let rec is_palindrome_helper str start finish =
  if start >= finish then true
  else if String.get str start <> String.get str finish then false
  else is_palindrome_helper str (start + 1) (finish - 1)

let ft_is_palindrome str =
  let len = String.length str in
  if len <= 1 then true
  else is_palindrome_helper str 0 (len - 1)

(*
let test_palindrome str =
  print_string ("Testing \"" ^ str ^ "\": ");
  print_string (if ft_is_palindrome str then "true" else "false");
  print_char '\n'

let () =
  test_palindrome "radar";
  test_palindrome "madam";
  test_palindrome "car";
  test_palindrome "";
  test_palindrome "a";
  test_palindrome "hannah";
  test_palindrome "hello"
*)
