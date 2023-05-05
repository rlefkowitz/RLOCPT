let eps = 0.000001

let abs x = if x < 0. then ~-.x else x

let sqrt x = 
  let rec sqrt_aux (acc : float) : float = 
    if abs (x -. acc *. acc) < eps then acc 
    else sqrt_aux ((acc +. x /. acc) /. 2.)
  in sqrt_aux x /. 2.
