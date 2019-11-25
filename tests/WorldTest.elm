module WorldTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

import Physics2d.World as World

import Internal.Vec2 as Vec2 exposing (Vec2, vec2)


explicitEuler : World.Particle -> World.Particle
explicitEuler particle =
    { position = Vec2.plus particle.position particle.velocity
    , velocity = particle.velocity }


worldSuite : Test
worldSuite =
    describe "Tests on World"
        [ test "Empty world" <|
                \_ ->
                    let
                        e = World.empty
                    in
                        Expect.equal e World.empty
        ]
