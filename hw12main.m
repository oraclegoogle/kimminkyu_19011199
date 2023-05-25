semimajor_axis = input('insert_semimajor_axis_in_km:');  % km
eccentricity = input('insert_eccentricity_zero_to_one:');
true_anomaly = input('insert_true_anomaly_to_radian:');  % radians

rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);
velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);

format shortG
disp(rangeInPQW);
disp(velocityInPQW);