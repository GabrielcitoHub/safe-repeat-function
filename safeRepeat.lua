local runLater = require("runLater")
local stopped = false
local errorName = "safeRepeat"
local GlobalRepeats = 0 -- Keeps track of how many times the SafeRepeat function has been executed.

-- Repeats the code the amount of time specified.
local function SafeRepeat(repeats, next)

  local MaxRepeats = 9999 -- Change at your own risk.
  local MaxFunctionRepeats = 100 -- Change at your own risk.

  if stopped == false then
    if repeats <= MaxRepeats then 
      GlobalRepeats = GlobalRepeats + 1
      if GlobalRepeats <= MaxFunctionRepeats then
        for i=1,repeats do
          next()
        end
        runLater(1, function()
        GlobalRepeats = GlobalRepeats - 1
        end)
      else
        local error = {
          "",
          { text = tostring(errorName..": max amount of repeat functions reached! (max is "..MaxFunctionRepeats..") \n"),
          color = "red",
          },
        }
        stopped = true
        printJson(toJson(error))
      end
    else
      local error = {
        "",
        { text = tostring(errorName..": too many repeats! (max is "..MaxRepeats..") \n"),
          color = "red",
        },
        stopped = true
      }
      printJson(toJson(error))
    end
  end
end

return SafeRepeat --<- i figured it out.