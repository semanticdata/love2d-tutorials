# 💜 [LÖVE](https://love2d.org/) - Scrolling Shooter 🔫

![code size](https://img.shields.io/github/languages/code-size/semanticdata/love2d-scrolling-shooter)
![repository size](https://img.shields.io/github/repo-size/semanticdata/love2d-scrolling-shooter)
![commits](https://img.shields.io/github/commit-activity/t/semanticdata/love2d-scrolling-shooter)
![last commit](https://img.shields.io/github/last-commit/semanticdata/love2d-scrolling-shooter)

Simple scrolling shooter demo written in [Lua](https://www.lua.org/) and powered by [LÖVE](https://love2d.org/), a Free and Open-Source 2D Game Engine.

## 🖥️ Tutorial

- [Your First LÖVE Game in 200 Lines](http://www.osmstudios.com/tutorials/your-first-love2d-game-in-200-lines-part-1-of-3)

## ⚡ Getting Started

1. In VS Code, configure `lövelauncher.path` within the LÖVE launcher extension settings with the location to your local `love.exe`.

2. After setting up your location, you will be able to press <kbd>Alt</kbd> + <kbd>L</kbd> to launch **LÖVE** from within VS Code.

## 🎮 Controls

1. Use the *directional keys* to move the player.
2. Use the *spacebar* to shoot.
3. Press <kbd>R</kbd> to restart the game when the player dies.

## 💣 Breakdown

Below is a breakdown of the key components and functionalities of the code:

### Variables

- `canShoot`: Boolean flag to control the player's shooting rate.
- `canShootTimerMax`: Maximum time between shots.
- `canShootTimer`: Current time between shots.
- `createEnemyTimerMax`: Maximum time between enemy creations.
- `createEnemyTimer`: Current time between enemy creations.
- `player`: Table representing the player object with attributes for position, speed, and image.
- `isAlive`: Boolean flag indicating whether the player is alive.
- `score`: Integer representing the player's score.
- `bulletImg`: Image object for the bullet.
- `enemyImg`: Image object for the enemy.
- `gunSound`: Sound object for the gunshot.
- `bullets`: Array containing information about active bullets.
- `enemies`: Array containing information about active enemies.

### Functions

#### `CheckCollision`

- **Purpose:** Determines whether two objects overlap.
- **Parameters:** `x1`, `y1`, `w1`, `h1` (coordinates and dimensions of the first object),
                 `x2`, `y2`, `w2`, `h2` (coordinates and dimensions of the second object).
- **Returns:** True if the objects overlap, False otherwise.

#### `love.load`

- **Purpose:** Loads game assets (player image, enemy image, bullet image, gunshot sound).

#### `love.update`

- **Purpose:** Updates game logic and state.
- **Handles:** player movement, shooting, enemy creation, collision detection, and game restart.

#### `love.draw`

- **Purpose:** Renders game objects and UI elements.
- **Draws:** bullets, enemies, player, and score.
- **Displays:** a message to restart the game if the player is dead.

## 🔧 Debugging

The game includes an optional debug mode to display FPS. Debug mode can be enabled by setting the 'debug' variable to true.

- [ ] Implement a debug console that can be toggle on and off to display values in real-time. (e.g. position, score, timers, etc)

- [ ] Use Love2D's `love.graphics` library to draw debug information directly onto the game screen. You can draw shapes, lines, and text to represent variable values, collision boundaries, or any other relevant information.

- [ ] Implement interactive debugging tools that allow you to inspect variables and their effects in real-time. This could include pausing the game to inspect variable values, stepping through code execution, and visualizing data structures.

## © License

This code is available under the [MIT License](LICENSE).
