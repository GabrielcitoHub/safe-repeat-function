-- Repeats the code the amount of time specified.
local function SafeRepeat(repeats, next)
    if repeats <= 9999 then --Change at your own risk.
      for i=1,repeats do
        next()
      end
    else
      local error = {
        "",
        { text = "safeRepeat: too many repeats! (max is 9999) \n",
        color = "red",
        },
    }
    printJson(toJson(error))
    end
end

return SafeRepeat --<- i figured it out.
