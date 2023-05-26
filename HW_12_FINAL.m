

semimajor_axis = input('insert_semimajor_axis_in_km:');  % km
eccentricity = input('insert_eccentricity_zero_to_one:');
son_heung_min = input('insert_true_anomaly_to_degree:');  % degree

true_anomlay = son_heung_min*pi/180;

rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);
velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);

format shortG
disp('range[km]:');
disp(rangeInPQW);
disp('velocity[km/s]:');
disp(velocityInPQW);

function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    n= (eccentricity+cos(true_anomaly))/(1+eccentricity*cos(true_anomaly));
    r= semimajor_axis*(1-eccentricity*n);
   rangeInPQW = [r * cos(true_anomaly); r * sin(true_anomaly); 0];
end

function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    mu = 398600.442; %[km^3/s^2]
    v = sqrt(mu / (semimajor_axis * (1 - eccentricity^2)));
    velocityInPQW = [v * (-sin(true_anomaly)); v * (eccentricity + cos(true_anomaly)); 0];
end