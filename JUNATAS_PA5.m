% JUNATAS, ELIJAH MITCHEL L.
% 2ECE-A
% PROGRAMMING ASSIGNMENT 5
%% PROBLEM A
% Define matrices
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1];
Z = [2+3i -1+4i 5-2i; -3+1i 6 2+5i];

% For R matrix
disp('R ='); disp(R)
disp('transpose(R) ='); disp(transpose(R))
disp('R'' ='); disp(R')
disp('R.'' ='); disp(R.')


% For Z matrix
disp('Z ='); disp(Z)
disp('transpose(Z) ='); disp(transpose(Z))
disp('Z'' ='); disp(Z')
disp('Z.'' ='); disp(Z.')

% (a) For real R, all three are identical.
% (b) For complex Z, transpose(Z) and Z.' are identical.
% (c) ' also conjugates complex entries (complex-conjugate transpose).



%% PROBLEM B
% Define matrices
A = [ 2 -1  3  2; 1  4 -2  1; 3  2  1 -1; -2  3  4  2];
b = [16; -7; 6; 7];

% Inverse
x_inv = inv(A) * b;
disp('x_inv ='); disp(x_inv)

% Cramer's
n = size(A,1);
x_cramer = zeros(n,1);
for k = 1:n
    Ak = A;
    Ak(:,k) = b;
    x_cramer(k) = det(Ak) / det(A);
end
disp('x_cramer ='); disp(x_cramer)

% Checks
disp('det(A) ='); disp(det(A))
disp('norm(x_inv - x_cramer) ='); disp(norm(x_inv - x_cramer))
disp('norm(A*x_inv - b) ='); disp(norm(A*x_inv - b))
