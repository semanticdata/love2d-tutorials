debug = true -- Add a quick flag to handle our development process.  Set to false before packaging

-- Pull in the Bump library
bump = require 'libs.bump.bump'

-- Pull in Gamestate from the HUMP library
Gamestate = require 'libs.hump.gamestate'

-- Pull in each of our game states
local mainMenu = require 'simple-platformer.2-plumbing-a-gamee.gamestates.mainMenu'
local gameLevel1 = require 'simple-platformer.2-plumbing-a-gamee.gamestates.gameLevel1'
local pause = require 'simple-platformer.2-plumbing-a-gamee.gamestates.pause'

function love.load()
  Gamestate.registerEvents()
  Gamestate.switch(gameLevel1)
end

function love.keypressed(key)
  if debug and key == "escape" then
    love.event.push("quit")
  end
end
