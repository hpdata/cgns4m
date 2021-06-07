function ierr = cg_convergence_write(in_iterations, in_NormDefinitions)
% Gateway function for C function cg_convergence_write.
%
% ierr = cg_convergence_write(iterations, NormDefinitions)
%
% Input arguments (required; type is auto-casted):
%      iterations: 32-bit integer (int32), scalar
%    NormDefinitions: character string
%
% Output argument (optional):
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_convergence_write(int iterations, const char * NormDefinitions);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/auxiliary.html">online documentation</a>.
%
if (nargin < 2)
    error('Incorrect number of input or output arguments.');
end
in_iterations = int32(in_iterations);
in_NormDefinitions = char(in_NormDefinitions);

% Invoke the actual MEX-function.
ierr = cgnslib_mex(int32(222), in_iterations, in_NormDefinitions);
