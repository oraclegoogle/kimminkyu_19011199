function el = myElevation(ENU, el_mask)
  
    [numRows, numCols] = size(ENU);  

   
    R_E = zeros(1, numRows);
    R_N = zeros(1, numRows);
    R_u = zeros(1, numRows);

 
    for k = 1:numRows
        R_E(k) = ENU((k-1)*3 + 1);  
        R_N(k) = ENU((k-1)*3 + 2);  
        R_u(k) = ENU((k-1)*3 + 3);  
    end


    R_rel = zeros(1, numRows);
    for i = 1:numRows
        R_rel(i) = sqrt(R_E(i)^2 + R_N(i)^2 + R_u(i)^2);
    end

   
    el = zeros(1, numRows);
    for j = 1:numRows
        el(j) = asind(R_u(j) / R_rel(j));
        if el(j) <= el_mask
            el(j) = NaN;
        end
    end

   
end
