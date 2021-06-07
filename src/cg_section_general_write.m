function [out_S, ierr] = cg_section_general_write(in_file_number, in_B, in_Z, in_SectionName, in_type, in_elementDataType, in_start, in_end, in_elementDataSize, in_nbndry)
% Gateway function for C function cg_section_general_write.
%
% [S, ierr] = cg_section_general_write(file_number, B, Z, SectionName, type, elementDataType, start, end, elementDataSize, nbndry)
%
% Input arguments (required; type is auto-casted):
%     file_number: 32-bit integer (int32), scalar
%               B: 32-bit integer (int32), scalar
%               Z: 32-bit integer (int32), scalar
%     SectionName: character string
%            type: 32-bit integer (int32), scalar
%    elementDataType: 32-bit integer (int32), scalar
%           start: 64-bit integer (int64), scalar
%             end: 64-bit integer (int64), scalar
%    elementDataSize: 64-bit integer (int64), scalar
%          nbndry: 32-bit integer (int32), scalar
%
% Output arguments (optional):
%               S: 32-bit integer (int32), scalar
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_section_general_write(int file_number, int B, int Z, const char * SectionName, CG_ElementType_t type, CG_DataType_t elementDataType, long long start, long long end, long long elementDataSize, int nbndry, int * S);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/grid.html">online documentation</a>.
%
if (nargin < 10)
    error('Incorrect number of input or output arguments.');
end
in_file_number = int32(in_file_number);
in_B = int32(in_B);
in_Z = int32(in_Z);
in_SectionName = char(in_SectionName);
in_type = int32(in_type);
in_elementDataType = int32(in_elementDataType);
in_start = int64(in_start);
in_end = int64(in_end);
in_elementDataSize = int64(in_elementDataSize);
in_nbndry = int32(in_nbndry);

% Invoke the actual MEX-function.
[out_S, ierr] = cgnslib_mex(int32(100), in_file_number, in_B, in_Z, in_SectionName, in_type, in_elementDataType, in_start, in_end, in_elementDataSize, in_nbndry);
