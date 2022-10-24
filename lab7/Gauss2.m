function X = Gauss2(A,B)

M=[A,B]; %Concatenate matrix and column vector
[nr,nc]=size(M);%Extract size of rows and columns from M matrix

for r=1:nr %Create main loop
    %Partial Pivoting
    scale = M(r,r);
    max = abs(scale);
    maxr = r; %Assign position of pivot to maxr

    % Ищем строку с максимальным значением столбца и отслеживаем индекс строки
    for mr = r:nr
        scale3 = M(mr,r);
        if max < abs(scale3)
            max = abs(scale3);
            maxr = mr;   %Keep track of the row index
        end
    end

    % делаем свап r и maxr
    temp_A2 = M(r,:);
    M(r,:) = M(maxr,:);
    M(maxr,:) = temp_A2;

% скейлим относительно главной точки
scale2 = M(r,r);
    for c= r:nc
        M(r,c)=M(r,c)./scale2;
    end

% уменьшаем строки относительно главной
    for rr=1:nr
        if (rr~=r)
            scale4 = M(rr,r);
            for c = r:nc
                M(rr,c)=M(rr,c)-scale4*M(r,c);
            end
        end
    end
end
X = M(:,nc); %Extract solution from last column of M matrix
end
