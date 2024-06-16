# Safe Repeat (safe repeat function that doesnt crashes your game)

Schedules a function to run after a specified amount of ticks or when a predicate function returns true.

## How to use

Download the file and put it next to your other files in your avatar.

Then use the example code below in *another script* (dont edit the downloaded file).

Example:
```lua
safeRepeat = require("safeRepeat")

safeRepeat(5,function()
  log("hello")
end)
```
