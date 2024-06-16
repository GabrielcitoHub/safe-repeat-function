-- Repeats the code the amount of time specified.
function SafeRepeat(repeats, next)
    if repeats <= 9999 then --Change at your own risk.
      for i=1,repeats do
        next()
      end
    else
        log("Amount of repeats is greater than the max limit, please lower it.")
    end
end

return "<- what does this even do?"
