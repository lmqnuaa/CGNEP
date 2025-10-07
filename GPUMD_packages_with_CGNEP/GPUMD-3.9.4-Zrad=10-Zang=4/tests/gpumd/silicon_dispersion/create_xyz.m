clear; close all;
r0 = [0.0, 0.0, 0.5, 0.5, 0.25, 0.25, 0.75, 0.75; ...
      0.0, 0.5, 0.0, 0.5, 0.25, 0.75, 0.25, 0.75; ...
      0.0, 0.5, 0.5, 0.0, 0.25, 0.75, 0.75, 0.25].';
label0=[0 0 0 0 1 1 1 1];
n0 = size(r0, 1);
nxyz = 2 * [1, 1, 1];
N = nxyz(1) * nxyz(2) * nxyz(3) * n0;
a = 5.431 * [1, 1, 1];
box_length = a .* nxyz;

r = zeros(N, 3);
label = zeros(N, 1);
n = 0;
for nx = 0 : nxyz(1) - 1
    for ny = 0 : nxyz(2) - 1
        for nz = 0 : nxyz(3) - 1
            for m = 1 : n0
                n = n + 1;
                r(n, :) = a .* ([nx,ny,nz] + r0(m, :));   
                label(n) = label0(m);
            end
        end
    end
end

% create xyz.in
fid=fopen('model.xyz','w');
fprintf(fid,'%d\n',N);
fprintf(fid,'pbc=\"T T T\" Lattice=\"%g 0 0 0 %g 0 0 0 %g\" Properties=species:S:1:pos:R:3:mass:R:1\n',box_length);
for n =1 : N
    fprintf(fid, 'Si %g %g %g %g\n', r(n, :), 28);
end
fclose(fid);

% create basis.in
fid=fopen('basis.in','w');
fprintf(fid,'%d\n', 2);
fprintf(fid,'0 28\n');
fprintf(fid,'4 28\n');
for n=1:N
    fprintf(fid,'%d\n', label(n));
end
fclose(fid);

% create kpoints.in
primitive_cell=[0 1 1;1 0 1;1 1 0]*a(1)/2;
special_k=[0,0,0;1/2,0,1/2;3/8,3/8,3/4;0,0,0;1/2,1/2,1/2];
Nk=100; % number of k points between two special ones
[K,k_norm]=find_k(Nk, special_k.', primitive_cell);
fid=fopen('kpoints.in','w');
fprintf(fid,'%d\n', size(K,2));
for n=1:size(K,2)
    fprintf(fid,'%g %g %g\n', K(:,n));
end
fclose(fid);


