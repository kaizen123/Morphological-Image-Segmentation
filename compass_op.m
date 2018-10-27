function S = compass_op(A)
A = rgb2gray(A);
A = double(A);

[r, c] = size(A);
S = zeros(r-2, c-2);
t = [-2 -1 0 1 2 1 0 -1];

for k = 0:7
    P = [t(mod(k,8)+1),t(mod(k+1,8)+1),t(mod(k+2,8)+1); t(mod(k+7,8)+1),0,t(mod(k+3,8)+1); t(mod(k+6,8)+1),t(mod(k+5,8)+1),t(mod(k+4,8)+1)];
    for i = 2:r-2
        for j = 2:c-2
            Sp(i,j) = A(i-1,j-1)*P(1) + A(i-1,j)*P(2) + A(i-1,j+1)*P(3) + A(i,j-1)*P(4) + A(i,j)*P(5) + A(i,j+1)*P(6) + A(i+1,j-1)*P(7) + A(i+1,j)*P(8) + A(i+1,j+1)*P(9); 
        end
    end

S = S + double(uint8(Sp));
end
S = uint8(S);
end