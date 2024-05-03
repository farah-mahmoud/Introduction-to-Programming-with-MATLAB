function k = next_prime(n)
k = 1;
while ~(k > n) || ~isprime(k) 
k = k + 1;
end
k;
end