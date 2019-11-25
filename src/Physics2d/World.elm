module Physics2d.World exposing (Particle, World, empty,
                                 addParticle, getParticles, stepScene)

import Internal.Vec2 as Vec2 exposing (Vec2)

import Array exposing (Array)

type alias Particle =
    { position: Vec2
    , velocity: Vec2
    }

type alias World =
    { particles: Array Particle }

{-
 An empty new world.
-}
empty : World
empty = { particles = Array.empty }

{-
 Adds a particle to the world.
-}
addParticle : Particle -> World -> World
addParticle particle world
    = { world | particles = Array.push particle world.particles }

{-
 Gets all particles from the world.
-}
getParticles : World -> List Particle
getParticles  world
    = Array.toList world.particles

{-
 Applies an integrator function to each element of the world
 Explicit Euler integrator
-}
stepScene: (Particle -> Particle) -> World -> World
stepScene integrator world =
    let particles = Array.map integrator world.particles in
    { particles = particles }
