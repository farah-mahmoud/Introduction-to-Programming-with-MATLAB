%Write a function called valid_date that takes three positive integer scalar inputs year, month, day.
%If these three represent a valid date, return a logical true, otherwise false.
%The name of the output argument is valid.
%If any of the inputs is not a positive integer scalar, return false as well.
%Note that every year that is exactly divisible by 4 is a leap year,
%except for years that are exactly divisible by 100.
%However, years that are exactly divisible by 400 are also leap years. 
%For example, the year 1900 was not leap year, but the year 2000 was.
%Note that your solution must not contain any of the date related built-in
%MATLAB functions.		

function valid = valid_date (year, month, day)
%checking positive integer scalar inputs (returns false if any of them is
%not satisfied

if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
    valid = false;
    return;
elseif year<=0 || month<=0 || day<=0
    valid = false;
    return;
elseif year~=round(year) || month~=round(month) || day~=round(day)
    valid = false;
    return;
    %checking month is not greater than 12 (aka: December)
elseif month > 12
    valid = false;
    return;
elseif month ~= 2
    if month < 8
        if (mod(month,2)~=0 && day <= 31) || (mod (month,2)==0 && day <= 30)
        valid = true;
        else
            valid = false;
        end
    elseif month >= 8
        if (mod(month,2)~=0 && day <= 30) || (mod (month,2)==0 && day <= 31)
        valid = true;
        else
            valid = false;
        end
    end
else
    if (mod(year,4)==0 && mod(year,100)~=0) || (mod(year,400)==0)%leap     
        if day <= 29
            valid = true;
        else
            valid = false;
        end
    else %not leap
        if day <= 28
            valid = true;
        else
            valid = false;
        end
    end
end
  
