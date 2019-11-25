module Internal.Vec2 exposing (Vec2, vec2, x, y, plus)

type Vec2 = Vec2 Float Float

vec2 : Float -> Float -> Vec2
vec2 xx yy =
    Vec2 xx yy

x : Vec2 -> Float
x v =
    case v of
        Vec2 xx _ -> xx

y : Vec2 -> Float
y v =
    case v of
        Vec2 _ yy -> yy

plus : Vec2 -> Vec2 -> Vec2
plus a b =
    case (a, b) of
        (Vec2 x1 y1, Vec2 x2 y2) -> Vec2 (x1 + x2) (y1 + y2)
