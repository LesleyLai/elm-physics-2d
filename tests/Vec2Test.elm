module Vec2Test exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

import Internal.Vec2 as Vec2 exposing (Vec2, vec2)

arithmeticSuite : Test
arithmeticSuite =
    describe "Arithmetic on Vec2"
        [ test "Adding 2 Vec2" <|
                \_ ->
                    let
                        a = vec2 1 2
                        b = vec2 3 4
                        result = vec2 4 6
                    in
                        Expect.equal (Vec2.plus a b) result
        ]
