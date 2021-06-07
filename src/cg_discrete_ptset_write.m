function [out_D, ierr] = cg_discrete_ptset_write(in_fn, in_B, in_Z, in_discrete_name, in_location, in_ptset_type, in_npnts, in_pnts)
% Gateway function for C function cg_discrete_ptset_write.
%
% [D, ierr] = cg_discrete_ptset_write(fn, B, Z, discrete_name, location, ptset_type, npnts, pnts)
%
% Input arguments (required; type is auto-casted):
%              fn: 32-bit integer (int32), scalar
%               B: 32-bit integer (int32), scalar
%               Z: 32-bit integer (int32), scalar
%    discrete_name: character string
%        location: 32-bit integer (int32), scalar
%      ptset_type: 32-bit integer (int32), scalar
%           npnts: 64-bit integer (int64), scalar
%            pnts: 64-bit integer (int64), array
%
% Output arguments (optional):
%               D: 32-bit integer (int32), scalar
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_discrete_ptset_write(int fn, int B, int Z, const char * discrete_name, CG_GridLocation_t location, CG_PointSetType_t ptset_type, long long npnts, const long long * pnts, int * D);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/solution.html">online documentation</a>.
%
if (nargin < 8)
    error('Incorrect number of input or output arguments.');
end
in_fn = int32(in_fn);
in_B = int32(in_B);
in_Z = int32(in_Z);
in_discrete_name = char(in_discrete_name);
in_location = int32(in_location);
in_ptset_type = int32(in_ptset_type);
in_npnts = int64(in_npnts);
in_pnts = int64(in_pnts);

% Invoke the actual MEX-function.
[out_D, ierr] = cgnslib_mex(int32(185), in_fn, in_B, in_Z, in_discrete_name, in_location, in_ptset_type, in_npnts, in_pnts);
