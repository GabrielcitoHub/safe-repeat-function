# Versions v1.2 or later require runLater to work, if runLater is not found it will give an error.

# Safe Repeat (repeat function that doesnt crashes your game)

Schedules a function to run after a specified amount of ticks or when a predicate function returns true.

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
