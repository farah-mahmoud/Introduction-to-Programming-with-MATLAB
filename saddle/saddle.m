function indices = saddle(M)
[m,n]=size(M);
indices = [];
for ii = 1 : m    %accessing each elements of M
    for jj = 1 : n
        % checking whether the element is greater than or equal to all the other elements in the row 
        if sum(M(ii,jj)>=M(ii,:))==n  
            % checking whether the element is lesserr than or equal to all the other elements in the column 
            if sum([M(ii,jj)<=M(:,jj)]')==m 
               indices = [ indices; ii jj]; % append the indices of saddle element 
            end
        end
    end
end