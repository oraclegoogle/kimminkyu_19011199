function az = myAzimuth(ENU)
    R_E = zeros(1, numRows);
    R_N = zeros(1, numRows);

    
    for k = 1:numRows
        R_E(k) = ENU((k-1)*3 + 1);  
        R_N(k) = ENU((k-1)*3 + 2); 
    end

  
    az = zeros(1, numRows);
    for j = 1:numRows
        az(j) = acosd(R_N(j) / sqrt(R_E(j)^2 + R_N(j)^2));
    end

 
end
