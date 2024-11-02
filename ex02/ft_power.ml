let rec ft_power x n =
  if n = 0 then 1
  else if x = 0 then 0 
  else x * ft_power x (n - 1)

(*
let () =
  let test x n =
    Printf.printf "ft_power %d %d = %d\n" x n (ft_power x n)
  in
  test 2 4;
  test 3 0;
  test 0 5;
  test 5 2;
  test 3 3
*)
