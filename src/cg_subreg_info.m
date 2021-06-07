function [out_regname, out_dimension, out_location, out_ptset_type, out_npnts, out_bcname_len, out_gcname_len, ierr] = cg_subreg_info(in_fn, in_B, in_Z, in_S)
% Gateway function for C function cg_subreg_info.
%
% [regname, dimension, location, ptset_type, npnts, bcname_len, gcname_len, ierr] = cg_subreg_info(fn, B, Z, S)
%
% Input arguments (required; type is auto-casted):
%              fn: 32-bit integer (int32), scalar
%               B: 32-bit integer (int32), scalar
%               Z: 32-bit integer (int32), scalar
%               S: 32-bit integer (int32), scalar
%
% Output arguments (optional):
%         regname: character string
%       dimension: 32-bit integer (int32), scalar
%        location: 32-bit integer (int32), scalar
%      ptset_type: 32-bit integer (int32), scalar
%           npnts: 64-bit integer (int64), scalar
%      bcname_len: 32-bit integer (int32), scalar
%      gcname_len: 32-bit integer (int32), scalar
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_subreg_info(int fn, int B, int Z, int S, char * regname, int * dimension, CG_GridLocation_t * location, CG_PointSetType_t * ptset_type, long long * npnts, int * bcname_len, int * gcname_len);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/solution.html">online documentation</a>.
%
if (nargin < 4)
    error('Incorrect number of input or output arguments.');
end
in_fn = int32(in_fn);
in_B = int32(in_B);
in_Z = int32(in_Z);
in_S = int32(in_S);

% Invoke the actual MEX-function.
[out_regname, out_dimension, out_location, out_ptset_type, out_npnts, out_bcname_len, out_gcname_len, ierr] = cgnslib_mex(int32(135), in_fn, in_B, in_Z, in_S);
