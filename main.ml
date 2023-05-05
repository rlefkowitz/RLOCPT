open Material
open Vec3

let () = begin 
  let m = Diffuse ((0.5, 0.5, 0.9)) in 
  match m with 
  | Nil -> ()
  | Diffuse (v) -> print_string @@ string_of_vec3 v
end