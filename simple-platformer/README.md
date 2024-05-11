# 💜 [LÖVE](https://love2d.org/) - Platformer Tutorial 🏃‍♀️

![code size](https://img.shields.io/github/languages/code-size/semanticdata/love2d-tutorial-platformer)
![repository size](https://img.shields.io/github/repo-size/semanticdata/love2d-tutorial-platformer)
![commits](https://img.shields.io/github/commit-activity/t/semanticdata/love2d-tutorial-platformer)
![last commit](https://img.shields.io/github/last-commit/semanticdata/love2d-tutorial-platformer)

Simple 2D platforming demo written in [Lua](https://www.lua.org/) and powered by [LÖVE](https://love2d.org/), a Free and Open-Source 2D Game Engine.

## 🖥️ Tutorial

- [Part 1 - The Basics](http://www.osmstudios.com/tutorials/love2d-platformer-tutorial-part-1-the-basics) - Hook up collision detection and simple physics for a platformer.
- [Part 2 - Plumbing A Game](http://osmstudios.com/tutorials/love2d-platformer-tutorial-part-2-plumbing-a-game) - Learn how to organize a project and use Gamestates to go from a simple demo to a full size game.
- Part 3 - Making Levels - Unfortunately part 3 of the tutorial was never published.

## ⚡ Getting Started

1. In VS Code, configure `lövelauncher.path` within the LÖVE launcher extension settings with the location to your local `love.exe`.

2. After setting up your location, you will be able to press <kbd>Alt</kbd> + <kbd>L</kbd> to launch LÖVE from within VS Code.

<!--
## 🎮 Controls

Placeholder section.
-->

## 🔧 Debugging

The game includes an optional debug mode to display FPS. Debug mode can be enabled by setting the 'debug' variable to true.

- [ ] Implement a debug console that can be toggle on and off to display values in real-time. (e.g. position, score, timers, etc)

- [ ] Use Love2D's `love.graphics` library to draw debug information directly onto the game screen. You can draw shapes, lines, and text to represent variable values, collision boundaries, or any other relevant information.

- [ ] Implement interactive debugging tools that allow you to inspect variables and their effects in real-time. This could include pausing the game to inspect variable values, stepping through code execution, and visualizing data structures.

## © License

This code is available under the [MIT License](LICENSE).
