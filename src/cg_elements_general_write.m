function ierr = cg_elements_general_write(in_fn, in_B, in_Z, in_S, in_start, in_end, in_m_type, in_elements)
% Gateway function for C function cg_elements_general_write.
%
% ierr = cg_elements_general_write(fn, B, Z, S, start, end, m_type, elements)
%
% Input arguments (required; type is auto-casted):
%              fn: 32-bit integer (int32), scalar
%               B: 32-bit integer (int32), scalar
%               Z: 32-bit integer (int32), scalar
%               S: 32-bit integer (int32), scalar
%           start: 64-bit integer (int64), scalar
%             end: 64-bit integer (int64), scalar
%          m_type: 32-bit integer (int32), scalar
%        elements: numeric array
%
% Output argument (optional):
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_elements_general_write(int fn, int B, int Z, int S, long long start, long long end, CG_DataType_t m_type, const void * elements);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/grid.html">online documentation</a>.
%
if (nargin < 8)
    error('Incorrect number of input or output arguments.');
end
in_fn = int32(in_fn);
in_B = int32(in_B);
in_Z = int32(in_Z);
in_S = int32(in_S);
in_start = int64(in_start);
in_end = int64(in_end);
in_m_type = int32(in_m_type);
in_elements = numeric(in_elements);

% Invoke the actual MEX-function.
ierr = cgnslib_mex(int32(107), in_fn, in_B, in_Z, in_S, in_start, in_end, in_m_type, in_elements);
