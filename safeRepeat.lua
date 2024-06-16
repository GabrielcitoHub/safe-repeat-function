-- Repeats the code the amount of time specified.
function SafeRepeat(repeats, next)
    for i=1,repeats do
        next()
    end
end

return "<- what does this even do?"