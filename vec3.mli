(** The type representation for a 3-dimensional vector. *)
type vec3 = float * float * float

(** [x v] is the x-component of [v]. *)
val x : vec3 -> float

(** [y v] is the y-component of [v]. *)
val y : vec3 -> float

(** [z v] is the z-component of [v]. *)
val z : vec3 -> float

(** [string_of_vec3 v] is the string representation of [v]. *)
val string_of_vec3 : vec3 -> string

(** [len2 v] is the length of [v] squared. *)
val len2 : vec3 -> float 

(** [len v] is the length of [v]. *)
val len : vec3 -> float 

(** [dot a b] is the dot product of [a] and [b]. *)
val dot : vec3 -> vec3 -> float

(** [cross a b] is the cross product of [a] and [b]. *)
val cross : vec3 -> vec3 -> vec3

(** [a +<> b] is the component-wise sum of [a] and [b]. *)
val ( +<> ) : vec3 -> vec3 -> vec3

(** [a -<> b] is the component-wise difference of [a] and [b]. *)
val ( -<> ) : vec3 -> vec3 -> vec3

(** [a *<> b] is the component-wise product of [a] and [b]. *)
val ( *<> ) : vec3 -> vec3 -> vec3

(** [~->b] is the component-wise negation of [v]. *)
val ( ~-> ) : vec3 -> vec3

(** [f *.> v] is the component-wise product of each component of [v] and [f]. *)
val ( *.> ) : float -> vec3 -> vec3

(** [v *<. f] is the component-wise product of each component of [v] and [f]. *)
val ( *<. ) : vec3 -> float -> vec3