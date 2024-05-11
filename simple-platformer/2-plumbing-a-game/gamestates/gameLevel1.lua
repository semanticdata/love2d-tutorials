-- Import our libraries.
bump = require 'libs.bump.bump'
Gamestate = require 'libs.hump.gamestate'

-- Import our Entity system.
local Entities = require 'simple-platformer.4-better-playerr.entities.Entities'
local Entity = require 'simple-platformer.4-better-playerr.entities.Entity'

-- Create our Gamestate
local gameLevel1 = Gamestate.new()

-- Import the Entities we build.
local Player = require 'simple-platformer.4-better-playerr.entities.player'
local Ground = require 'simple-platformer.4-better-playerr.entities.ground'

-- Declare a couple immportant variables
player = nil
world = nil

function gameLevel1:enter()
  -- Game Levels do need collisions.
  world = bump.newWorld(16) -- Create a world for bump to function in.

  -- Initialize our Entity System
  Entities:enter()
  player = Player(world, 16, 16)
  ground_0 = Ground(world, 120, 360, 640, 16)
  ground_1 = Ground(world, 0, 448, 640, 16)

  -- Add instances of our entities to the Entity List
  Entities:addMany({ player, ground_0, ground_1 })
end

function gameLevel1:update(dt)
  Entities:update(dt) -- this executes the update function for each individual Entity
end

function gameLevel1:draw()
  Entities:draw() -- this executes the draw function for each individual Entity
end

return gameLevel1
