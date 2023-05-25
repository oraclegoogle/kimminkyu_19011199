function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    mu = 398600.442; %[km^3/s^2]
    v = sqrt(mu / (semimajor_axis * (1 - eccentricity^2)));
    velocityInPQW = [v * (-sin(true_anomaly)); v * (eccentricity + cos(true_anomaly)); 0];
end