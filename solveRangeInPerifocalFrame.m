function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    n= (eccentricity+cos(true_anomaly))/(1+eccentricity*cos(true_anomaly));
    r= semimajor_axis*(1-eccentricity*n);
   rangeInPQW = [r * cos(true_anomaly); r * sin(true_anomaly); 0];
end