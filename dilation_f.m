function S = dilation_f(A)
[r, c] = size(A);
SE = [1,1,1;1,1,1;1,1,1];
[rm, cm] = size(SE);

for i = 1:r-2
    for j = 1:c-2
        temp = A(i:(i+rm-1),j:(j+cm-1));
        temp2 = false;
        for k = 1:rm*cm
            temp3 = temp(k) == SE(k);
            temp2 = temp2 | temp3;
        end
        S(i,j) = temp2;
    end
end

end
