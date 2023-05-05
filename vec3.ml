type vec3 = float * float * float 

open Moremath

let x = function (x, _, _) -> x

let y = function (_, y, _) -> y

let z = function (_, _, z) -> z

let string_of_vec3 = function 
    (x, y, z) -> begin 
      let sof = string_of_float in 
      "(" ^ sof x ^ ", " ^ sof y ^ ", " ^ sof z ^ ")"
    end

let len2 = function (x, y, z) -> x *. x +. y *. y +. z *. z

let len v = sqrt @@ len2 v

let dot a b = 
  match a, b with (u, v, w), (x, y, z) -> u *. x +. v *. y +. w *. z

let cross a b = 
  match a, b with (u, v, w), (x, y, z) -> 
    (v *. z -. w *. y, w *. x -. u *. z, u *. y -. v *. x)

let ( +<> ) a b = 
  match a, b with (u, v, w), (x, y, z) -> (u +. x, v +. y, w +. z)

let ( -<> ) a b = 
  match a, b with (u, v, w), (x, y, z) -> (u -. x, v -. y, w -. z)

let ( *<> ) a b = 
  match a, b with (u, v, w), (x, y, z) -> (u *. x, v *. y, w *. z)

let ( ~-> ) = function (x, y, z) -> (~-.x, ~-.y, ~-.z)

let ( *.> ) f = function(x, y, z) -> (f *. x, f *. y, f *. z)

let ( *<. ) v f = match v with (x, y, z) -> (x *. f, y *. f, z *. f)
