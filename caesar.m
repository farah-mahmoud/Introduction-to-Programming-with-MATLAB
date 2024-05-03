function coded = caesar (text, shift)
%32 to 126
shifted = double(text) + shift
for i = 1:length(text)
    while(shifted(i) > 126)
    shifted(i) = shifted(i) -126 -1 + 32
    end
    while(shifted(i) < 32)
    shifted(i) = shifted(i) +126 +1 - 32
    end
end
coded = char(shifted);
end