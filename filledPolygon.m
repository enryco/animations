X = [0 1 1 2 -1; 1 1 2 2 0; 0 0 1 1 1];
Y = [1 1 1 1 -1; 1 0 1 0 1; 0 0 0 0 0];
Z = [0 1 1 1 -1; 1 0 1 0 0; 0 0 0 0 0];
 C = [1 1.0000 1.0000 0.5000 1;
      1.0000 0.5000 0.5000 0.1667 1;
      0.7 0.3330 0.5000 0.5000 1];

figure
fill3(X,Y,Z,C)