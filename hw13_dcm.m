function DCM = ECI2ECEF_DCM2(time)
t0 = juliandate([2000 1 1 12 0 0]);
t = juliandate(time);

THETAg_0 = siderealTime(t0);
THETAg_t = siderealTime(t);

THETAg = THETAg_0 + THETAg_t;

cTHETA = cosd(THETAg);
sTHETA = sind(THETAg);

DCM = [cTHETA, sTHETA, 0;
       -sTHETA, cTHETA, 0;
       0, 0, 1];
end

