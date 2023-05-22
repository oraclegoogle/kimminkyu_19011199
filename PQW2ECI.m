function r_fin = PQW2ECI(r,i,w)
%input area
r=input("insert RAAN to radian:");
i=input("insert inc_angle to radianl:");
w=input("insert arc_peg to radian:");

%calculation area
rw3=[cos(w) -sin(w) 0; sin(w) cos(w) 0; 0 0 1];
ri1=[1 0 0; 0 cos(i) -sin(i); 0 sin(i) cos(i)];
rr3=[cos(r) -sin(r) 0; sin(r) cos(r) 0; 0 0 1];

disp("rotational matrix is...")

r_fin=rw3*ri1*rr3;

end