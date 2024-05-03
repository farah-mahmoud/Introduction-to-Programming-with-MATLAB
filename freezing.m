function numfreeze = freezing(temps)
numfreeze = length(temps(temps < 32));
end