%Write a function called char_counter that counts the number of a certain character in a text file. 
% The function takes two input arguments, fname, a char vector of the filename and character, 
% the char it counts in the file. The function returns charnum, the number of characters found. 
% If the file is not found or character is not a valid char, the function return -1. 
% As an example, consider the following run. 
% The file "simple.txt" contains a single line: "This file should have exactly three a-s..."
%charnum = char_counter('simple.txt','a')
%charnum = 
%   3

function charnum = char_counter(fname, c)
fid = fopen(fname,'rt'); 
if fid < 0 || ~ischar(c)
    charnum = -1
else
    charnum = 0;
    line = fgets(fid);
    while ischar(line)
        for letters = 1:length(line)
            if strcmp(c, line(letters))
                charnum = charnum + 1;
            end
        end
        line = fgets(fid);
    end
end
end