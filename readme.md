# Safe Repeat (repeat function that doesnt crashes your game)

Repeats the amount of times specified by the first argument.

## Versions v1.2 or later require runLater to work.

You can download runLater at: https://github.com/Manuel-3/figura-scripts/tree/main/src/runLater.
Once downloaded and setup you will be ready to use this script.

## How to use

Download the file at releases and put it next to your other files in your avatar.

Then use the example code below in *another script* (dont edit the downloaded file).

Example:
```lua
safeRepeat = require("safeRepeat")

safeRepeat(3,function()
  log("hello")
end)
```
