# Safe Repeat (safe repeat function that doesnt crashes your game)

Schedules a function to run after a specified amount of ticks or when a predicate function returns true.

## How to use

Download the file and put it next to your other files in your avatar.

Then use the example code below in *another script* (dont edit the downloaded file).

Example:
```lua
require("safeRepeat")

SafeRepeat(3,function()
log("This messaage will get repeated 3 times!")
end)
```
