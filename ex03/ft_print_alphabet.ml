let ft_print_alphabet () =
  let rec print_char_range current last =
    print_char current;
    if current < last then
      print_char_range (char_of_int (int_of_char current + 1)) last
  in
  print_char_range 'a' 'z';
  print_char '\n'

let () = ft_print_alphabet ()
