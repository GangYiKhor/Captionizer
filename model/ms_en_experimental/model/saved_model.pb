??<
? ? 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8??6
?
Adam/time_distributed_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?'*/
shared_name Adam/time_distributed_1/bias/v
?
2Adam/time_distributed_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/v*
_output_shapes	
:?'*
dtype0
?
 Adam/time_distributed_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??'*1
shared_name" Adam/time_distributed_1/kernel/v
?
4Adam/time_distributed_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/v* 
_output_shapes
:
??'*
dtype0
?
Adam/time_distributed/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/time_distributed/bias/v
?
0Adam/time_distributed/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/time_distributed/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*/
shared_name Adam/time_distributed/kernel/v
?
2Adam/time_distributed/kernel/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/v* 
_output_shapes
:
??*
dtype0
?
'Adam/transformer_decoder/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/transformer_decoder/dense_1/bias/v
?
;Adam/transformer_decoder/dense_1/bias/v/Read/ReadVariableOpReadVariableOp'Adam/transformer_decoder/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
)Adam/transformer_decoder/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/transformer_decoder/dense_1/kernel/v
?
=Adam/transformer_decoder/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/transformer_decoder/dense_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
%Adam/transformer_decoder/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/transformer_decoder/dense/bias/v
?
9Adam/transformer_decoder/dense/bias/v/Read/ReadVariableOpReadVariableOp%Adam/transformer_decoder/dense/bias/v*
_output_shapes	
:?*
dtype0
?
'Adam/transformer_decoder/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/transformer_decoder/dense/kernel/v
?
;Adam/transformer_decoder/dense/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/transformer_decoder/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_decoder/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_decoder/layer_normalization_2/beta/v
?
IAdam/transformer_decoder/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_decoder/layer_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_decoder/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_decoder/layer_normalization_2/gamma/v
?
JAdam/transformer_decoder/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_decoder/layer_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_decoder/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_decoder/layer_normalization_1/beta/v
?
IAdam/transformer_decoder/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_decoder/layer_normalization_1/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_decoder/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_decoder/layer_normalization_1/gamma/v
?
JAdam/transformer_decoder/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_decoder/layer_normalization_1/gamma/v*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*X
shared_nameIGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/v
?
[Adam/transformer_decoder/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/v*
_output_shapes	
:?*
dtype0
?
IAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*Z
shared_nameKIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/v
?
]Adam/transformer_decoder/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/v*$
_output_shapes
:
??*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/value/bias/v
?
PAdam/transformer_decoder/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/value/bias/v*
_output_shapes
:	
?*
dtype0
?
>Adam/transformer_decoder/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
?*O
shared_name@>Adam/transformer_decoder/multi_head_attention_1/value/kernel/v
?
RAdam/transformer_decoder/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_decoder/multi_head_attention_1/value/kernel/v*$
_output_shapes
:?
?*
dtype0
?
:Adam/transformer_decoder/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention_1/key/bias/v
?
NAdam/transformer_decoder/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention_1/key/bias/v*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/key/kernel/v
?
PAdam/transformer_decoder/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/key/kernel/v*#
_output_shapes
:?
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/query/bias/v
?
PAdam/transformer_decoder/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/query/bias/v*
_output_shapes

:
*
dtype0
?
>Adam/transformer_decoder/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*O
shared_name@>Adam/transformer_decoder/multi_head_attention_1/query/kernel/v
?
RAdam/transformer_decoder/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_decoder/multi_head_attention_1/query/kernel/v*#
_output_shapes
:?
*
dtype0
?
3Adam/transformer_decoder/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/transformer_decoder/layer_normalization/beta/v
?
GAdam/transformer_decoder/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_decoder/layer_normalization/beta/v*
_output_shapes	
:?*
dtype0
?
4Adam/transformer_decoder/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/transformer_decoder/layer_normalization/gamma/v
?
HAdam/transformer_decoder/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_decoder/layer_normalization/gamma/v*
_output_shapes	
:?*
dtype0
?
EAdam/transformer_decoder/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*V
shared_nameGEAdam/transformer_decoder/multi_head_attention/attention_output/bias/v
?
YAdam/transformer_decoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_decoder/multi_head_attention/attention_output/bias/v*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_decoder/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*X
shared_nameIGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/v
?
[Adam/transformer_decoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/v*#
_output_shapes
:
?*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/value/bias/v
?
NAdam/transformer_decoder/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/value/bias/v*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention/value/kernel/v
?
PAdam/transformer_decoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention/value/kernel/v*#
_output_shapes
:?
*
dtype0
?
8Adam/transformer_decoder/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*I
shared_name:8Adam/transformer_decoder/multi_head_attention/key/bias/v
?
LAdam/transformer_decoder/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_decoder/multi_head_attention/key/bias/v*
_output_shapes

:
*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/key/kernel/v
?
NAdam/transformer_decoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/key/kernel/v*#
_output_shapes
:?
*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/query/bias/v
?
NAdam/transformer_decoder/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/query/bias/v*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention/query/kernel/v
?
PAdam/transformer_decoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention/query/kernel/v*#
_output_shapes
:?
*
dtype0
?
'Adam/transformer_encoder/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/transformer_encoder/dense_1/bias/v
?
;Adam/transformer_encoder/dense_1/bias/v/Read/ReadVariableOpReadVariableOp'Adam/transformer_encoder/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
)Adam/transformer_encoder/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/transformer_encoder/dense_1/kernel/v
?
=Adam/transformer_encoder/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/transformer_encoder/dense_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
%Adam/transformer_encoder/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/transformer_encoder/dense/bias/v
?
9Adam/transformer_encoder/dense/bias/v/Read/ReadVariableOpReadVariableOp%Adam/transformer_encoder/dense/bias/v*
_output_shapes	
:?*
dtype0
?
'Adam/transformer_encoder/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/transformer_encoder/dense/kernel/v
?
;Adam/transformer_encoder/dense/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/transformer_encoder/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_encoder/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_encoder/layer_normalization_1/beta/v
?
IAdam/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_encoder/layer_normalization_1/beta/v*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_encoder/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_encoder/layer_normalization_1/gamma/v
?
JAdam/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_encoder/layer_normalization_1/gamma/v*
_output_shapes	
:?*
dtype0
?
3Adam/transformer_encoder/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/transformer_encoder/layer_normalization/beta/v
?
GAdam/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_encoder/layer_normalization/beta/v*
_output_shapes	
:?*
dtype0
?
4Adam/transformer_encoder/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/transformer_encoder/layer_normalization/gamma/v
?
HAdam/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_encoder/layer_normalization/gamma/v*
_output_shapes	
:?*
dtype0
?
EAdam/transformer_encoder/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*V
shared_nameGEAdam/transformer_encoder/multi_head_attention/attention_output/bias/v
?
YAdam/transformer_encoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_encoder/multi_head_attention/attention_output/bias/v*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*X
shared_nameIGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v
?
[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v*#
_output_shapes
:
?*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/value/bias/v
?
NAdam/transformer_encoder/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/value/bias/v*
_output_shapes

:
*
dtype0
?
<Adam/transformer_encoder/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_encoder/multi_head_attention/value/kernel/v
?
PAdam/transformer_encoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/value/kernel/v*#
_output_shapes
:?
*
dtype0
?
8Adam/transformer_encoder/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*I
shared_name:8Adam/transformer_encoder/multi_head_attention/key/bias/v
?
LAdam/transformer_encoder/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder/multi_head_attention/key/bias/v*
_output_shapes

:
*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/key/kernel/v
?
NAdam/transformer_encoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/key/kernel/v*#
_output_shapes
:?
*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/query/bias/v
?
NAdam/transformer_encoder/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/query/bias/v*
_output_shapes

:
*
dtype0
?
<Adam/transformer_encoder/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_encoder/multi_head_attention/query/kernel/v
?
PAdam/transformer_encoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/query/kernel/v*#
_output_shapes
:?
*
dtype0
?
$Adam/position_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*5
shared_name&$Adam/position_embedding/embeddings/v
?
8Adam/position_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp$Adam/position_embedding/embeddings/v*
_output_shapes
:	2?*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?'?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
?'?*
dtype0
?
Adam/time_distributed_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?'*/
shared_name Adam/time_distributed_1/bias/m
?
2Adam/time_distributed_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/m*
_output_shapes	
:?'*
dtype0
?
 Adam/time_distributed_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??'*1
shared_name" Adam/time_distributed_1/kernel/m
?
4Adam/time_distributed_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/m* 
_output_shapes
:
??'*
dtype0
?
Adam/time_distributed/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/time_distributed/bias/m
?
0Adam/time_distributed/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/time_distributed/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*/
shared_name Adam/time_distributed/kernel/m
?
2Adam/time_distributed/kernel/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/m* 
_output_shapes
:
??*
dtype0
?
'Adam/transformer_decoder/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/transformer_decoder/dense_1/bias/m
?
;Adam/transformer_decoder/dense_1/bias/m/Read/ReadVariableOpReadVariableOp'Adam/transformer_decoder/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
)Adam/transformer_decoder/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/transformer_decoder/dense_1/kernel/m
?
=Adam/transformer_decoder/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/transformer_decoder/dense_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
%Adam/transformer_decoder/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/transformer_decoder/dense/bias/m
?
9Adam/transformer_decoder/dense/bias/m/Read/ReadVariableOpReadVariableOp%Adam/transformer_decoder/dense/bias/m*
_output_shapes	
:?*
dtype0
?
'Adam/transformer_decoder/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/transformer_decoder/dense/kernel/m
?
;Adam/transformer_decoder/dense/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/transformer_decoder/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_decoder/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_decoder/layer_normalization_2/beta/m
?
IAdam/transformer_decoder/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_decoder/layer_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_decoder/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_decoder/layer_normalization_2/gamma/m
?
JAdam/transformer_decoder/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_decoder/layer_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
5Adam/transformer_decoder/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_decoder/layer_normalization_1/beta/m
?
IAdam/transformer_decoder/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_decoder/layer_normalization_1/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_decoder/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_decoder/layer_normalization_1/gamma/m
?
JAdam/transformer_decoder/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_decoder/layer_normalization_1/gamma/m*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*X
shared_nameIGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/m
?
[Adam/transformer_decoder/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/m*
_output_shapes	
:?*
dtype0
?
IAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*Z
shared_nameKIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/m
?
]Adam/transformer_decoder/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/m*$
_output_shapes
:
??*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/value/bias/m
?
PAdam/transformer_decoder/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/value/bias/m*
_output_shapes
:	
?*
dtype0
?
>Adam/transformer_decoder/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
?*O
shared_name@>Adam/transformer_decoder/multi_head_attention_1/value/kernel/m
?
RAdam/transformer_decoder/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_decoder/multi_head_attention_1/value/kernel/m*$
_output_shapes
:?
?*
dtype0
?
:Adam/transformer_decoder/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention_1/key/bias/m
?
NAdam/transformer_decoder/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention_1/key/bias/m*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/key/kernel/m
?
PAdam/transformer_decoder/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/key/kernel/m*#
_output_shapes
:?
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*M
shared_name><Adam/transformer_decoder/multi_head_attention_1/query/bias/m
?
PAdam/transformer_decoder/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention_1/query/bias/m*
_output_shapes

:
*
dtype0
?
>Adam/transformer_decoder/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*O
shared_name@>Adam/transformer_decoder/multi_head_attention_1/query/kernel/m
?
RAdam/transformer_decoder/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_decoder/multi_head_attention_1/query/kernel/m*#
_output_shapes
:?
*
dtype0
?
3Adam/transformer_decoder/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/transformer_decoder/layer_normalization/beta/m
?
GAdam/transformer_decoder/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_decoder/layer_normalization/beta/m*
_output_shapes	
:?*
dtype0
?
4Adam/transformer_decoder/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/transformer_decoder/layer_normalization/gamma/m
?
HAdam/transformer_decoder/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_decoder/layer_normalization/gamma/m*
_output_shapes	
:?*
dtype0
?
EAdam/transformer_decoder/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*V
shared_nameGEAdam/transformer_decoder/multi_head_attention/attention_output/bias/m
?
YAdam/transformer_decoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_decoder/multi_head_attention/attention_output/bias/m*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_decoder/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*X
shared_nameIGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/m
?
[Adam/transformer_decoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/m*#
_output_shapes
:
?*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/value/bias/m
?
NAdam/transformer_decoder/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/value/bias/m*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention/value/kernel/m
?
PAdam/transformer_decoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention/value/kernel/m*#
_output_shapes
:?
*
dtype0
?
8Adam/transformer_decoder/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*I
shared_name:8Adam/transformer_decoder/multi_head_attention/key/bias/m
?
LAdam/transformer_decoder/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_decoder/multi_head_attention/key/bias/m*
_output_shapes

:
*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/key/kernel/m
?
NAdam/transformer_decoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/key/kernel/m*#
_output_shapes
:?
*
dtype0
?
:Adam/transformer_decoder/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_decoder/multi_head_attention/query/bias/m
?
NAdam/transformer_decoder/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_decoder/multi_head_attention/query/bias/m*
_output_shapes

:
*
dtype0
?
<Adam/transformer_decoder/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_decoder/multi_head_attention/query/kernel/m
?
PAdam/transformer_decoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_decoder/multi_head_attention/query/kernel/m*#
_output_shapes
:?
*
dtype0
?
'Adam/transformer_encoder/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'Adam/transformer_encoder/dense_1/bias/m
?
;Adam/transformer_encoder/dense_1/bias/m/Read/ReadVariableOpReadVariableOp'Adam/transformer_encoder/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
)Adam/transformer_encoder/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/transformer_encoder/dense_1/kernel/m
?
=Adam/transformer_encoder/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/transformer_encoder/dense_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
%Adam/transformer_encoder/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/transformer_encoder/dense/bias/m
?
9Adam/transformer_encoder/dense/bias/m/Read/ReadVariableOpReadVariableOp%Adam/transformer_encoder/dense/bias/m*
_output_shapes	
:?*
dtype0
?
'Adam/transformer_encoder/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'Adam/transformer_encoder/dense/kernel/m
?
;Adam/transformer_encoder/dense/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/transformer_encoder/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
5Adam/transformer_encoder/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/transformer_encoder/layer_normalization_1/beta/m
?
IAdam/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_encoder/layer_normalization_1/beta/m*
_output_shapes	
:?*
dtype0
?
6Adam/transformer_encoder/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86Adam/transformer_encoder/layer_normalization_1/gamma/m
?
JAdam/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_encoder/layer_normalization_1/gamma/m*
_output_shapes	
:?*
dtype0
?
3Adam/transformer_encoder/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53Adam/transformer_encoder/layer_normalization/beta/m
?
GAdam/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_encoder/layer_normalization/beta/m*
_output_shapes	
:?*
dtype0
?
4Adam/transformer_encoder/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/transformer_encoder/layer_normalization/gamma/m
?
HAdam/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_encoder/layer_normalization/gamma/m*
_output_shapes	
:?*
dtype0
?
EAdam/transformer_encoder/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*V
shared_nameGEAdam/transformer_encoder/multi_head_attention/attention_output/bias/m
?
YAdam/transformer_encoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_encoder/multi_head_attention/attention_output/bias/m*
_output_shapes	
:?*
dtype0
?
GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*X
shared_nameIGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m
?
[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m*#
_output_shapes
:
?*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/value/bias/m
?
NAdam/transformer_encoder/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/value/bias/m*
_output_shapes

:
*
dtype0
?
<Adam/transformer_encoder/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_encoder/multi_head_attention/value/kernel/m
?
PAdam/transformer_encoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/value/kernel/m*#
_output_shapes
:?
*
dtype0
?
8Adam/transformer_encoder/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*I
shared_name:8Adam/transformer_encoder/multi_head_attention/key/bias/m
?
LAdam/transformer_encoder/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder/multi_head_attention/key/bias/m*
_output_shapes

:
*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/key/kernel/m
?
NAdam/transformer_encoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/key/kernel/m*#
_output_shapes
:?
*
dtype0
?
:Adam/transformer_encoder/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*K
shared_name<:Adam/transformer_encoder/multi_head_attention/query/bias/m
?
NAdam/transformer_encoder/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/query/bias/m*
_output_shapes

:
*
dtype0
?
<Adam/transformer_encoder/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*M
shared_name><Adam/transformer_encoder/multi_head_attention/query/kernel/m
?
PAdam/transformer_encoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/query/kernel/m*#
_output_shapes
:?
*
dtype0
?
$Adam/position_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*5
shared_name&$Adam/position_embedding/embeddings/m
?
8Adam/position_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp$Adam/position_embedding/embeddings/m*
_output_shapes
:	2?*
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?'?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
?'?*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
?
time_distributed_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?'*(
shared_nametime_distributed_1/bias
?
+time_distributed_1/bias/Read/ReadVariableOpReadVariableOptime_distributed_1/bias*
_output_shapes	
:?'*
dtype0
?
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??'**
shared_nametime_distributed_1/kernel
?
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel* 
_output_shapes
:
??'*
dtype0
?
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:?*
dtype0
?
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nametime_distributed/kernel
?
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel* 
_output_shapes
:
??*
dtype0
?
 transformer_decoder/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" transformer_decoder/dense_1/bias
?
4transformer_decoder/dense_1/bias/Read/ReadVariableOpReadVariableOp transformer_decoder/dense_1/bias*
_output_shapes	
:?*
dtype0
?
"transformer_decoder/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"transformer_decoder/dense_1/kernel
?
6transformer_decoder/dense_1/kernel/Read/ReadVariableOpReadVariableOp"transformer_decoder/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
transformer_decoder/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name transformer_decoder/dense/bias
?
2transformer_decoder/dense/bias/Read/ReadVariableOpReadVariableOptransformer_decoder/dense/bias*
_output_shapes	
:?*
dtype0
?
 transformer_decoder/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" transformer_decoder/dense/kernel
?
4transformer_decoder/dense/kernel/Read/ReadVariableOpReadVariableOp transformer_decoder/dense/kernel* 
_output_shapes
:
??*
dtype0
?
.transformer_decoder/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_decoder/layer_normalization_2/beta
?
Btransformer_decoder/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp.transformer_decoder/layer_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
/transformer_decoder/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_decoder/layer_normalization_2/gamma
?
Ctransformer_decoder/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp/transformer_decoder/layer_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
.transformer_decoder/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_decoder/layer_normalization_1/beta
?
Btransformer_decoder/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp.transformer_decoder/layer_normalization_1/beta*
_output_shapes	
:?*
dtype0
?
/transformer_decoder/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_decoder/layer_normalization_1/gamma
?
Ctransformer_decoder/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp/transformer_decoder/layer_normalization_1/gamma*
_output_shapes	
:?*
dtype0
?
@transformer_decoder/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*Q
shared_nameB@transformer_decoder/multi_head_attention_1/attention_output/bias
?
Ttransformer_decoder/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_decoder/multi_head_attention_1/attention_output/bias*
_output_shapes	
:?*
dtype0
?
Btransformer_decoder/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*S
shared_nameDBtransformer_decoder/multi_head_attention_1/attention_output/kernel
?
Vtransformer_decoder/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_decoder/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:
??*
dtype0
?
5transformer_decoder/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*F
shared_name75transformer_decoder/multi_head_attention_1/value/bias
?
Itransformer_decoder/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp5transformer_decoder/multi_head_attention_1/value/bias*
_output_shapes
:	
?*
dtype0
?
7transformer_decoder/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
?*H
shared_name97transformer_decoder/multi_head_attention_1/value/kernel
?
Ktransformer_decoder/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_decoder/multi_head_attention_1/value/kernel*$
_output_shapes
:?
?*
dtype0
?
3transformer_decoder/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*D
shared_name53transformer_decoder/multi_head_attention_1/key/bias
?
Gtransformer_decoder/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp3transformer_decoder/multi_head_attention_1/key/bias*
_output_shapes

:
*
dtype0
?
5transformer_decoder/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*F
shared_name75transformer_decoder/multi_head_attention_1/key/kernel
?
Itransformer_decoder/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_decoder/multi_head_attention_1/key/kernel*#
_output_shapes
:?
*
dtype0
?
5transformer_decoder/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*F
shared_name75transformer_decoder/multi_head_attention_1/query/bias
?
Itransformer_decoder/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp5transformer_decoder/multi_head_attention_1/query/bias*
_output_shapes

:
*
dtype0
?
7transformer_decoder/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*H
shared_name97transformer_decoder/multi_head_attention_1/query/kernel
?
Ktransformer_decoder/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_decoder/multi_head_attention_1/query/kernel*#
_output_shapes
:?
*
dtype0
?
,transformer_decoder/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,transformer_decoder/layer_normalization/beta
?
@transformer_decoder/layer_normalization/beta/Read/ReadVariableOpReadVariableOp,transformer_decoder/layer_normalization/beta*
_output_shapes	
:?*
dtype0
?
-transformer_decoder/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-transformer_decoder/layer_normalization/gamma
?
Atransformer_decoder/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp-transformer_decoder/layer_normalization/gamma*
_output_shapes	
:?*
dtype0
?
>transformer_decoder/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>transformer_decoder/multi_head_attention/attention_output/bias
?
Rtransformer_decoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp>transformer_decoder/multi_head_attention/attention_output/bias*
_output_shapes	
:?*
dtype0
?
@transformer_decoder/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*Q
shared_nameB@transformer_decoder/multi_head_attention/attention_output/kernel
?
Ttransformer_decoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp@transformer_decoder/multi_head_attention/attention_output/kernel*#
_output_shapes
:
?*
dtype0
?
3transformer_decoder/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*D
shared_name53transformer_decoder/multi_head_attention/value/bias
?
Gtransformer_decoder/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp3transformer_decoder/multi_head_attention/value/bias*
_output_shapes

:
*
dtype0
?
5transformer_decoder/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*F
shared_name75transformer_decoder/multi_head_attention/value/kernel
?
Itransformer_decoder/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp5transformer_decoder/multi_head_attention/value/kernel*#
_output_shapes
:?
*
dtype0
?
1transformer_decoder/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*B
shared_name31transformer_decoder/multi_head_attention/key/bias
?
Etransformer_decoder/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp1transformer_decoder/multi_head_attention/key/bias*
_output_shapes

:
*
dtype0
?
3transformer_decoder/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*D
shared_name53transformer_decoder/multi_head_attention/key/kernel
?
Gtransformer_decoder/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp3transformer_decoder/multi_head_attention/key/kernel*#
_output_shapes
:?
*
dtype0
?
3transformer_decoder/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*D
shared_name53transformer_decoder/multi_head_attention/query/bias
?
Gtransformer_decoder/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp3transformer_decoder/multi_head_attention/query/bias*
_output_shapes

:
*
dtype0
?
5transformer_decoder/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*F
shared_name75transformer_decoder/multi_head_attention/query/kernel
?
Itransformer_decoder/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp5transformer_decoder/multi_head_attention/query/kernel*#
_output_shapes
:?
*
dtype0
?
 transformer_encoder/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" transformer_encoder/dense_1/bias
?
4transformer_encoder/dense_1/bias/Read/ReadVariableOpReadVariableOp transformer_encoder/dense_1/bias*
_output_shapes	
:?*
dtype0
?
"transformer_encoder/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"transformer_encoder/dense_1/kernel
?
6transformer_encoder/dense_1/kernel/Read/ReadVariableOpReadVariableOp"transformer_encoder/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
transformer_encoder/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name transformer_encoder/dense/bias
?
2transformer_encoder/dense/bias/Read/ReadVariableOpReadVariableOptransformer_encoder/dense/bias*
_output_shapes	
:?*
dtype0
?
 transformer_encoder/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" transformer_encoder/dense/kernel
?
4transformer_encoder/dense/kernel/Read/ReadVariableOpReadVariableOp transformer_encoder/dense/kernel* 
_output_shapes
:
??*
dtype0
?
.transformer_encoder/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.transformer_encoder/layer_normalization_1/beta
?
Btransformer_encoder/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp.transformer_encoder/layer_normalization_1/beta*
_output_shapes	
:?*
dtype0
?
/transformer_encoder/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/transformer_encoder/layer_normalization_1/gamma
?
Ctransformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp/transformer_encoder/layer_normalization_1/gamma*
_output_shapes	
:?*
dtype0
?
,transformer_encoder/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,transformer_encoder/layer_normalization/beta
?
@transformer_encoder/layer_normalization/beta/Read/ReadVariableOpReadVariableOp,transformer_encoder/layer_normalization/beta*
_output_shapes	
:?*
dtype0
?
-transformer_encoder/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-transformer_encoder/layer_normalization/gamma
?
Atransformer_encoder/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp-transformer_encoder/layer_normalization/gamma*
_output_shapes	
:?*
dtype0
?
>transformer_encoder/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>transformer_encoder/multi_head_attention/attention_output/bias
?
Rtransformer_encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp>transformer_encoder/multi_head_attention/attention_output/bias*
_output_shapes	
:?*
dtype0
?
@transformer_encoder/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*Q
shared_nameB@transformer_encoder/multi_head_attention/attention_output/kernel
?
Ttransformer_encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp@transformer_encoder/multi_head_attention/attention_output/kernel*#
_output_shapes
:
?*
dtype0
?
3transformer_encoder/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*D
shared_name53transformer_encoder/multi_head_attention/value/bias
?
Gtransformer_encoder/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/value/bias*
_output_shapes

:
*
dtype0
?
5transformer_encoder/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*F
shared_name75transformer_encoder/multi_head_attention/value/kernel
?
Itransformer_encoder/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp5transformer_encoder/multi_head_attention/value/kernel*#
_output_shapes
:?
*
dtype0
?
1transformer_encoder/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*B
shared_name31transformer_encoder/multi_head_attention/key/bias
?
Etransformer_encoder/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp1transformer_encoder/multi_head_attention/key/bias*
_output_shapes

:
*
dtype0
?
3transformer_encoder/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*D
shared_name53transformer_encoder/multi_head_attention/key/kernel
?
Gtransformer_encoder/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/key/kernel*#
_output_shapes
:?
*
dtype0
?
3transformer_encoder/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*D
shared_name53transformer_encoder/multi_head_attention/query/bias
?
Gtransformer_encoder/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/query/bias*
_output_shapes

:
*
dtype0
?
5transformer_encoder/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*F
shared_name75transformer_encoder/multi_head_attention/query/kernel
?
Itransformer_encoder/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp5transformer_encoder/multi_head_attention/query/kernel*#
_output_shapes
:?
*
dtype0
?
position_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*.
shared_nameposition_embedding/embeddings
?
1position_embedding/embeddings/Read/ReadVariableOpReadVariableOpposition_embedding/embeddings*
_output_shapes
:	2?*
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?'?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?'?*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????2*
dtype0*
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1embedding/embeddingsposition_embedding/embeddings5transformer_encoder/multi_head_attention/query/kernel3transformer_encoder/multi_head_attention/query/bias3transformer_encoder/multi_head_attention/key/kernel1transformer_encoder/multi_head_attention/key/bias5transformer_encoder/multi_head_attention/value/kernel3transformer_encoder/multi_head_attention/value/bias@transformer_encoder/multi_head_attention/attention_output/kernel>transformer_encoder/multi_head_attention/attention_output/bias-transformer_encoder/layer_normalization/gamma,transformer_encoder/layer_normalization/beta transformer_encoder/dense/kerneltransformer_encoder/dense/bias"transformer_encoder/dense_1/kernel transformer_encoder/dense_1/bias/transformer_encoder/layer_normalization_1/gamma.transformer_encoder/layer_normalization_1/beta5transformer_decoder/multi_head_attention/query/kernel3transformer_decoder/multi_head_attention/query/bias3transformer_decoder/multi_head_attention/key/kernel1transformer_decoder/multi_head_attention/key/bias5transformer_decoder/multi_head_attention/value/kernel3transformer_decoder/multi_head_attention/value/bias@transformer_decoder/multi_head_attention/attention_output/kernel>transformer_decoder/multi_head_attention/attention_output/bias-transformer_decoder/layer_normalization/gamma,transformer_decoder/layer_normalization/beta7transformer_decoder/multi_head_attention_1/query/kernel5transformer_decoder/multi_head_attention_1/query/bias5transformer_decoder/multi_head_attention_1/key/kernel3transformer_decoder/multi_head_attention_1/key/bias7transformer_decoder/multi_head_attention_1/value/kernel5transformer_decoder/multi_head_attention_1/value/biasBtransformer_decoder/multi_head_attention_1/attention_output/kernel@transformer_decoder/multi_head_attention_1/attention_output/bias/transformer_decoder/layer_normalization_1/gamma.transformer_decoder/layer_normalization_1/beta transformer_decoder/dense/kerneltransformer_decoder/dense/bias"transformer_decoder/dense_1/kernel transformer_decoder/dense_1/bias/transformer_decoder/layer_normalization_2/gamma.transformer_decoder/layer_normalization_2/betatime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/bias*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_87641

NoOpNoOp
υ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
embeddings
 position_embeddings*

!	keras_api* 
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_multi_head_attention_layer
)_attention_layernorm
*_feedforward_layernorm
+_attention_dropout
,_intermediate_dense
-_output_dense
._output_dropout*
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_self_attention_layer
 6_decoder_attention_layernorm
7_cross_attention_layer
8_cross_attention_layernorm
9_cross_attention_dropout
:_feedforward_layernorm
;_self_attention_dropout
<_intermediate_dense
=_output_dense
>_output_dropout*
?
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
	Elayer*
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
L_random_generator* 
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
	Slayer*
?
0
 1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
b16
c17
d18
e19
f20
g21
h22
i23
j24
k25
l26
m27
n28
o29
p30
q31
r32
s33
t34
u35
v36
w37
x38
y39
z40
{41
|42
}43
~44
45
?46
?47*
?
0
 1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
b16
c17
d18
e19
f20
g21
h22
i23
j24
k25
l26
m27
n28
o29
p30
q31
r32
s33
t34
u35
v36
w37
x38
y39
z40
{41
|42
}43
~44
45
?46
?47*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
?
?beta_1
?beta_2

?decay
?learning_rate
	?iterm? m?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?hm?im?jm?km?lm?mm?nm?om?pm?qm?rm?sm?tm?um?vm?wm?xm?ym?zm?{m?|m?}m?~m?m?	?m?	?m?v? v?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?ov?pv?qv?rv?sv?tv?uv?vv?wv?xv?yv?zv?{v?|v?}v?~v?v?	?v?	?v?*

?serving_default* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

 0*

 0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
qk
VARIABLE_VALUEposition_embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15*
z
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	\gamma
]beta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	^gamma
_beta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

`kernel
abias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

bkernel
cbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
d0
e1
f2
g3
h4
i5
j6
k7
l8
m9
n10
o11
p12
q13
r14
s15
t16
u17
v18
w19
x20
y21
z22
{23
|24
}25*
?
d0
e1
f2
g3
h4
i5
j6
k7
l8
m9
n10
o11
p12
q13
r14
s15
t16
u17
v18
w19
x20
y21
z22
{23
|24
}25*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	lgamma
mbeta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	vgamma
wbeta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	xgamma
ybeta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

zkernel
{bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

|kernel
}bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 

~0
1*

~0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

~kernel
bias*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias*
uo
VARIABLE_VALUE5transformer_encoder/multi_head_attention/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1transformer_encoder/multi_head_attention/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder/multi_head_attention/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE@transformer_encoder/multi_head_attention/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE>transformer_encoder/multi_head_attention/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-transformer_encoder/layer_normalization/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,transformer_encoder/layer_normalization/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_encoder/layer_normalization_1/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_encoder/layer_normalization_1/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE transformer_encoder/dense/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEtransformer_encoder/dense/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"transformer_encoder/dense_1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE transformer_encoder/dense_1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5transformer_decoder/multi_head_attention/query/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_decoder/multi_head_attention/query/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_decoder/multi_head_attention/key/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_decoder/multi_head_attention/key/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5transformer_decoder/multi_head_attention/value/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_decoder/multi_head_attention/value/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE@transformer_decoder/multi_head_attention/attention_output/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE>transformer_decoder/multi_head_attention/attention_output/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-transformer_decoder/layer_normalization/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,transformer_decoder/layer_normalization/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7transformer_decoder/multi_head_attention_1/query/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5transformer_decoder/multi_head_attention_1/query/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5transformer_decoder/multi_head_attention_1/key/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_decoder/multi_head_attention_1/key/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7transformer_decoder/multi_head_attention_1/value/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5transformer_decoder/multi_head_attention_1/value/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEBtransformer_decoder/multi_head_attention_1/attention_output/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE@transformer_decoder/multi_head_attention_1/attention_output/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_decoder/layer_normalization_1/gamma'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_decoder/layer_normalization_1/beta'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_decoder/layer_normalization_2/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_decoder/layer_normalization_2/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE transformer_decoder/dense/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEtransformer_decoder/dense/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"transformer_decoder/dense_1/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE transformer_decoder/dense_1/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEtime_distributed/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEtime_distributed/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEtime_distributed_1/kernel'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEtime_distributed_1/bias'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
5
(0
)1
*2
+3
,4
-5
.6*
* 
* 
* 
* 
* 
* 
* 
<
T0
U1
V2
W3
X4
Y5
Z6
[7*
<
T0
U1
V2
W3
X4
Y5
Z6
[7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Tkernel
Ubias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Vkernel
Wbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Xkernel
Ybias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Zkernel
[bias*

\0
]1*

\0
]1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

^0
_1*

^0
_1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

`0
a1*

`0
a1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

b0
c1*

b0
c1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
J
50
61
72
83
94
:5
;6
<7
=8
>9*
* 
* 
* 
* 
* 
* 
* 
<
d0
e1
f2
g3
h4
i5
j6
k7*
<
d0
e1
f2
g3
h4
i5
j6
k7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

dkernel
ebias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

fkernel
gbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

hkernel
ibias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

jkernel
kbias*

l0
m1*

l0
m1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
<
n0
o1
p2
q3
r4
s5
t6
u7*
<
n0
o1
p2
q3
r4
s5
t6
u7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

nkernel
obias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

pkernel
qbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

rkernel
sbias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

tkernel
ubias*

v0
w1*

v0
w1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

x0
y1*

x0
y1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

z0
{1*

z0
{1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

|0
}1*

|0
}1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 

E0*
* 
* 
* 
* 
* 
* 
* 

~0
1*

~0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

S0*
* 
* 
* 
* 
* 
* 
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
* 
4
?0
?1
?2
?3
?4
?5*
* 
* 
* 

T0
U1*

T0
U1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

X0
Y1*

X0
Y1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

Z0
[1*

Z0
[1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
?0
?1
?2
?3
?4
?5*
* 
* 
* 

d0
e1*

d0
e1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

f0
g1*

f0
g1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

h0
i1*

h0
i1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

j0
k1*

j0
k1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
?0
?1
?2
?3
?4
?5*
* 
* 
* 

n0
o1*

n0
o1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

p0
q1*

p0
q1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

r0
s1*

r0
s1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

t0
u1*

t0
u1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/position_embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/transformer_encoder/multi_head_attention/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEEAdam/transformer_encoder/multi_head_attention/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/transformer_encoder/layer_normalization/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/transformer_encoder/layer_normalization/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_encoder/layer_normalization_1/gamma/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_encoder/layer_normalization_1/beta/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_encoder/dense/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/transformer_encoder/dense/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE)Adam/transformer_encoder/dense_1/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_encoder/dense_1/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention/query/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/query/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/key/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/transformer_decoder/multi_head_attention/key/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention/value/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/value/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEEAdam/transformer_decoder/multi_head_attention/attention_output/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/transformer_decoder/layer_normalization/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/transformer_decoder/layer_normalization/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE>Adam/transformer_decoder/multi_head_attention_1/query/kernel/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/query/bias/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/key/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention_1/key/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE>Adam/transformer_decoder/multi_head_attention_1/value/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/value/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_decoder/layer_normalization_1/gamma/mCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_decoder/layer_normalization_1/beta/mCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_decoder/layer_normalization_2/gamma/mCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_decoder/layer_normalization_2/beta/mCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_decoder/dense/kernel/mCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/transformer_decoder/dense/bias/mCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE)Adam/transformer_decoder/dense_1/kernel/mCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_decoder/dense_1/bias/mCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed/kernel/mCvariables/44/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/time_distributed/bias/mCvariables/45/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/time_distributed_1/kernel/mCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_1/bias/mCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/position_embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/transformer_encoder/multi_head_attention/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEEAdam/transformer_encoder/multi_head_attention/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/transformer_encoder/layer_normalization/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/transformer_encoder/layer_normalization/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_encoder/layer_normalization_1/gamma/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_encoder/layer_normalization_1/beta/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_encoder/dense/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/transformer_encoder/dense/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE)Adam/transformer_encoder/dense_1/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_encoder/dense_1/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention/query/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/query/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/key/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/transformer_decoder/multi_head_attention/key/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention/value/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention/value/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEEAdam/transformer_decoder/multi_head_attention/attention_output/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/transformer_decoder/layer_normalization/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/transformer_decoder/layer_normalization/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE>Adam/transformer_decoder/multi_head_attention_1/query/kernel/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/query/bias/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/key/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE:Adam/transformer_decoder/multi_head_attention_1/key/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE>Adam/transformer_decoder/multi_head_attention_1/value/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE<Adam/transformer_decoder/multi_head_attention_1/value/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_decoder/layer_normalization_1/gamma/vCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_decoder/layer_normalization_1/beta/vCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE6Adam/transformer_decoder/layer_normalization_2/gamma/vCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/transformer_decoder/layer_normalization_2/beta/vCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_decoder/dense/kernel/vCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE%Adam/transformer_decoder/dense/bias/vCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE)Adam/transformer_decoder/dense_1/kernel/vCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE'Adam/transformer_decoder/dense_1/bias/vCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed/kernel/vCvariables/44/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/time_distributed/bias/vCvariables/45/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/time_distributed_1/kernel/vCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_1/bias/vCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?V
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp1position_embedding/embeddings/Read/ReadVariableOpItransformer_encoder/multi_head_attention/query/kernel/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/query/bias/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/key/kernel/Read/ReadVariableOpEtransformer_encoder/multi_head_attention/key/bias/Read/ReadVariableOpItransformer_encoder/multi_head_attention/value/kernel/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/value/bias/Read/ReadVariableOpTtransformer_encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpRtransformer_encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpAtransformer_encoder/layer_normalization/gamma/Read/ReadVariableOp@transformer_encoder/layer_normalization/beta/Read/ReadVariableOpCtransformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpBtransformer_encoder/layer_normalization_1/beta/Read/ReadVariableOp4transformer_encoder/dense/kernel/Read/ReadVariableOp2transformer_encoder/dense/bias/Read/ReadVariableOp6transformer_encoder/dense_1/kernel/Read/ReadVariableOp4transformer_encoder/dense_1/bias/Read/ReadVariableOpItransformer_decoder/multi_head_attention/query/kernel/Read/ReadVariableOpGtransformer_decoder/multi_head_attention/query/bias/Read/ReadVariableOpGtransformer_decoder/multi_head_attention/key/kernel/Read/ReadVariableOpEtransformer_decoder/multi_head_attention/key/bias/Read/ReadVariableOpItransformer_decoder/multi_head_attention/value/kernel/Read/ReadVariableOpGtransformer_decoder/multi_head_attention/value/bias/Read/ReadVariableOpTtransformer_decoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpRtransformer_decoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpAtransformer_decoder/layer_normalization/gamma/Read/ReadVariableOp@transformer_decoder/layer_normalization/beta/Read/ReadVariableOpKtransformer_decoder/multi_head_attention_1/query/kernel/Read/ReadVariableOpItransformer_decoder/multi_head_attention_1/query/bias/Read/ReadVariableOpItransformer_decoder/multi_head_attention_1/key/kernel/Read/ReadVariableOpGtransformer_decoder/multi_head_attention_1/key/bias/Read/ReadVariableOpKtransformer_decoder/multi_head_attention_1/value/kernel/Read/ReadVariableOpItransformer_decoder/multi_head_attention_1/value/bias/Read/ReadVariableOpVtransformer_decoder/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpTtransformer_decoder/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpCtransformer_decoder/layer_normalization_1/gamma/Read/ReadVariableOpBtransformer_decoder/layer_normalization_1/beta/Read/ReadVariableOpCtransformer_decoder/layer_normalization_2/gamma/Read/ReadVariableOpBtransformer_decoder/layer_normalization_2/beta/Read/ReadVariableOp4transformer_decoder/dense/kernel/Read/ReadVariableOp2transformer_decoder/dense/bias/Read/ReadVariableOp6transformer_decoder/dense_1/kernel/Read/ReadVariableOp4transformer_decoder/dense_1/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_1/kernel/Read/ReadVariableOp+time_distributed_1/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp8Adam/position_embedding/embeddings/m/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/query/bias/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpLAdam/transformer_encoder/multi_head_attention/key/bias/m/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/value/bias/m/Read/ReadVariableOp[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpYAdam/transformer_encoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpHAdam/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOpGAdam/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpJAdam/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOpIAdam/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOp;Adam/transformer_encoder/dense/kernel/m/Read/ReadVariableOp9Adam/transformer_encoder/dense/bias/m/Read/ReadVariableOp=Adam/transformer_encoder/dense_1/kernel/m/Read/ReadVariableOp;Adam/transformer_encoder/dense_1/bias/m/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/query/bias/m/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpLAdam/transformer_decoder/multi_head_attention/key/bias/m/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/value/bias/m/Read/ReadVariableOp[Adam/transformer_decoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpYAdam/transformer_decoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpHAdam/transformer_decoder/layer_normalization/gamma/m/Read/ReadVariableOpGAdam/transformer_decoder/layer_normalization/beta/m/Read/ReadVariableOpRAdam/transformer_decoder/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/query/bias/m/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention_1/key/bias/m/Read/ReadVariableOpRAdam/transformer_decoder/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/value/bias/m/Read/ReadVariableOp]Adam/transformer_decoder/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_decoder/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpJAdam/transformer_decoder/layer_normalization_1/gamma/m/Read/ReadVariableOpIAdam/transformer_decoder/layer_normalization_1/beta/m/Read/ReadVariableOpJAdam/transformer_decoder/layer_normalization_2/gamma/m/Read/ReadVariableOpIAdam/transformer_decoder/layer_normalization_2/beta/m/Read/ReadVariableOp;Adam/transformer_decoder/dense/kernel/m/Read/ReadVariableOp9Adam/transformer_decoder/dense/bias/m/Read/ReadVariableOp=Adam/transformer_decoder/dense_1/kernel/m/Read/ReadVariableOp;Adam/transformer_decoder/dense_1/bias/m/Read/ReadVariableOp2Adam/time_distributed/kernel/m/Read/ReadVariableOp0Adam/time_distributed/bias/m/Read/ReadVariableOp4Adam/time_distributed_1/kernel/m/Read/ReadVariableOp2Adam/time_distributed_1/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp8Adam/position_embedding/embeddings/v/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/query/bias/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpLAdam/transformer_encoder/multi_head_attention/key/bias/v/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/value/bias/v/Read/ReadVariableOp[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpYAdam/transformer_encoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpHAdam/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOpGAdam/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpJAdam/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOpIAdam/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOp;Adam/transformer_encoder/dense/kernel/v/Read/ReadVariableOp9Adam/transformer_encoder/dense/bias/v/Read/ReadVariableOp=Adam/transformer_encoder/dense_1/kernel/v/Read/ReadVariableOp;Adam/transformer_encoder/dense_1/bias/v/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/query/bias/v/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpLAdam/transformer_decoder/multi_head_attention/key/bias/v/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention/value/bias/v/Read/ReadVariableOp[Adam/transformer_decoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpYAdam/transformer_decoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpHAdam/transformer_decoder/layer_normalization/gamma/v/Read/ReadVariableOpGAdam/transformer_decoder/layer_normalization/beta/v/Read/ReadVariableOpRAdam/transformer_decoder/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/query/bias/v/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpNAdam/transformer_decoder/multi_head_attention_1/key/bias/v/Read/ReadVariableOpRAdam/transformer_decoder/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpPAdam/transformer_decoder/multi_head_attention_1/value/bias/v/Read/ReadVariableOp]Adam/transformer_decoder/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_decoder/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpJAdam/transformer_decoder/layer_normalization_1/gamma/v/Read/ReadVariableOpIAdam/transformer_decoder/layer_normalization_1/beta/v/Read/ReadVariableOpJAdam/transformer_decoder/layer_normalization_2/gamma/v/Read/ReadVariableOpIAdam/transformer_decoder/layer_normalization_2/beta/v/Read/ReadVariableOp;Adam/transformer_decoder/dense/kernel/v/Read/ReadVariableOp9Adam/transformer_decoder/dense/bias/v/Read/ReadVariableOp=Adam/transformer_decoder/dense_1/kernel/v/Read/ReadVariableOp;Adam/transformer_decoder/dense_1/bias/v/Read/ReadVariableOp2Adam/time_distributed/kernel/v/Read/ReadVariableOp0Adam/time_distributed/bias/v/Read/ReadVariableOp4Adam/time_distributed_1/kernel/v/Read/ReadVariableOp2Adam/time_distributed_1/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_90370
?>
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsposition_embedding/embeddings5transformer_encoder/multi_head_attention/query/kernel3transformer_encoder/multi_head_attention/query/bias3transformer_encoder/multi_head_attention/key/kernel1transformer_encoder/multi_head_attention/key/bias5transformer_encoder/multi_head_attention/value/kernel3transformer_encoder/multi_head_attention/value/bias@transformer_encoder/multi_head_attention/attention_output/kernel>transformer_encoder/multi_head_attention/attention_output/bias-transformer_encoder/layer_normalization/gamma,transformer_encoder/layer_normalization/beta/transformer_encoder/layer_normalization_1/gamma.transformer_encoder/layer_normalization_1/beta transformer_encoder/dense/kerneltransformer_encoder/dense/bias"transformer_encoder/dense_1/kernel transformer_encoder/dense_1/bias5transformer_decoder/multi_head_attention/query/kernel3transformer_decoder/multi_head_attention/query/bias3transformer_decoder/multi_head_attention/key/kernel1transformer_decoder/multi_head_attention/key/bias5transformer_decoder/multi_head_attention/value/kernel3transformer_decoder/multi_head_attention/value/bias@transformer_decoder/multi_head_attention/attention_output/kernel>transformer_decoder/multi_head_attention/attention_output/bias-transformer_decoder/layer_normalization/gamma,transformer_decoder/layer_normalization/beta7transformer_decoder/multi_head_attention_1/query/kernel5transformer_decoder/multi_head_attention_1/query/bias5transformer_decoder/multi_head_attention_1/key/kernel3transformer_decoder/multi_head_attention_1/key/bias7transformer_decoder/multi_head_attention_1/value/kernel5transformer_decoder/multi_head_attention_1/value/biasBtransformer_decoder/multi_head_attention_1/attention_output/kernel@transformer_decoder/multi_head_attention_1/attention_output/bias/transformer_decoder/layer_normalization_1/gamma.transformer_decoder/layer_normalization_1/beta/transformer_decoder/layer_normalization_2/gamma.transformer_decoder/layer_normalization_2/beta transformer_decoder/dense/kerneltransformer_decoder/dense/bias"transformer_decoder/dense_1/kernel transformer_decoder/dense_1/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/biasbeta_1beta_2decaylearning_rate	Adam/itertotal_1count_1totalcountAdam/embedding/embeddings/m$Adam/position_embedding/embeddings/m<Adam/transformer_encoder/multi_head_attention/query/kernel/m:Adam/transformer_encoder/multi_head_attention/query/bias/m:Adam/transformer_encoder/multi_head_attention/key/kernel/m8Adam/transformer_encoder/multi_head_attention/key/bias/m<Adam/transformer_encoder/multi_head_attention/value/kernel/m:Adam/transformer_encoder/multi_head_attention/value/bias/mGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mEAdam/transformer_encoder/multi_head_attention/attention_output/bias/m4Adam/transformer_encoder/layer_normalization/gamma/m3Adam/transformer_encoder/layer_normalization/beta/m6Adam/transformer_encoder/layer_normalization_1/gamma/m5Adam/transformer_encoder/layer_normalization_1/beta/m'Adam/transformer_encoder/dense/kernel/m%Adam/transformer_encoder/dense/bias/m)Adam/transformer_encoder/dense_1/kernel/m'Adam/transformer_encoder/dense_1/bias/m<Adam/transformer_decoder/multi_head_attention/query/kernel/m:Adam/transformer_decoder/multi_head_attention/query/bias/m:Adam/transformer_decoder/multi_head_attention/key/kernel/m8Adam/transformer_decoder/multi_head_attention/key/bias/m<Adam/transformer_decoder/multi_head_attention/value/kernel/m:Adam/transformer_decoder/multi_head_attention/value/bias/mGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/mEAdam/transformer_decoder/multi_head_attention/attention_output/bias/m4Adam/transformer_decoder/layer_normalization/gamma/m3Adam/transformer_decoder/layer_normalization/beta/m>Adam/transformer_decoder/multi_head_attention_1/query/kernel/m<Adam/transformer_decoder/multi_head_attention_1/query/bias/m<Adam/transformer_decoder/multi_head_attention_1/key/kernel/m:Adam/transformer_decoder/multi_head_attention_1/key/bias/m>Adam/transformer_decoder/multi_head_attention_1/value/kernel/m<Adam/transformer_decoder/multi_head_attention_1/value/bias/mIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/mGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/m6Adam/transformer_decoder/layer_normalization_1/gamma/m5Adam/transformer_decoder/layer_normalization_1/beta/m6Adam/transformer_decoder/layer_normalization_2/gamma/m5Adam/transformer_decoder/layer_normalization_2/beta/m'Adam/transformer_decoder/dense/kernel/m%Adam/transformer_decoder/dense/bias/m)Adam/transformer_decoder/dense_1/kernel/m'Adam/transformer_decoder/dense_1/bias/mAdam/time_distributed/kernel/mAdam/time_distributed/bias/m Adam/time_distributed_1/kernel/mAdam/time_distributed_1/bias/mAdam/embedding/embeddings/v$Adam/position_embedding/embeddings/v<Adam/transformer_encoder/multi_head_attention/query/kernel/v:Adam/transformer_encoder/multi_head_attention/query/bias/v:Adam/transformer_encoder/multi_head_attention/key/kernel/v8Adam/transformer_encoder/multi_head_attention/key/bias/v<Adam/transformer_encoder/multi_head_attention/value/kernel/v:Adam/transformer_encoder/multi_head_attention/value/bias/vGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vEAdam/transformer_encoder/multi_head_attention/attention_output/bias/v4Adam/transformer_encoder/layer_normalization/gamma/v3Adam/transformer_encoder/layer_normalization/beta/v6Adam/transformer_encoder/layer_normalization_1/gamma/v5Adam/transformer_encoder/layer_normalization_1/beta/v'Adam/transformer_encoder/dense/kernel/v%Adam/transformer_encoder/dense/bias/v)Adam/transformer_encoder/dense_1/kernel/v'Adam/transformer_encoder/dense_1/bias/v<Adam/transformer_decoder/multi_head_attention/query/kernel/v:Adam/transformer_decoder/multi_head_attention/query/bias/v:Adam/transformer_decoder/multi_head_attention/key/kernel/v8Adam/transformer_decoder/multi_head_attention/key/bias/v<Adam/transformer_decoder/multi_head_attention/value/kernel/v:Adam/transformer_decoder/multi_head_attention/value/bias/vGAdam/transformer_decoder/multi_head_attention/attention_output/kernel/vEAdam/transformer_decoder/multi_head_attention/attention_output/bias/v4Adam/transformer_decoder/layer_normalization/gamma/v3Adam/transformer_decoder/layer_normalization/beta/v>Adam/transformer_decoder/multi_head_attention_1/query/kernel/v<Adam/transformer_decoder/multi_head_attention_1/query/bias/v<Adam/transformer_decoder/multi_head_attention_1/key/kernel/v:Adam/transformer_decoder/multi_head_attention_1/key/bias/v>Adam/transformer_decoder/multi_head_attention_1/value/kernel/v<Adam/transformer_decoder/multi_head_attention_1/value/bias/vIAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/vGAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/v6Adam/transformer_decoder/layer_normalization_1/gamma/v5Adam/transformer_decoder/layer_normalization_1/beta/v6Adam/transformer_decoder/layer_normalization_2/gamma/v5Adam/transformer_decoder/layer_normalization_2/beta/v'Adam/transformer_decoder/dense/kernel/v%Adam/transformer_decoder/dense/bias/v)Adam/transformer_decoder/dense_1/kernel/v'Adam/transformer_decoder/dense_1/bias/vAdam/time_distributed/kernel/vAdam/time_distributed/bias/v Adam/time_distributed_1/kernel/vAdam/time_distributed_1/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_90839??.
?
?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85633

inputs!
dense_1_85623:
??'
dense_1_85625:	?'
identity??dense_1/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_85623dense_1_85625*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_85583\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?'?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????'o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684

inputs*
readvariableop_resource:	2?
identity??ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype0G
ConstConst*
_output_shapes
: *
dtype0*
value	B : I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : }
strided_slice_1/stackPackConst:output:0 strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ?
strided_slice_1/stack_1Packstrided_slice:output:0"strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :?
strided_slice_1/stack_2PackConst_1:output:0"strided_slice_1/stack_2/1:output:0*
N*
T0*
_output_shapes
:?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2?*

begin_mask*
end_mask{
BroadcastToBroadcastTostrided_slice_1:output:0Shape:output:0*
T0*,
_output_shapes
:?????????2?h
IdentityIdentityBroadcastTo:output:0^NoOp*
T0*,
_output_shapes
:?????????2?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:?????????2?: 2 
ReadVariableOpReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_89098

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22q
,multi_head_attention/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
*multi_head_attention/dropout_2/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:05multi_head_attention/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_2/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention/dropout_2/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seedz
5multi_head_attention/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
3multi_head_attention/dropout_2/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_2/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
+multi_head_attention/dropout_2/dropout/CastCast7multi_head_attention/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_2/dropout/Mul_1Mul.multi_head_attention/dropout_2/dropout/Mul:z:0/multi_head_attention/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_2/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?f
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMuldense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?_
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_87641
input_1
unknown:
?'?
	unknown_0:	2? 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:?

	unknown_6:
 
	unknown_7:
?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?!

unknown_17:?


unknown_18:
!

unknown_19:?


unknown_20:
!

unknown_21:?


unknown_22:
!

unknown_23:
?

unknown_24:	?

unknown_25:	?

unknown_26:	?!

unknown_27:?


unknown_28:
!

unknown_29:?


unknown_30:
"

unknown_31:?
?

unknown_32:	
?"

unknown_33:
??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:	?

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:
??'

unknown_46:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_85476t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_85583

inputs2
matmul_readvariableop_resource:
??'.
biasadd_readvariableop_resource:	?'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????'a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:??????????'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_89877

inputs
unknown:
??'
	unknown_0:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_85583p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89848

inputs:
&dense_1_matmul_readvariableop_resource:
??'6
'dense_1_biasadd_readvariableop_resource:	?'
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'g
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????'\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?'?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????'o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89438
decoder_sequence
encoder_sequenceW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:?
J
8multi_head_attention_1_query_add_readvariableop_resource:
W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_1_key_add_readvariableop_resource:
Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?K
8multi_head_attention_1_value_add_readvariableop_resource:	
?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_2_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpE
ShapeShapedecoder_sequence*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :p
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes
:2f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :v
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*
_output_shapes
:2q
GreaterEqualGreaterEqualstrided_slice_2:output:0range_1:output:0*
T0*
_output_shapes

:22V
CastCastGreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_4StridedSliceShape:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0strided_slice_3:output:0strided_slice_4:output:0*
N*
T0*
_output_shapes
:a
ReshapeReshapeCast:y:0Reshape/shape:output:0*
T0*"
_output_shapes
:22Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:e
TileTileReshape:output:0concat:output:0*
T0*+
_output_shapes
:?????????22?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsumdecoder_sequence=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22?
'multi_head_attention/dropout_3/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_3/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2?r
addAddV2dropout_1/Identity:output:0decoder_sequence*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsumencoder_sequence?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsumencoder_sequenceAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
)multi_head_attention_1/dropout_4/IdentityIdentity2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_4/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2dropout/Identity:output:0'layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
dense/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?o
dropout_2/IdentityIdentitydense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
add_2AddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_2/Identity:output:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMean	add_2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_2/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
?
?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85594

inputs!
dense_1_85584:
??'
dense_1_85586:	?'
identity??dense_1/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_85584dense_1_85586*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_85583\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?'?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????'o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
K__inference_time_distributed_layer_call_and_return_conditional_losses_85551

inputs
dense_85541:
??
dense_85543:	?
identity??dense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_85541dense_85543*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_85501\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?A
 __inference__wrapped_model_85476
input_1:
&model_embedding_embedding_lookup_85081:
?'?C
0model_position_embedding_readvariableop_resource:	2?q
Zmodel_transformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
b
Pmodel_transformer_encoder_multi_head_attention_query_add_readvariableop_resource:
o
Xmodel_transformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
`
Nmodel_transformer_encoder_multi_head_attention_key_add_readvariableop_resource:
q
Zmodel_transformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
b
Pmodel_transformer_encoder_multi_head_attention_value_add_readvariableop_resource:
|
emodel_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?j
[model_transformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:	?b
Smodel_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?^
Omodel_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	?U
Amodel_transformer_encoder_dense_tensordot_readvariableop_resource:
??N
?model_transformer_encoder_dense_biasadd_readvariableop_resource:	?W
Cmodel_transformer_encoder_dense_1_tensordot_readvariableop_resource:
??P
Amodel_transformer_encoder_dense_1_biasadd_readvariableop_resource:	?d
Umodel_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?`
Qmodel_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	?q
Zmodel_transformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
b
Pmodel_transformer_decoder_multi_head_attention_query_add_readvariableop_resource:
o
Xmodel_transformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
`
Nmodel_transformer_decoder_multi_head_attention_key_add_readvariableop_resource:
q
Zmodel_transformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
b
Pmodel_transformer_decoder_multi_head_attention_value_add_readvariableop_resource:
|
emodel_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?j
[model_transformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource:	?b
Smodel_transformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?^
Omodel_transformer_decoder_layer_normalization_batchnorm_readvariableop_resource:	?s
\model_transformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:?
d
Rmodel_transformer_decoder_multi_head_attention_1_query_add_readvariableop_resource:
q
Zmodel_transformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
b
Pmodel_transformer_decoder_multi_head_attention_1_key_add_readvariableop_resource:
t
\model_transformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?e
Rmodel_transformer_decoder_multi_head_attention_1_value_add_readvariableop_resource:	
?
gmodel_transformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??l
]model_transformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?d
Umodel_transformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?`
Qmodel_transformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource:	?U
Amodel_transformer_decoder_dense_tensordot_readvariableop_resource:
??N
?model_transformer_decoder_dense_biasadd_readvariableop_resource:	?W
Cmodel_transformer_decoder_dense_1_tensordot_readvariableop_resource:
??P
Amodel_transformer_decoder_dense_1_biasadd_readvariableop_resource:	?d
Umodel_transformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource:	?`
Qmodel_transformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource:	?O
;model_time_distributed_dense_matmul_readvariableop_resource:
??K
<model_time_distributed_dense_biasadd_readvariableop_resource:	?S
?model_time_distributed_1_dense_1_matmul_readvariableop_resource:
??'O
@model_time_distributed_1_dense_1_biasadd_readvariableop_resource:	?'
identity?? model/embedding/embedding_lookup?'model/position_embedding/ReadVariableOp?3model/time_distributed/dense/BiasAdd/ReadVariableOp?2model/time_distributed/dense/MatMul/ReadVariableOp?7model/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?6model/time_distributed_1/dense_1/MatMul/ReadVariableOp?6model/transformer_decoder/dense/BiasAdd/ReadVariableOp?8model/transformer_decoder/dense/Tensordot/ReadVariableOp?8model/transformer_decoder/dense_1/BiasAdd/ReadVariableOp?:model/transformer_decoder/dense_1/Tensordot/ReadVariableOp?Fmodel/transformer_decoder/layer_normalization/batchnorm/ReadVariableOp?Jmodel/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp?Hmodel/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp?Lmodel/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Hmodel/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp?Lmodel/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp?Rmodel/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp?\model/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp?Emodel/transformer_decoder/multi_head_attention/key/add/ReadVariableOp?Omodel/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Gmodel/transformer_decoder/multi_head_attention/query/add/ReadVariableOp?Qmodel/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Gmodel/transformer_decoder/multi_head_attention/value/add/ReadVariableOp?Qmodel/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Tmodel/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp?^model/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?Gmodel/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOp?Qmodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?Imodel/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOp?Smodel/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?Imodel/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOp?Smodel/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?6model/transformer_encoder/dense/BiasAdd/ReadVariableOp?8model/transformer_encoder/dense/Tensordot/ReadVariableOp?8model/transformer_encoder/dense_1/BiasAdd/ReadVariableOp?:model/transformer_encoder/dense_1/Tensordot/ReadVariableOp?Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp?Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp?Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp?Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp?\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp?Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp?Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp?Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp?Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpf
model/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:?????????2?
 model/embedding/embedding_lookupResourceGather&model_embedding_embedding_lookup_85081model/embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@model/embedding/embedding_lookup/85081*,
_output_shapes
:?????????2?*
dtype0?
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding/embedding_lookup/85081*,
_output_shapes
:?????????2??
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????2?_
model/embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
model/embedding/NotEqualNotEqualinput_1#model/embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
model/position_embedding/ShapeShape4model/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
,model/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
.model/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????x
.model/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model/position_embedding/strided_sliceStridedSlice'model/position_embedding/Shape:output:05model/position_embedding/strided_slice/stack:output:07model/position_embedding/strided_slice/stack_1:output:07model/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'model/position_embedding/ReadVariableOpReadVariableOp0model_position_embedding_readvariableop_resource*
_output_shapes
:	2?*
dtype0`
model/position_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : b
 model/position_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :r
0model/position_embedding/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ?
.model/position_embedding/strided_slice_1/stackPack'model/position_embedding/Const:output:09model/position_embedding/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:t
2model/position_embedding/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ?
0model/position_embedding/strided_slice_1/stack_1Pack/model/position_embedding/strided_slice:output:0;model/position_embedding/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:t
2model/position_embedding/strided_slice_1/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :?
0model/position_embedding/strided_slice_1/stack_2Pack)model/position_embedding/Const_1:output:0;model/position_embedding/strided_slice_1/stack_2/1:output:0*
N*
T0*
_output_shapes
:?
(model/position_embedding/strided_slice_1StridedSlice/model/position_embedding/ReadVariableOp:value:07model/position_embedding/strided_slice_1/stack:output:09model/position_embedding/strided_slice_1/stack_1:output:09model/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2?*

begin_mask*
end_mask?
$model/position_embedding/BroadcastToBroadcastTo1model/position_embedding/strided_slice_1:output:0'model/position_embedding/Shape:output:0*
T0*,
_output_shapes
:?????????2??
 model/tf.__operators__.add/AddV2AddV24model/embedding/embedding_lookup/Identity_1:output:0-model/position_embedding/BroadcastTo:output:0*
T0*,
_output_shapes
:?????????2??
Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Bmodel/transformer_encoder/multi_head_attention/query/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Ymodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpPmodel_transformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
8model/transformer_encoder/multi_head_attention/query/addAddV2Kmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Omodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
@model/transformer_encoder/multi_head_attention/key/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Wmodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpNmodel_transformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
6model/transformer_encoder/multi_head_attention/key/addAddV2Imodel/transformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Mmodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Bmodel/transformer_encoder/multi_head_attention/value/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Ymodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpPmodel_transformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
8model/transformer_encoder/multi_head_attention/value/addAddV2Kmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Omodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
y
4model/transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
2model/transformer_encoder/multi_head_attention/MulMul<model/transformer_encoder/multi_head_attention/query/add:z:0=model/transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
<model/transformer_encoder/multi_head_attention/einsum/EinsumEinsum:model/transformer_encoder/multi_head_attention/key/add:z:06model/transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
>model/transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmaxEmodel/transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
Amodel/transformer_encoder/multi_head_attention/dropout_2/IdentityIdentityHmodel/transformer_encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
>model/transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumJmodel/transformer_encoder/multi_head_attention/dropout_2/Identity:output:0<model/transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpemodel_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Mmodel/transformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumGmodel/transformer_encoder/multi_head_attention/einsum_1/Einsum:output:0dmodel/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOp[model_transformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel/transformer_encoder/multi_head_attention/attention_output/addAddV2Vmodel/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Zmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
*model/transformer_encoder/dropout/IdentityIdentityGmodel/transformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
model/transformer_encoder/addAddV2$model/tf.__operators__.add/AddV2:z:03model/transformer_encoder/dropout/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Lmodel/transformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model/transformer_encoder/layer_normalization/moments/meanMean!model/transformer_encoder/add:z:0Umodel/transformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
Bmodel/transformer_encoder/layer_normalization/moments/StopGradientStopGradientCmodel/transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Gmodel/transformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference!model/transformer_encoder/add:z:0Kmodel/transformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Pmodel/transformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model/transformer_encoder/layer_normalization/moments/varianceMeanKmodel/transformer_encoder/layer_normalization/moments/SquaredDifference:z:0Ymodel/transformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
=model/transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
;model/transformer_encoder/layer_normalization/batchnorm/addAddV2Gmodel/transformer_encoder/layer_normalization/moments/variance:output:0Fmodel/transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
=model/transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt?model/transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;model/transformer_encoder/layer_normalization/batchnorm/mulMulAmodel/transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Rmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_encoder/layer_normalization/batchnorm/mul_1Mul!model/transformer_encoder/add:z:0?model/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_encoder/layer_normalization/batchnorm/mul_2MulCmodel/transformer_encoder/layer_normalization/moments/mean:output:0?model/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;model/transformer_encoder/layer_normalization/batchnorm/subSubNmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0Amodel/transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_encoder/layer_normalization/batchnorm/add_1AddV2Amodel/transformer_encoder/layer_normalization/batchnorm/mul_1:z:0?model/transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
8model/transformer_encoder/dense/Tensordot/ReadVariableOpReadVariableOpAmodel_transformer_encoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.model/transformer_encoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.model/transformer_encoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/model/transformer_encoder/dense/Tensordot/ShapeShapeAmodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:y
7model/transformer_encoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_encoder/dense/Tensordot/GatherV2GatherV28model/transformer_encoder/dense/Tensordot/Shape:output:07model/transformer_encoder/dense/Tensordot/free:output:0@model/transformer_encoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9model/transformer_encoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_encoder/dense/Tensordot/GatherV2_1GatherV28model/transformer_encoder/dense/Tensordot/Shape:output:07model/transformer_encoder/dense/Tensordot/axes:output:0Bmodel/transformer_encoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/model/transformer_encoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.model/transformer_encoder/dense/Tensordot/ProdProd;model/transformer_encoder/dense/Tensordot/GatherV2:output:08model/transformer_encoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/transformer_encoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0model/transformer_encoder/dense/Tensordot/Prod_1Prod=model/transformer_encoder/dense/Tensordot/GatherV2_1:output:0:model/transformer_encoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/transformer_encoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0model/transformer_encoder/dense/Tensordot/concatConcatV27model/transformer_encoder/dense/Tensordot/free:output:07model/transformer_encoder/dense/Tensordot/axes:output:0>model/transformer_encoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/model/transformer_encoder/dense/Tensordot/stackPack7model/transformer_encoder/dense/Tensordot/Prod:output:09model/transformer_encoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3model/transformer_encoder/dense/Tensordot/transpose	TransposeAmodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:09model/transformer_encoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
1model/transformer_encoder/dense/Tensordot/ReshapeReshape7model/transformer_encoder/dense/Tensordot/transpose:y:08model/transformer_encoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0model/transformer_encoder/dense/Tensordot/MatMulMatMul:model/transformer_encoder/dense/Tensordot/Reshape:output:0@model/transformer_encoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1model/transformer_encoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7model/transformer_encoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_encoder/dense/Tensordot/concat_1ConcatV2;model/transformer_encoder/dense/Tensordot/GatherV2:output:0:model/transformer_encoder/dense/Tensordot/Const_2:output:0@model/transformer_encoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)model/transformer_encoder/dense/TensordotReshape:model/transformer_encoder/dense/Tensordot/MatMul:product:0;model/transformer_encoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
6model/transformer_encoder/dense/BiasAdd/ReadVariableOpReadVariableOp?model_transformer_encoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'model/transformer_encoder/dense/BiasAddBiasAdd2model/transformer_encoder/dense/Tensordot:output:0>model/transformer_encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
$model/transformer_encoder/dense/ReluRelu0model/transformer_encoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
:model/transformer_encoder/dense_1/Tensordot/ReadVariableOpReadVariableOpCmodel_transformer_encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0z
0model/transformer_encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
0model/transformer_encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
1model/transformer_encoder/dense_1/Tensordot/ShapeShape2model/transformer_encoder/dense/Relu:activations:0*
T0*
_output_shapes
:{
9model/transformer_encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_encoder/dense_1/Tensordot/GatherV2GatherV2:model/transformer_encoder/dense_1/Tensordot/Shape:output:09model/transformer_encoder/dense_1/Tensordot/free:output:0Bmodel/transformer_encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;model/transformer_encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6model/transformer_encoder/dense_1/Tensordot/GatherV2_1GatherV2:model/transformer_encoder/dense_1/Tensordot/Shape:output:09model/transformer_encoder/dense_1/Tensordot/axes:output:0Dmodel/transformer_encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1model/transformer_encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
0model/transformer_encoder/dense_1/Tensordot/ProdProd=model/transformer_encoder/dense_1/Tensordot/GatherV2:output:0:model/transformer_encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3model/transformer_encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
2model/transformer_encoder/dense_1/Tensordot/Prod_1Prod?model/transformer_encoder/dense_1/Tensordot/GatherV2_1:output:0<model/transformer_encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7model/transformer_encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_encoder/dense_1/Tensordot/concatConcatV29model/transformer_encoder/dense_1/Tensordot/free:output:09model/transformer_encoder/dense_1/Tensordot/axes:output:0@model/transformer_encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
1model/transformer_encoder/dense_1/Tensordot/stackPack9model/transformer_encoder/dense_1/Tensordot/Prod:output:0;model/transformer_encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
5model/transformer_encoder/dense_1/Tensordot/transpose	Transpose2model/transformer_encoder/dense/Relu:activations:0;model/transformer_encoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
3model/transformer_encoder/dense_1/Tensordot/ReshapeReshape9model/transformer_encoder/dense_1/Tensordot/transpose:y:0:model/transformer_encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
2model/transformer_encoder/dense_1/Tensordot/MatMulMatMul<model/transformer_encoder/dense_1/Tensordot/Reshape:output:0Bmodel/transformer_encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????~
3model/transformer_encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?{
9model/transformer_encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_encoder/dense_1/Tensordot/concat_1ConcatV2=model/transformer_encoder/dense_1/Tensordot/GatherV2:output:0<model/transformer_encoder/dense_1/Tensordot/Const_2:output:0Bmodel/transformer_encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
+model/transformer_encoder/dense_1/TensordotReshape<model/transformer_encoder/dense_1/Tensordot/MatMul:product:0=model/transformer_encoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
8model/transformer_encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmodel_transformer_encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)model/transformer_encoder/dense_1/BiasAddBiasAdd4model/transformer_encoder/dense_1/Tensordot:output:0@model/transformer_encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
,model/transformer_encoder/dropout_1/IdentityIdentity2model/transformer_encoder/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
model/transformer_encoder/add_1AddV2Amodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:05model/transformer_encoder/dropout_1/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Nmodel/transformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
<model/transformer_encoder/layer_normalization_1/moments/meanMean#model/transformer_encoder/add_1:z:0Wmodel/transformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
Dmodel/transformer_encoder/layer_normalization_1/moments/StopGradientStopGradientEmodel/transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Imodel/transformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference#model/transformer_encoder/add_1:z:0Mmodel/transformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Rmodel/transformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
@model/transformer_encoder/layer_normalization_1/moments/varianceMeanMmodel/transformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0[model/transformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
?model/transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
=model/transformer_encoder/layer_normalization_1/batchnorm/addAddV2Imodel/transformer_encoder/layer_normalization_1/moments/variance:output:0Hmodel/transformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
?model/transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrtAmodel/transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_encoder/layer_normalization_1/batchnorm/mulMulCmodel/transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Tmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_encoder/layer_normalization_1/batchnorm/mul_1Mul#model/transformer_encoder/add_1:z:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_encoder/layer_normalization_1/batchnorm/mul_2MulEmodel/transformer_encoder/layer_normalization_1/moments/mean:output:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_encoder/layer_normalization_1/batchnorm/subSubPmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0Cmodel/transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2Cmodel/transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
model/transformer_decoder/ShapeShapeCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:w
-model/transformer_decoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/model/transformer_decoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/model/transformer_decoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'model/transformer_decoder/strided_sliceStridedSlice(model/transformer_decoder/Shape:output:06model/transformer_decoder/strided_slice/stack:output:08model/transformer_decoder/strided_slice/stack_1:output:08model/transformer_decoder/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
/model/transformer_decoder/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model/transformer_decoder/strided_slice_1StridedSlice(model/transformer_decoder/Shape:output:08model/transformer_decoder/strided_slice_1/stack:output:0:model/transformer_decoder/strided_slice_1/stack_1:output:0:model/transformer_decoder/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%model/transformer_decoder/range/startConst*
_output_shapes
: *
dtype0*
value	B : g
%model/transformer_decoder/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
model/transformer_decoder/rangeRange.model/transformer_decoder/range/start:output:02model/transformer_decoder/strided_slice_1:output:0.model/transformer_decoder/range/delta:output:0*
_output_shapes
:2?
/model/transformer_decoder/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
1model/transformer_decoder/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ?
1model/transformer_decoder/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
)model/transformer_decoder/strided_slice_2StridedSlice(model/transformer_decoder/range:output:08model/transformer_decoder/strided_slice_2/stack:output:0:model/transformer_decoder/strided_slice_2/stack_1:output:0:model/transformer_decoder/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maski
'model/transformer_decoder/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : i
'model/transformer_decoder/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
!model/transformer_decoder/range_1Range0model/transformer_decoder/range_1/start:output:02model/transformer_decoder/strided_slice_1:output:00model/transformer_decoder/range_1/delta:output:0*
_output_shapes
:2?
&model/transformer_decoder/GreaterEqualGreaterEqual2model/transformer_decoder/strided_slice_2:output:0*model/transformer_decoder/range_1:output:0*
T0*
_output_shapes

:22?
model/transformer_decoder/CastCast*model/transformer_decoder/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22y
/model/transformer_decoder/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model/transformer_decoder/strided_slice_3StridedSlice(model/transformer_decoder/Shape:output:08model/transformer_decoder/strided_slice_3/stack:output:0:model/transformer_decoder/strided_slice_3/stack_1:output:0:model/transformer_decoder/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
/model/transformer_decoder/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model/transformer_decoder/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model/transformer_decoder/strided_slice_4StridedSlice(model/transformer_decoder/Shape:output:08model/transformer_decoder/strided_slice_4/stack:output:0:model/transformer_decoder/strided_slice_4/stack_1:output:0:model/transformer_decoder/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)model/transformer_decoder/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
'model/transformer_decoder/Reshape/shapePack2model/transformer_decoder/Reshape/shape/0:output:02model/transformer_decoder/strided_slice_3:output:02model/transformer_decoder/strided_slice_4:output:0*
N*
T0*
_output_shapes
:?
!model/transformer_decoder/ReshapeReshape"model/transformer_decoder/Cast:y:00model/transformer_decoder/Reshape/shape:output:0*
T0*"
_output_shapes
:22s
(model/transformer_decoder/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$model/transformer_decoder/ExpandDims
ExpandDims0model/transformer_decoder/strided_slice:output:01model/transformer_decoder/ExpandDims/dim:output:0*
T0*
_output_shapes
:p
model/transformer_decoder/ConstConst*
_output_shapes
:*
dtype0*
valueB"      g
%model/transformer_decoder/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/transformer_decoder/concatConcatV2-model/transformer_decoder/ExpandDims:output:0(model/transformer_decoder/Const:output:0.model/transformer_decoder/concat/axis:output:0*
N*
T0*
_output_shapes
:?
model/transformer_decoder/TileTile*model/transformer_decoder/Reshape:output:0)model/transformer_decoder/concat:output:0*
T0*+
_output_shapes
:?????????22?
Qmodel/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Bmodel/transformer_decoder/multi_head_attention/query/einsum/EinsumEinsumCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Ymodel/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Gmodel/transformer_decoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpPmodel_transformer_decoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
8model/transformer_decoder/multi_head_attention/query/addAddV2Kmodel/transformer_decoder/multi_head_attention/query/einsum/Einsum:output:0Omodel/transformer_decoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Omodel/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
@model/transformer_decoder/multi_head_attention/key/einsum/EinsumEinsumCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Wmodel/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Emodel/transformer_decoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpNmodel_transformer_decoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
6model/transformer_decoder/multi_head_attention/key/addAddV2Imodel/transformer_decoder/multi_head_attention/key/einsum/Einsum:output:0Mmodel/transformer_decoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Qmodel/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Bmodel/transformer_decoder/multi_head_attention/value/einsum/EinsumEinsumCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Ymodel/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Gmodel/transformer_decoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpPmodel_transformer_decoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
8model/transformer_decoder/multi_head_attention/value/addAddV2Kmodel/transformer_decoder/multi_head_attention/value/einsum/Einsum:output:0Omodel/transformer_decoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
y
4model/transformer_decoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
2model/transformer_decoder/multi_head_attention/MulMul<model/transformer_decoder/multi_head_attention/query/add:z:0=model/transformer_decoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
<model/transformer_decoder/multi_head_attention/einsum/EinsumEinsum:model/transformer_decoder/multi_head_attention/key/add:z:06model/transformer_decoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
=model/transformer_decoder/multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9model/transformer_decoder/multi_head_attention/ExpandDims
ExpandDims'model/transformer_decoder/Tile:output:0Fmodel/transformer_decoder/multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
;model/transformer_decoder/multi_head_attention/softmax/CastCastBmodel/transformer_decoder/multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22?
<model/transformer_decoder/multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
:model/transformer_decoder/multi_head_attention/softmax/subSubEmodel/transformer_decoder/multi_head_attention/softmax/sub/x:output:0?model/transformer_decoder/multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22?
<model/transformer_decoder/multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
:model/transformer_decoder/multi_head_attention/softmax/mulMul>model/transformer_decoder/multi_head_attention/softmax/sub:z:0Emodel/transformer_decoder/multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
:model/transformer_decoder/multi_head_attention/softmax/addAddV2Emodel/transformer_decoder/multi_head_attention/einsum/Einsum:output:0>model/transformer_decoder/multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
>model/transformer_decoder/multi_head_attention/softmax/SoftmaxSoftmax>model/transformer_decoder/multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22?
Amodel/transformer_decoder/multi_head_attention/dropout_3/IdentityIdentityHmodel/transformer_decoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
>model/transformer_decoder/multi_head_attention/einsum_1/EinsumEinsumJmodel/transformer_decoder/multi_head_attention/dropout_3/Identity:output:0<model/transformer_decoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
\model/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpemodel_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Mmodel/transformer_decoder/multi_head_attention/attention_output/einsum/EinsumEinsumGmodel/transformer_decoder/multi_head_attention/einsum_1/Einsum:output:0dmodel/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Rmodel/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOp[model_transformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Cmodel/transformer_decoder/multi_head_attention/attention_output/addAddV2Vmodel/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum:output:0Zmodel/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
,model/transformer_decoder/dropout_1/IdentityIdentityGmodel/transformer_decoder/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
model/transformer_decoder/addAddV25model/transformer_decoder/dropout_1/Identity:output:0Cmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Lmodel/transformer_decoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model/transformer_decoder/layer_normalization/moments/meanMean!model/transformer_decoder/add:z:0Umodel/transformer_decoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
Bmodel/transformer_decoder/layer_normalization/moments/StopGradientStopGradientCmodel/transformer_decoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Gmodel/transformer_decoder/layer_normalization/moments/SquaredDifferenceSquaredDifference!model/transformer_decoder/add:z:0Kmodel/transformer_decoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Pmodel/transformer_decoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model/transformer_decoder/layer_normalization/moments/varianceMeanKmodel/transformer_decoder/layer_normalization/moments/SquaredDifference:z:0Ymodel/transformer_decoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
=model/transformer_decoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
;model/transformer_decoder/layer_normalization/batchnorm/addAddV2Gmodel/transformer_decoder/layer_normalization/moments/variance:output:0Fmodel/transformer_decoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
=model/transformer_decoder/layer_normalization/batchnorm/RsqrtRsqrt?model/transformer_decoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Jmodel/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;model/transformer_decoder/layer_normalization/batchnorm/mulMulAmodel/transformer_decoder/layer_normalization/batchnorm/Rsqrt:y:0Rmodel/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_decoder/layer_normalization/batchnorm/mul_1Mul!model/transformer_decoder/add:z:0?model/transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_decoder/layer_normalization/batchnorm/mul_2MulCmodel/transformer_decoder/layer_normalization/moments/mean:output:0?model/transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Fmodel/transformer_decoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_decoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;model/transformer_decoder/layer_normalization/batchnorm/subSubNmodel/transformer_decoder/layer_normalization/batchnorm/ReadVariableOp:value:0Amodel/transformer_decoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
=model/transformer_decoder/layer_normalization/batchnorm/add_1AddV2Amodel/transformer_decoder/layer_normalization/batchnorm/mul_1:z:0?model/transformer_decoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
Smodel/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOp\model_transformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Dmodel/transformer_decoder/multi_head_attention_1/query/einsum/EinsumEinsumAmodel/transformer_decoder/layer_normalization/batchnorm/add_1:z:0[model/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Imodel/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpRmodel_transformer_decoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
:model/transformer_decoder/multi_head_attention_1/query/addAddV2Mmodel/transformer_decoder/multi_head_attention_1/query/einsum/Einsum:output:0Qmodel/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Qmodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
Bmodel/transformer_decoder/multi_head_attention_1/key/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0Ymodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Gmodel/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpPmodel_transformer_decoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
8model/transformer_decoder/multi_head_attention_1/key/addAddV2Kmodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum:output:0Omodel/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Smodel/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOp\model_transformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
Dmodel/transformer_decoder/multi_head_attention_1/value/einsum/EinsumEinsum$model/tf.__operators__.add/AddV2:z:0[model/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
Imodel/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpRmodel_transformer_decoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
:model/transformer_decoder/multi_head_attention_1/value/addAddV2Mmodel/transformer_decoder/multi_head_attention_1/value/einsum/Einsum:output:0Qmodel/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?{
6model/transformer_decoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
4model/transformer_decoder/multi_head_attention_1/MulMul>model/transformer_decoder/multi_head_attention_1/query/add:z:0?model/transformer_decoder/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
>model/transformer_decoder/multi_head_attention_1/einsum/EinsumEinsum<model/transformer_decoder/multi_head_attention_1/key/add:z:08model/transformer_decoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
Bmodel/transformer_decoder/multi_head_attention_1/softmax_1/SoftmaxSoftmaxGmodel/transformer_decoder/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
Cmodel/transformer_decoder/multi_head_attention_1/dropout_4/IdentityIdentityLmodel/transformer_decoder/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
@model/transformer_decoder/multi_head_attention_1/einsum_1/EinsumEinsumLmodel/transformer_decoder/multi_head_attention_1/dropout_4/Identity:output:0>model/transformer_decoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
^model/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpgmodel_transformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
Omodel/transformer_decoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumImodel/transformer_decoder/multi_head_attention_1/einsum_1/Einsum:output:0fmodel/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Tmodel/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOp]model_transformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Emodel/transformer_decoder/multi_head_attention_1/attention_output/addAddV2Xmodel/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0\model/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
*model/transformer_decoder/dropout/IdentityIdentityImodel/transformer_decoder/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
model/transformer_decoder/add_1AddV23model/transformer_decoder/dropout/Identity:output:0Amodel/transformer_decoder/layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Nmodel/transformer_decoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
<model/transformer_decoder/layer_normalization_1/moments/meanMean#model/transformer_decoder/add_1:z:0Wmodel/transformer_decoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
Dmodel/transformer_decoder/layer_normalization_1/moments/StopGradientStopGradientEmodel/transformer_decoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Imodel/transformer_decoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference#model/transformer_decoder/add_1:z:0Mmodel/transformer_decoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Rmodel/transformer_decoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
@model/transformer_decoder/layer_normalization_1/moments/varianceMeanMmodel/transformer_decoder/layer_normalization_1/moments/SquaredDifference:z:0[model/transformer_decoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
?model/transformer_decoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
=model/transformer_decoder/layer_normalization_1/batchnorm/addAddV2Imodel/transformer_decoder/layer_normalization_1/moments/variance:output:0Hmodel/transformer_decoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
?model/transformer_decoder/layer_normalization_1/batchnorm/RsqrtRsqrtAmodel/transformer_decoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Lmodel/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_decoder/layer_normalization_1/batchnorm/mulMulCmodel/transformer_decoder/layer_normalization_1/batchnorm/Rsqrt:y:0Tmodel/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_1/batchnorm/mul_1Mul#model/transformer_decoder/add_1:z:0Amodel/transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_1/batchnorm/mul_2MulEmodel/transformer_decoder/layer_normalization_1/moments/mean:output:0Amodel/transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Hmodel/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_decoder/layer_normalization_1/batchnorm/subSubPmodel/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0Cmodel/transformer_decoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_1/batchnorm/add_1AddV2Cmodel/transformer_decoder/layer_normalization_1/batchnorm/mul_1:z:0Amodel/transformer_decoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
8model/transformer_decoder/dense/Tensordot/ReadVariableOpReadVariableOpAmodel_transformer_decoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0x
.model/transformer_decoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.model/transformer_decoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
/model/transformer_decoder/dense/Tensordot/ShapeShapeCmodel/transformer_decoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:y
7model/transformer_decoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_decoder/dense/Tensordot/GatherV2GatherV28model/transformer_decoder/dense/Tensordot/Shape:output:07model/transformer_decoder/dense/Tensordot/free:output:0@model/transformer_decoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9model/transformer_decoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_decoder/dense/Tensordot/GatherV2_1GatherV28model/transformer_decoder/dense/Tensordot/Shape:output:07model/transformer_decoder/dense/Tensordot/axes:output:0Bmodel/transformer_decoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/model/transformer_decoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
.model/transformer_decoder/dense/Tensordot/ProdProd;model/transformer_decoder/dense/Tensordot/GatherV2:output:08model/transformer_decoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/transformer_decoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
0model/transformer_decoder/dense/Tensordot/Prod_1Prod=model/transformer_decoder/dense/Tensordot/GatherV2_1:output:0:model/transformer_decoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/transformer_decoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0model/transformer_decoder/dense/Tensordot/concatConcatV27model/transformer_decoder/dense/Tensordot/free:output:07model/transformer_decoder/dense/Tensordot/axes:output:0>model/transformer_decoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
/model/transformer_decoder/dense/Tensordot/stackPack7model/transformer_decoder/dense/Tensordot/Prod:output:09model/transformer_decoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
3model/transformer_decoder/dense/Tensordot/transpose	TransposeCmodel/transformer_decoder/layer_normalization_1/batchnorm/add_1:z:09model/transformer_decoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
1model/transformer_decoder/dense/Tensordot/ReshapeReshape7model/transformer_decoder/dense/Tensordot/transpose:y:08model/transformer_decoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
0model/transformer_decoder/dense/Tensordot/MatMulMatMul:model/transformer_decoder/dense/Tensordot/Reshape:output:0@model/transformer_decoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
1model/transformer_decoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?y
7model/transformer_decoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_decoder/dense/Tensordot/concat_1ConcatV2;model/transformer_decoder/dense/Tensordot/GatherV2:output:0:model/transformer_decoder/dense/Tensordot/Const_2:output:0@model/transformer_decoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
)model/transformer_decoder/dense/TensordotReshape:model/transformer_decoder/dense/Tensordot/MatMul:product:0;model/transformer_decoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
6model/transformer_decoder/dense/BiasAdd/ReadVariableOpReadVariableOp?model_transformer_decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'model/transformer_decoder/dense/BiasAddBiasAdd2model/transformer_decoder/dense/Tensordot:output:0>model/transformer_decoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
$model/transformer_decoder/dense/ReluRelu0model/transformer_decoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
:model/transformer_decoder/dense_1/Tensordot/ReadVariableOpReadVariableOpCmodel_transformer_decoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0z
0model/transformer_decoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
0model/transformer_decoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
1model/transformer_decoder/dense_1/Tensordot/ShapeShape2model/transformer_decoder/dense/Relu:activations:0*
T0*
_output_shapes
:{
9model/transformer_decoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_decoder/dense_1/Tensordot/GatherV2GatherV2:model/transformer_decoder/dense_1/Tensordot/Shape:output:09model/transformer_decoder/dense_1/Tensordot/free:output:0Bmodel/transformer_decoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;model/transformer_decoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
6model/transformer_decoder/dense_1/Tensordot/GatherV2_1GatherV2:model/transformer_decoder/dense_1/Tensordot/Shape:output:09model/transformer_decoder/dense_1/Tensordot/axes:output:0Dmodel/transformer_decoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1model/transformer_decoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
0model/transformer_decoder/dense_1/Tensordot/ProdProd=model/transformer_decoder/dense_1/Tensordot/GatherV2:output:0:model/transformer_decoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3model/transformer_decoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
2model/transformer_decoder/dense_1/Tensordot/Prod_1Prod?model/transformer_decoder/dense_1/Tensordot/GatherV2_1:output:0<model/transformer_decoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7model/transformer_decoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2model/transformer_decoder/dense_1/Tensordot/concatConcatV29model/transformer_decoder/dense_1/Tensordot/free:output:09model/transformer_decoder/dense_1/Tensordot/axes:output:0@model/transformer_decoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
1model/transformer_decoder/dense_1/Tensordot/stackPack9model/transformer_decoder/dense_1/Tensordot/Prod:output:0;model/transformer_decoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
5model/transformer_decoder/dense_1/Tensordot/transpose	Transpose2model/transformer_decoder/dense/Relu:activations:0;model/transformer_decoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
3model/transformer_decoder/dense_1/Tensordot/ReshapeReshape9model/transformer_decoder/dense_1/Tensordot/transpose:y:0:model/transformer_decoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
2model/transformer_decoder/dense_1/Tensordot/MatMulMatMul<model/transformer_decoder/dense_1/Tensordot/Reshape:output:0Bmodel/transformer_decoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????~
3model/transformer_decoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?{
9model/transformer_decoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4model/transformer_decoder/dense_1/Tensordot/concat_1ConcatV2=model/transformer_decoder/dense_1/Tensordot/GatherV2:output:0<model/transformer_decoder/dense_1/Tensordot/Const_2:output:0Bmodel/transformer_decoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
+model/transformer_decoder/dense_1/TensordotReshape<model/transformer_decoder/dense_1/Tensordot/MatMul:product:0=model/transformer_decoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
8model/transformer_decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmodel_transformer_decoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)model/transformer_decoder/dense_1/BiasAddBiasAdd4model/transformer_decoder/dense_1/Tensordot:output:0@model/transformer_decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
,model/transformer_decoder/dropout_2/IdentityIdentity2model/transformer_decoder/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
model/transformer_decoder/add_2AddV2Cmodel/transformer_decoder/layer_normalization_1/batchnorm/add_1:z:05model/transformer_decoder/dropout_2/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Nmodel/transformer_decoder/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
<model/transformer_decoder/layer_normalization_2/moments/meanMean#model/transformer_decoder/add_2:z:0Wmodel/transformer_decoder/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
Dmodel/transformer_decoder/layer_normalization_2/moments/StopGradientStopGradientEmodel/transformer_decoder/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Imodel/transformer_decoder/layer_normalization_2/moments/SquaredDifferenceSquaredDifference#model/transformer_decoder/add_2:z:0Mmodel/transformer_decoder/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Rmodel/transformer_decoder/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
@model/transformer_decoder/layer_normalization_2/moments/varianceMeanMmodel/transformer_decoder/layer_normalization_2/moments/SquaredDifference:z:0[model/transformer_decoder/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
?model/transformer_decoder/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
=model/transformer_decoder/layer_normalization_2/batchnorm/addAddV2Imodel/transformer_decoder/layer_normalization_2/moments/variance:output:0Hmodel/transformer_decoder/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
?model/transformer_decoder/layer_normalization_2/batchnorm/RsqrtRsqrtAmodel/transformer_decoder/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Lmodel/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_decoder/layer_normalization_2/batchnorm/mulMulCmodel/transformer_decoder/layer_normalization_2/batchnorm/Rsqrt:y:0Tmodel/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_2/batchnorm/mul_1Mul#model/transformer_decoder/add_2:z:0Amodel/transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_2/batchnorm/mul_2MulEmodel/transformer_decoder/layer_normalization_2/moments/mean:output:0Amodel/transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Hmodel/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=model/transformer_decoder/layer_normalization_2/batchnorm/subSubPmodel/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp:value:0Cmodel/transformer_decoder/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
?model/transformer_decoder/layer_normalization_2/batchnorm/add_1AddV2Cmodel/transformer_decoder/layer_normalization_2/batchnorm/mul_1:z:0Amodel/transformer_decoder/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?u
$model/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/time_distributed/ReshapeReshapeCmodel/transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0-model/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
2model/time_distributed/dense/MatMul/ReadVariableOpReadVariableOp;model_time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
#model/time_distributed/dense/MatMulMatMul'model/time_distributed/Reshape:output:0:model/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3model/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp<model_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$model/time_distributed/dense/BiasAddBiasAdd-model/time_distributed/dense/MatMul:product:0;model/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!model/time_distributed/dense/ReluRelu-model/time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????{
&model/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2      ?
 model/time_distributed/Reshape_1Reshape/model/time_distributed/dense/Relu:activations:0/model/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?w
&model/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
 model/time_distributed/Reshape_2ReshapeCmodel/transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0/model/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:???????????
model/dropout/IdentityIdentity)model/time_distributed/Reshape_1:output:0*
T0*,
_output_shapes
:?????????2?w
&model/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
 model/time_distributed_1/ReshapeReshapemodel/dropout/Identity:output:0/model/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
6model/time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp?model_time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0?
'model/time_distributed_1/dense_1/MatMulMatMul)model/time_distributed_1/Reshape:output:0>model/time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
7model/time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp@model_time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0?
(model/time_distributed_1/dense_1/BiasAddBiasAdd1model/time_distributed_1/dense_1/MatMul:product:0?model/time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
(model/time_distributed_1/dense_1/SoftmaxSoftmax1model/time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????'}
(model/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2   ?  ?
"model/time_distributed_1/Reshape_1Reshape2model/time_distributed_1/dense_1/Softmax:softmax:01model/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?'y
(model/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"model/time_distributed_1/Reshape_2Reshapemodel/dropout/Identity:output:01model/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????
IdentityIdentity+model/time_distributed_1/Reshape_1:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp!^model/embedding/embedding_lookup(^model/position_embedding/ReadVariableOp4^model/time_distributed/dense/BiasAdd/ReadVariableOp3^model/time_distributed/dense/MatMul/ReadVariableOp8^model/time_distributed_1/dense_1/BiasAdd/ReadVariableOp7^model/time_distributed_1/dense_1/MatMul/ReadVariableOp7^model/transformer_decoder/dense/BiasAdd/ReadVariableOp9^model/transformer_decoder/dense/Tensordot/ReadVariableOp9^model/transformer_decoder/dense_1/BiasAdd/ReadVariableOp;^model/transformer_decoder/dense_1/Tensordot/ReadVariableOpG^model/transformer_decoder/layer_normalization/batchnorm/ReadVariableOpK^model/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpI^model/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpM^model/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpI^model/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpM^model/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpS^model/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp]^model/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpF^model/transformer_decoder/multi_head_attention/key/add/ReadVariableOpP^model/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpH^model/transformer_decoder/multi_head_attention/query/add/ReadVariableOpR^model/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpH^model/transformer_decoder/multi_head_attention/value/add/ReadVariableOpR^model/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpU^model/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp_^model/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpH^model/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOpR^model/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpJ^model/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOpT^model/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpJ^model/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOpT^model/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp7^model/transformer_encoder/dense/BiasAdd/ReadVariableOp9^model/transformer_encoder/dense/Tensordot/ReadVariableOp9^model/transformer_encoder/dense_1/BiasAdd/ReadVariableOp;^model/transformer_encoder/dense_1/Tensordot/ReadVariableOpG^model/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpK^model/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpI^model/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpM^model/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpS^model/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp]^model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpF^model/transformer_encoder/multi_head_attention/key/add/ReadVariableOpP^model/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/multi_head_attention/query/add/ReadVariableOpR^model/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/multi_head_attention/value/add/ReadVariableOpR^model/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2R
'model/position_embedding/ReadVariableOp'model/position_embedding/ReadVariableOp2j
3model/time_distributed/dense/BiasAdd/ReadVariableOp3model/time_distributed/dense/BiasAdd/ReadVariableOp2h
2model/time_distributed/dense/MatMul/ReadVariableOp2model/time_distributed/dense/MatMul/ReadVariableOp2r
7model/time_distributed_1/dense_1/BiasAdd/ReadVariableOp7model/time_distributed_1/dense_1/BiasAdd/ReadVariableOp2p
6model/time_distributed_1/dense_1/MatMul/ReadVariableOp6model/time_distributed_1/dense_1/MatMul/ReadVariableOp2p
6model/transformer_decoder/dense/BiasAdd/ReadVariableOp6model/transformer_decoder/dense/BiasAdd/ReadVariableOp2t
8model/transformer_decoder/dense/Tensordot/ReadVariableOp8model/transformer_decoder/dense/Tensordot/ReadVariableOp2t
8model/transformer_decoder/dense_1/BiasAdd/ReadVariableOp8model/transformer_decoder/dense_1/BiasAdd/ReadVariableOp2x
:model/transformer_decoder/dense_1/Tensordot/ReadVariableOp:model/transformer_decoder/dense_1/Tensordot/ReadVariableOp2?
Fmodel/transformer_decoder/layer_normalization/batchnorm/ReadVariableOpFmodel/transformer_decoder/layer_normalization/batchnorm/ReadVariableOp2?
Jmodel/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpJmodel/transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Hmodel/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpHmodel/transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Lmodel/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpLmodel/transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Hmodel/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpHmodel/transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp2?
Lmodel/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpLmodel/transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
Rmodel/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpRmodel/transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp2?
\model/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp\model/transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Emodel/transformer_decoder/multi_head_attention/key/add/ReadVariableOpEmodel/transformer_decoder/multi_head_attention/key/add/ReadVariableOp2?
Omodel/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpOmodel/transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_decoder/multi_head_attention/query/add/ReadVariableOpGmodel/transformer_decoder/multi_head_attention/query/add/ReadVariableOp2?
Qmodel/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpQmodel/transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_decoder/multi_head_attention/value/add/ReadVariableOpGmodel/transformer_decoder/multi_head_attention/value/add/ReadVariableOp2?
Qmodel/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpQmodel/transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Tmodel/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpTmodel/transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
^model/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp^model/transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOpGmodel/transformer_decoder/multi_head_attention_1/key/add/ReadVariableOp2?
Qmodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpQmodel/transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
Imodel/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOpImodel/transformer_decoder/multi_head_attention_1/query/add/ReadVariableOp2?
Smodel/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpSmodel/transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
Imodel/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOpImodel/transformer_decoder/multi_head_attention_1/value/add/ReadVariableOp2?
Smodel/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpSmodel/transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2p
6model/transformer_encoder/dense/BiasAdd/ReadVariableOp6model/transformer_encoder/dense/BiasAdd/ReadVariableOp2t
8model/transformer_encoder/dense/Tensordot/ReadVariableOp8model/transformer_encoder/dense/Tensordot/ReadVariableOp2t
8model/transformer_encoder/dense_1/BiasAdd/ReadVariableOp8model/transformer_encoder/dense_1/BiasAdd/ReadVariableOp2x
:model/transformer_encoder/dense_1/Tensordot/ReadVariableOp:model/transformer_encoder/dense_1/Tensordot/ReadVariableOp2?
Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpFmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2?
Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpJmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpHmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpLmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpRmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2?
\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOpEmodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp2?
Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpOmodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOpGmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp2?
Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpQmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOpGmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp2?
Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpQmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
?
C
'__inference_dropout_layer_call_fn_89764

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86140e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????2?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?F
?
@__inference_model_layer_call_and_return_conditional_losses_87532
input_1#
embedding_87421:
?'?+
position_embedding_87426:	2?0
transformer_encoder_87430:?
+
transformer_encoder_87432:
0
transformer_encoder_87434:?
+
transformer_encoder_87436:
0
transformer_encoder_87438:?
+
transformer_encoder_87440:
0
transformer_encoder_87442:
?(
transformer_encoder_87444:	?(
transformer_encoder_87446:	?(
transformer_encoder_87448:	?-
transformer_encoder_87450:
??(
transformer_encoder_87452:	?-
transformer_encoder_87454:
??(
transformer_encoder_87456:	?(
transformer_encoder_87458:	?(
transformer_encoder_87460:	?0
transformer_decoder_87463:?
+
transformer_decoder_87465:
0
transformer_decoder_87467:?
+
transformer_decoder_87469:
0
transformer_decoder_87471:?
+
transformer_decoder_87473:
0
transformer_decoder_87475:
?(
transformer_decoder_87477:	?(
transformer_decoder_87479:	?(
transformer_decoder_87481:	?0
transformer_decoder_87483:?
+
transformer_decoder_87485:
0
transformer_decoder_87487:?
+
transformer_decoder_87489:
1
transformer_decoder_87491:?
?,
transformer_decoder_87493:	
?1
transformer_decoder_87495:
??(
transformer_decoder_87497:	?(
transformer_decoder_87499:	?(
transformer_decoder_87501:	?-
transformer_decoder_87503:
??(
transformer_decoder_87505:	?-
transformer_decoder_87507:
??(
transformer_decoder_87509:	?(
transformer_decoder_87511:	?(
transformer_decoder_87513:	?*
time_distributed_87516:
??%
time_distributed_87518:	?,
time_distributed_1_87524:
??''
time_distributed_1_87526:	?'
identity??dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?+transformer_decoder/StatefulPartitionedCall?+transformer_encoder/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_87421*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_85657Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    x
embedding/NotEqualNotEqualinput_1embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0position_embedding_87426*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684?
tf.__operators__.add/AddV2AddV2*embedding/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0transformer_encoder_87430transformer_encoder_87432transformer_encoder_87434transformer_encoder_87436transformer_encoder_87438transformer_encoder_87440transformer_encoder_87442transformer_encoder_87444transformer_encoder_87446transformer_encoder_87448transformer_encoder_87450transformer_encoder_87452transformer_encoder_87454transformer_encoder_87456transformer_encoder_87458transformer_encoder_87460*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_86836?	
+transformer_decoder/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0tf.__operators__.add/AddV2:z:0transformer_decoder_87463transformer_decoder_87465transformer_decoder_87467transformer_decoder_87469transformer_decoder_87471transformer_decoder_87473transformer_decoder_87475transformer_decoder_87477transformer_decoder_87479transformer_decoder_87481transformer_decoder_87483transformer_decoder_87485transformer_decoder_87487transformer_decoder_87489transformer_decoder_87491transformer_decoder_87493transformer_decoder_87495transformer_decoder_87497transformer_decoder_87499transformer_decoder_87501transformer_decoder_87503transformer_decoder_87505transformer_decoder_87507transformer_decoder_87509transformer_decoder_87511transformer_decoder_87513*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86593?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall4transformer_decoder/StatefulPartitionedCall:output:0time_distributed_87516time_distributed_87518*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85551o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape4transformer_decoder/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dropout/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86269?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0time_distributed_1_87524time_distributed_1_87526*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85633q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dropout/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall,^transformer_decoder/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2Z
+transformer_decoder/StatefulPartitionedCall+transformer_decoder/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
?
`
'__inference_dropout_layer_call_fn_89769

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86269t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
??
?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86593
decoder_sequence
encoder_sequenceW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:?
J
8multi_head_attention_1_query_add_readvariableop_resource:
W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_1_key_add_readvariableop_resource:
Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?K
8multi_head_attention_1_value_add_readvariableop_resource:	
?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_2_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpE
ShapeShapedecoder_sequence*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :p
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes
:2f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :v
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*
_output_shapes
:2q
GreaterEqualGreaterEqualstrided_slice_2:output:0range_1:output:0*
T0*
_output_shapes

:22V
CastCastGreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_4StridedSliceShape:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0strided_slice_3:output:0strided_slice_4:output:0*
N*
T0*
_output_shapes
:a
ReshapeReshapeCast:y:0Reshape/shape:output:0*
T0*"
_output_shapes
:22Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:e
TileTileReshape:output:0concat:output:0*
T0*+
_output_shapes
:?????????22?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsumdecoder_sequence=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22q
,multi_head_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
*multi_head_attention/dropout_3/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:05multi_head_attention/dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_3/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seedz
5multi_head_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
3multi_head_attention/dropout_3/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_3/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
+multi_head_attention/dropout_3/dropout/CastCast7multi_head_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_3/dropout/Mul_1Mul.multi_head_attention/dropout_3/dropout/Mul:z:0/multi_head_attention/dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_3/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMul-multi_head_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?t
dropout_1/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?r
addAddV2dropout_1/dropout/Mul_1:z:0decoder_sequence*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsumencoder_sequence?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsumencoder_sequenceAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22s
.multi_head_attention_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,multi_head_attention_1/dropout_4/dropout/MulMul2multi_head_attention_1/softmax_1/Softmax:softmax:07multi_head_attention_1/dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
.multi_head_attention_1/dropout_4/dropout/ShapeShape2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:?
Emulti_head_attention_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniform7multi_head_attention_1/dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seed*
seed2|
7multi_head_attention_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
5multi_head_attention_1/dropout_4/dropout/GreaterEqualGreaterEqualNmulti_head_attention_1/dropout_4/dropout/random_uniform/RandomUniform:output:0@multi_head_attention_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
-multi_head_attention_1/dropout_4/dropout/CastCast9multi_head_attention_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
.multi_head_attention_1/dropout_4/dropout/Mul_1Mul0multi_head_attention_1/dropout_4/dropout/Mul:z:01multi_head_attention_1/dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_4/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?t
dropout/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2dropout/dropout/Mul_1:z:0'layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
dense/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_2/dropout/MulMuldense_1/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?_
dropout_2/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_2AddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMean	add_2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_2/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
?F
?
@__inference_model_layer_call_and_return_conditional_losses_87104

inputs#
embedding_86993:
?'?+
position_embedding_86998:	2?0
transformer_encoder_87002:?
+
transformer_encoder_87004:
0
transformer_encoder_87006:?
+
transformer_encoder_87008:
0
transformer_encoder_87010:?
+
transformer_encoder_87012:
0
transformer_encoder_87014:
?(
transformer_encoder_87016:	?(
transformer_encoder_87018:	?(
transformer_encoder_87020:	?-
transformer_encoder_87022:
??(
transformer_encoder_87024:	?-
transformer_encoder_87026:
??(
transformer_encoder_87028:	?(
transformer_encoder_87030:	?(
transformer_encoder_87032:	?0
transformer_decoder_87035:?
+
transformer_decoder_87037:
0
transformer_decoder_87039:?
+
transformer_decoder_87041:
0
transformer_decoder_87043:?
+
transformer_decoder_87045:
0
transformer_decoder_87047:
?(
transformer_decoder_87049:	?(
transformer_decoder_87051:	?(
transformer_decoder_87053:	?0
transformer_decoder_87055:?
+
transformer_decoder_87057:
0
transformer_decoder_87059:?
+
transformer_decoder_87061:
1
transformer_decoder_87063:?
?,
transformer_decoder_87065:	
?1
transformer_decoder_87067:
??(
transformer_decoder_87069:	?(
transformer_decoder_87071:	?(
transformer_decoder_87073:	?-
transformer_decoder_87075:
??(
transformer_decoder_87077:	?-
transformer_decoder_87079:
??(
transformer_decoder_87081:	?(
transformer_decoder_87083:	?(
transformer_decoder_87085:	?*
time_distributed_87088:
??%
time_distributed_87090:	?,
time_distributed_1_87096:
??''
time_distributed_1_87098:	?'
identity??dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?+transformer_decoder/StatefulPartitionedCall?+transformer_encoder/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_86993*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_85657Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    w
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0position_embedding_86998*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684?
tf.__operators__.add/AddV2AddV2*embedding/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0transformer_encoder_87002transformer_encoder_87004transformer_encoder_87006transformer_encoder_87008transformer_encoder_87010transformer_encoder_87012transformer_encoder_87014transformer_encoder_87016transformer_encoder_87018transformer_encoder_87020transformer_encoder_87022transformer_encoder_87024transformer_encoder_87026transformer_encoder_87028transformer_encoder_87030transformer_encoder_87032*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_86836?	
+transformer_decoder/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0tf.__operators__.add/AddV2:z:0transformer_decoder_87035transformer_decoder_87037transformer_decoder_87039transformer_decoder_87041transformer_decoder_87043transformer_decoder_87045transformer_decoder_87047transformer_decoder_87049transformer_decoder_87051transformer_decoder_87053transformer_decoder_87055transformer_decoder_87057transformer_decoder_87059transformer_decoder_87061transformer_decoder_87063transformer_decoder_87065transformer_decoder_87067transformer_decoder_87069transformer_decoder_87071transformer_decoder_87073transformer_decoder_87075transformer_decoder_87077transformer_decoder_87079transformer_decoder_87081transformer_decoder_87083transformer_decoder_87085*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86593?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall4transformer_decoder/StatefulPartitionedCall:output:0time_distributed_87088time_distributed_87090*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85551o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape4transformer_decoder/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dropout/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86269?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0time_distributed_1_87096time_distributed_1_87098*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85633q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape(dropout/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall,^transformer_decoder/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2Z
+transformer_decoder/StatefulPartitionedCall+transformer_decoder/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_85501

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?<
@__inference_model_layer_call_and_return_conditional_losses_88242

inputs4
 embedding_embedding_lookup_87847:
?'?=
*position_embedding_readvariableop_resource:	2?k
Ttransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
\
Jtransformer_encoder_multi_head_attention_query_add_readvariableop_resource:
i
Rtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
Z
Htransformer_encoder_multi_head_attention_key_add_readvariableop_resource:
k
Ttransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
\
Jtransformer_encoder_multi_head_attention_value_add_readvariableop_resource:
v
_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?d
Utransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:	?\
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?X
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	?O
;transformer_encoder_dense_tensordot_readvariableop_resource:
??H
9transformer_encoder_dense_biasadd_readvariableop_resource:	?Q
=transformer_encoder_dense_1_tensordot_readvariableop_resource:
??J
;transformer_encoder_dense_1_biasadd_readvariableop_resource:	?^
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	?k
Ttransformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_query_add_readvariableop_resource:
i
Rtransformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
Z
Htransformer_decoder_multi_head_attention_key_add_readvariableop_resource:
k
Ttransformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_value_add_readvariableop_resource:
v
_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?d
Utransformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource:	?\
Mtransformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?X
Itransformer_decoder_layer_normalization_batchnorm_readvariableop_resource:	?m
Vtransformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:?
^
Ltransformer_decoder_multi_head_attention_1_query_add_readvariableop_resource:
k
Ttransformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_1_key_add_readvariableop_resource:
n
Vtransformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?_
Ltransformer_decoder_multi_head_attention_1_value_add_readvariableop_resource:	
?y
atransformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??f
Wtransformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?^
Otransformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource:	?O
;transformer_decoder_dense_tensordot_readvariableop_resource:
??H
9transformer_decoder_dense_biasadd_readvariableop_resource:	?Q
=transformer_decoder_dense_1_tensordot_readvariableop_resource:
??J
;transformer_decoder_dense_1_biasadd_readvariableop_resource:	?^
Otransformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource:	?I
5time_distributed_dense_matmul_readvariableop_resource:
??E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??'I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?'
identity??embedding/embedding_lookup?!position_embedding/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOp?0transformer_decoder/dense/BiasAdd/ReadVariableOp?2transformer_decoder/dense/Tensordot/ReadVariableOp?2transformer_decoder/dense_1/BiasAdd/ReadVariableOp?4transformer_decoder/dense_1/Tensordot/ReadVariableOp?@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp?Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp?Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp?Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp?Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp?Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp?Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp??transformer_decoder/multi_head_attention/key/add/ReadVariableOp?Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention/query/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention/value/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp?Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp?Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp?Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?0transformer_encoder/dense/BiasAdd/ReadVariableOp?2transformer_encoder/dense/Tensordot/ReadVariableOp?2transformer_encoder/dense_1/BiasAdd/ReadVariableOp?4transformer_encoder/dense_1/Tensordot/ReadVariableOp?@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp?Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp?Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp?Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp?Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp??transformer_encoder/multi_head_attention/key/add/ReadVariableOp?Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Atransformer_encoder/multi_head_attention/query/add/ReadVariableOp?Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Atransformer_encoder/multi_head_attention/value/add/ReadVariableOp?Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_87847embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/87847*,
_output_shapes
:?????????2?*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/87847*,
_output_shapes
:?????????2??
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????2?Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    w
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2v
position_embedding/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:y
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????r
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes
:	2?*
dtype0Z
position_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : \
position_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :l
*position_embedding/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ?
(position_embedding/strided_slice_1/stackPack!position_embedding/Const:output:03position_embedding/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:n
,position_embedding/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ?
*position_embedding/strided_slice_1/stack_1Pack)position_embedding/strided_slice:output:05position_embedding/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:n
,position_embedding/strided_slice_1/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :?
*position_embedding/strided_slice_1/stack_2Pack#position_embedding/Const_1:output:05position_embedding/strided_slice_1/stack_2/1:output:0*
N*
T0*
_output_shapes
:?
"position_embedding/strided_slice_1StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2?*

begin_mask*
end_mask?
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_1:output:0!position_embedding/Shape:output:0*
T0*,
_output_shapes
:?????????2??
tf.__operators__.add/AddV2AddV2.embedding/embedding_lookup/Identity_1:output:0'position_embedding/BroadcastTo:output:0*
T0*,
_output_shapes
:?????????2??
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_encoder/multi_head_attention/query/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_encoder/multi_head_attention/query/addAddV2Etransformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
:transformer_encoder/multi_head_attention/key/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Qtransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
?transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
0transformer_encoder/multi_head_attention/key/addAddV2Ctransformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_encoder/multi_head_attention/value/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_encoder/multi_head_attention/value/addAddV2Etransformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
s
.transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
,transformer_encoder/multi_head_attention/MulMul6transformer_encoder/multi_head_attention/query/add:z:07transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
6transformer_encoder/multi_head_attention/einsum/EinsumEinsum4transformer_encoder/multi_head_attention/key/add:z:00transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
8transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmax?transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
;transformer_encoder/multi_head_attention/dropout_2/IdentityIdentityBtransformer_encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumDtransformer_encoder/multi_head_attention/dropout_2/Identity:output:06transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Gtransformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=transformer_encoder/multi_head_attention/attention_output/addAddV2Ptransformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
$transformer_encoder/dropout/IdentityIdentityAtransformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/addAddV2tf.__operators__.add/AddV2:z:0-transformer_encoder/dropout/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_encoder/layer_normalization/moments/meanMeantransformer_encoder/add:z:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add:z:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/mul_1Multransformer_encoder/add:z:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
2transformer_encoder/dense/Tensordot/ReadVariableOpReadVariableOp;transformer_encoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0r
(transformer_encoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(transformer_encoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
)transformer_encoder/dense/Tensordot/ShapeShape;transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:s
1transformer_encoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense/Tensordot/GatherV2GatherV22transformer_encoder/dense/Tensordot/Shape:output:01transformer_encoder/dense/Tensordot/free:output:0:transformer_encoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3transformer_encoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense/Tensordot/GatherV2_1GatherV22transformer_encoder/dense/Tensordot/Shape:output:01transformer_encoder/dense/Tensordot/axes:output:0<transformer_encoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)transformer_encoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
(transformer_encoder/dense/Tensordot/ProdProd5transformer_encoder/dense/Tensordot/GatherV2:output:02transformer_encoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+transformer_encoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_encoder/dense/Tensordot/Prod_1Prod7transformer_encoder/dense/Tensordot/GatherV2_1:output:04transformer_encoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/transformer_encoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*transformer_encoder/dense/Tensordot/concatConcatV21transformer_encoder/dense/Tensordot/free:output:01transformer_encoder/dense/Tensordot/axes:output:08transformer_encoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
)transformer_encoder/dense/Tensordot/stackPack1transformer_encoder/dense/Tensordot/Prod:output:03transformer_encoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
-transformer_encoder/dense/Tensordot/transpose	Transpose;transformer_encoder/layer_normalization/batchnorm/add_1:z:03transformer_encoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/dense/Tensordot/ReshapeReshape1transformer_encoder/dense/Tensordot/transpose:y:02transformer_encoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
*transformer_encoder/dense/Tensordot/MatMulMatMul4transformer_encoder/dense/Tensordot/Reshape:output:0:transformer_encoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
+transformer_encoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?s
1transformer_encoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense/Tensordot/concat_1ConcatV25transformer_encoder/dense/Tensordot/GatherV2:output:04transformer_encoder/dense/Tensordot/Const_2:output:0:transformer_encoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
#transformer_encoder/dense/TensordotReshape4transformer_encoder/dense/Tensordot/MatMul:product:05transformer_encoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
0transformer_encoder/dense/BiasAdd/ReadVariableOpReadVariableOp9transformer_encoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!transformer_encoder/dense/BiasAddBiasAdd,transformer_encoder/dense/Tensordot:output:08transformer_encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/dense/ReluRelu*transformer_encoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
4transformer_encoder/dense_1/Tensordot/ReadVariableOpReadVariableOp=transformer_encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0t
*transformer_encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer_encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
+transformer_encoder/dense_1/Tensordot/ShapeShape,transformer_encoder/dense/Relu:activations:0*
T0*
_output_shapes
:u
3transformer_encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense_1/Tensordot/GatherV2GatherV24transformer_encoder/dense_1/Tensordot/Shape:output:03transformer_encoder/dense_1/Tensordot/free:output:0<transformer_encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer_encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0transformer_encoder/dense_1/Tensordot/GatherV2_1GatherV24transformer_encoder/dense_1/Tensordot/Shape:output:03transformer_encoder/dense_1/Tensordot/axes:output:0>transformer_encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer_encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_encoder/dense_1/Tensordot/ProdProd7transformer_encoder/dense_1/Tensordot/GatherV2:output:04transformer_encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer_encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
,transformer_encoder/dense_1/Tensordot/Prod_1Prod9transformer_encoder/dense_1/Tensordot/GatherV2_1:output:06transformer_encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer_encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense_1/Tensordot/concatConcatV23transformer_encoder/dense_1/Tensordot/free:output:03transformer_encoder/dense_1/Tensordot/axes:output:0:transformer_encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
+transformer_encoder/dense_1/Tensordot/stackPack3transformer_encoder/dense_1/Tensordot/Prod:output:05transformer_encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
/transformer_encoder/dense_1/Tensordot/transpose	Transpose,transformer_encoder/dense/Relu:activations:05transformer_encoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
-transformer_encoder/dense_1/Tensordot/ReshapeReshape3transformer_encoder/dense_1/Tensordot/transpose:y:04transformer_encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
,transformer_encoder/dense_1/Tensordot/MatMulMatMul6transformer_encoder/dense_1/Tensordot/Reshape:output:0<transformer_encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
-transformer_encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?u
3transformer_encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense_1/Tensordot/concat_1ConcatV27transformer_encoder/dense_1/Tensordot/GatherV2:output:06transformer_encoder/dense_1/Tensordot/Const_2:output:0<transformer_encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
%transformer_encoder/dense_1/TensordotReshape6transformer_encoder/dense_1/Tensordot/MatMul:product:07transformer_encoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
2transformer_encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;transformer_encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#transformer_encoder/dense_1/BiasAddBiasAdd.transformer_encoder/dense_1/Tensordot:output:0:transformer_encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
&transformer_encoder/dropout_1/IdentityIdentity,transformer_encoder/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0/transformer_encoder/dropout_1/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_encoder/layer_normalization_1/moments/meanMeantransformer_encoder/add_1:z:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add_1:z:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Multransformer_encoder/add_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/ShapeShape=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
'transformer_decoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)transformer_decoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)transformer_decoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!transformer_decoder/strided_sliceStridedSlice"transformer_decoder/Shape:output:00transformer_decoder/strided_slice/stack:output:02transformer_decoder/strided_slice/stack_1:output:02transformer_decoder/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_decoder/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_1StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_1/stack:output:04transformer_decoder/strided_slice_1/stack_1:output:04transformer_decoder/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
transformer_decoder/range/startConst*
_output_shapes
: *
dtype0*
value	B : a
transformer_decoder/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
transformer_decoder/rangeRange(transformer_decoder/range/start:output:0,transformer_decoder/strided_slice_1:output:0(transformer_decoder/range/delta:output:0*
_output_shapes
:2z
)transformer_decoder/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_decoder/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_decoder/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
#transformer_decoder/strided_slice_2StridedSlice"transformer_decoder/range:output:02transformer_decoder/strided_slice_2/stack:output:04transformer_decoder/strided_slice_2/stack_1:output:04transformer_decoder/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskc
!transformer_decoder/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : c
!transformer_decoder/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
transformer_decoder/range_1Range*transformer_decoder/range_1/start:output:0,transformer_decoder/strided_slice_1:output:0*transformer_decoder/range_1/delta:output:0*
_output_shapes
:2?
 transformer_decoder/GreaterEqualGreaterEqual,transformer_decoder/strided_slice_2:output:0$transformer_decoder/range_1:output:0*
T0*
_output_shapes

:22~
transformer_decoder/CastCast$transformer_decoder/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22s
)transformer_decoder/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_3StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_3/stack:output:04transformer_decoder/strided_slice_3/stack_1:output:04transformer_decoder/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_decoder/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_4StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_4/stack:output:04transformer_decoder/strided_slice_4/stack_1:output:04transformer_decoder/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#transformer_decoder/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
!transformer_decoder/Reshape/shapePack,transformer_decoder/Reshape/shape/0:output:0,transformer_decoder/strided_slice_3:output:0,transformer_decoder/strided_slice_4:output:0*
N*
T0*
_output_shapes
:?
transformer_decoder/ReshapeReshapetransformer_decoder/Cast:y:0*transformer_decoder/Reshape/shape:output:0*
T0*"
_output_shapes
:22m
"transformer_decoder/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
transformer_decoder/ExpandDims
ExpandDims*transformer_decoder/strided_slice:output:0+transformer_decoder/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
transformer_decoder/ConstConst*
_output_shapes
:*
dtype0*
valueB"      a
transformer_decoder/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
transformer_decoder/concatConcatV2'transformer_decoder/ExpandDims:output:0"transformer_decoder/Const:output:0(transformer_decoder/concat/axis:output:0*
N*
T0*
_output_shapes
:?
transformer_decoder/TileTile$transformer_decoder/Reshape:output:0#transformer_decoder/concat:output:0*
T0*+
_output_shapes
:?????????22?
Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention/query/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Stransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention/query/addAddV2Etransformer_decoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
:transformer_decoder/multi_head_attention/key/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Qtransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
?transformer_decoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_decoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
0transformer_decoder/multi_head_attention/key/addAddV2Ctransformer_decoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_decoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention/value/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Stransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention/value/addAddV2Etransformer_decoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
s
.transformer_decoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
,transformer_decoder/multi_head_attention/MulMul6transformer_decoder/multi_head_attention/query/add:z:07transformer_decoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
6transformer_decoder/multi_head_attention/einsum/EinsumEinsum4transformer_decoder/multi_head_attention/key/add:z:00transformer_decoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
7transformer_decoder/multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3transformer_decoder/multi_head_attention/ExpandDims
ExpandDims!transformer_decoder/Tile:output:0@transformer_decoder/multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
5transformer_decoder/multi_head_attention/softmax/CastCast<transformer_decoder/multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22{
6transformer_decoder/multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
4transformer_decoder/multi_head_attention/softmax/subSub?transformer_decoder/multi_head_attention/softmax/sub/x:output:09transformer_decoder/multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22{
6transformer_decoder/multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
4transformer_decoder/multi_head_attention/softmax/mulMul8transformer_decoder/multi_head_attention/softmax/sub:z:0?transformer_decoder/multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
4transformer_decoder/multi_head_attention/softmax/addAddV2?transformer_decoder/multi_head_attention/einsum/Einsum:output:08transformer_decoder/multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
8transformer_decoder/multi_head_attention/softmax/SoftmaxSoftmax8transformer_decoder/multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22?
;transformer_decoder/multi_head_attention/dropout_3/IdentityIdentityBtransformer_decoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
8transformer_decoder/multi_head_attention/einsum_1/EinsumEinsumDtransformer_decoder/multi_head_attention/dropout_3/Identity:output:06transformer_decoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Gtransformer_decoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_decoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=transformer_decoder/multi_head_attention/attention_output/addAddV2Ptransformer_decoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
&transformer_decoder/dropout_1/IdentityIdentityAtransformer_decoder/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/addAddV2/transformer_decoder/dropout_1/Identity:output:0=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Ftransformer_decoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_decoder/layer_normalization/moments/meanMeantransformer_decoder/add:z:0Otransformer_decoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
<transformer_decoder/layer_normalization/moments/StopGradientStopGradient=transformer_decoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Atransformer_decoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add:z:0Etransformer_decoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Jtransformer_decoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_decoder/layer_normalization/moments/varianceMeanEtransformer_decoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_decoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(|
7transformer_decoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
5transformer_decoder/layer_normalization/batchnorm/addAddV2Atransformer_decoder/layer_normalization/moments/variance:output:0@transformer_decoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
7transformer_decoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_decoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_decoder/layer_normalization/batchnorm/mulMul;transformer_decoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/mul_1Multransformer_decoder/add:z:09transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/mul_2Mul=transformer_decoder/layer_normalization/moments/mean:output:09transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
@transformer_decoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_decoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_decoder/layer_normalization/batchnorm/subSubHtransformer_decoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_decoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/add_1AddV2;transformer_decoder/layer_normalization/batchnorm/mul_1:z:09transformer_decoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
>transformer_decoder/multi_head_attention_1/query/einsum/EinsumEinsum;transformer_decoder/layer_normalization/batchnorm/add_1:z:0Utransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_decoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
4transformer_decoder/multi_head_attention_1/query/addAddV2Gtransformer_decoder/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention_1/key/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention_1/key/addAddV2Etransformer_decoder/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
>transformer_decoder/multi_head_attention_1/value/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Utransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_decoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
4transformer_decoder/multi_head_attention_1/value/addAddV2Gtransformer_decoder/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?u
0transformer_decoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
.transformer_decoder/multi_head_attention_1/MulMul8transformer_decoder/multi_head_attention_1/query/add:z:09transformer_decoder/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
8transformer_decoder/multi_head_attention_1/einsum/EinsumEinsum6transformer_decoder/multi_head_attention_1/key/add:z:02transformer_decoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
<transformer_decoder/multi_head_attention_1/softmax_1/SoftmaxSoftmaxAtransformer_decoder/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
=transformer_decoder/multi_head_attention_1/dropout_4/IdentityIdentityFtransformer_decoder/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
:transformer_decoder/multi_head_attention_1/einsum_1/EinsumEinsumFtransformer_decoder/multi_head_attention_1/dropout_4/Identity:output:08transformer_decoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
Itransformer_decoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_decoder/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
?transformer_decoder/multi_head_attention_1/attention_output/addAddV2Rtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
$transformer_decoder/dropout/IdentityIdentityCtransformer_decoder/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/add_1AddV2-transformer_decoder/dropout/Identity:output:0;transformer_decoder/layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Htransformer_decoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_decoder/layer_normalization_1/moments/meanMeantransformer_decoder/add_1:z:0Qtransformer_decoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_decoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_decoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_decoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add_1:z:0Gtransformer_decoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_decoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_decoder/layer_normalization_1/moments/varianceMeanGtransformer_decoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_decoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_decoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_decoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_decoder/layer_normalization_1/moments/variance:output:0Btransformer_decoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_decoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_decoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_1/batchnorm/mulMul=transformer_decoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/mul_1Multransformer_decoder/add_1:z:0;transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_decoder/layer_normalization_1/moments/mean:output:0;transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_1/batchnorm/subSubJtransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_decoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_decoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_decoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
2transformer_decoder/dense/Tensordot/ReadVariableOpReadVariableOp;transformer_decoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0r
(transformer_decoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(transformer_decoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
)transformer_decoder/dense/Tensordot/ShapeShape=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:s
1transformer_decoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense/Tensordot/GatherV2GatherV22transformer_decoder/dense/Tensordot/Shape:output:01transformer_decoder/dense/Tensordot/free:output:0:transformer_decoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3transformer_decoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense/Tensordot/GatherV2_1GatherV22transformer_decoder/dense/Tensordot/Shape:output:01transformer_decoder/dense/Tensordot/axes:output:0<transformer_decoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)transformer_decoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
(transformer_decoder/dense/Tensordot/ProdProd5transformer_decoder/dense/Tensordot/GatherV2:output:02transformer_decoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+transformer_decoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_decoder/dense/Tensordot/Prod_1Prod7transformer_decoder/dense/Tensordot/GatherV2_1:output:04transformer_decoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/transformer_decoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*transformer_decoder/dense/Tensordot/concatConcatV21transformer_decoder/dense/Tensordot/free:output:01transformer_decoder/dense/Tensordot/axes:output:08transformer_decoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
)transformer_decoder/dense/Tensordot/stackPack1transformer_decoder/dense/Tensordot/Prod:output:03transformer_decoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
-transformer_decoder/dense/Tensordot/transpose	Transpose=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:03transformer_decoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_decoder/dense/Tensordot/ReshapeReshape1transformer_decoder/dense/Tensordot/transpose:y:02transformer_decoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
*transformer_decoder/dense/Tensordot/MatMulMatMul4transformer_decoder/dense/Tensordot/Reshape:output:0:transformer_decoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
+transformer_decoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?s
1transformer_decoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense/Tensordot/concat_1ConcatV25transformer_decoder/dense/Tensordot/GatherV2:output:04transformer_decoder/dense/Tensordot/Const_2:output:0:transformer_decoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
#transformer_decoder/dense/TensordotReshape4transformer_decoder/dense/Tensordot/MatMul:product:05transformer_decoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
0transformer_decoder/dense/BiasAdd/ReadVariableOpReadVariableOp9transformer_decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!transformer_decoder/dense/BiasAddBiasAdd,transformer_decoder/dense/Tensordot:output:08transformer_decoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/dense/ReluRelu*transformer_decoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
4transformer_decoder/dense_1/Tensordot/ReadVariableOpReadVariableOp=transformer_decoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0t
*transformer_decoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer_decoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
+transformer_decoder/dense_1/Tensordot/ShapeShape,transformer_decoder/dense/Relu:activations:0*
T0*
_output_shapes
:u
3transformer_decoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense_1/Tensordot/GatherV2GatherV24transformer_decoder/dense_1/Tensordot/Shape:output:03transformer_decoder/dense_1/Tensordot/free:output:0<transformer_decoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer_decoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0transformer_decoder/dense_1/Tensordot/GatherV2_1GatherV24transformer_decoder/dense_1/Tensordot/Shape:output:03transformer_decoder/dense_1/Tensordot/axes:output:0>transformer_decoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer_decoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_decoder/dense_1/Tensordot/ProdProd7transformer_decoder/dense_1/Tensordot/GatherV2:output:04transformer_decoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer_decoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
,transformer_decoder/dense_1/Tensordot/Prod_1Prod9transformer_decoder/dense_1/Tensordot/GatherV2_1:output:06transformer_decoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer_decoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense_1/Tensordot/concatConcatV23transformer_decoder/dense_1/Tensordot/free:output:03transformer_decoder/dense_1/Tensordot/axes:output:0:transformer_decoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
+transformer_decoder/dense_1/Tensordot/stackPack3transformer_decoder/dense_1/Tensordot/Prod:output:05transformer_decoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
/transformer_decoder/dense_1/Tensordot/transpose	Transpose,transformer_decoder/dense/Relu:activations:05transformer_decoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
-transformer_decoder/dense_1/Tensordot/ReshapeReshape3transformer_decoder/dense_1/Tensordot/transpose:y:04transformer_decoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
,transformer_decoder/dense_1/Tensordot/MatMulMatMul6transformer_decoder/dense_1/Tensordot/Reshape:output:0<transformer_decoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
-transformer_decoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?u
3transformer_decoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense_1/Tensordot/concat_1ConcatV27transformer_decoder/dense_1/Tensordot/GatherV2:output:06transformer_decoder/dense_1/Tensordot/Const_2:output:0<transformer_decoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
%transformer_decoder/dense_1/TensordotReshape6transformer_decoder/dense_1/Tensordot/MatMul:product:07transformer_decoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
2transformer_decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;transformer_decoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#transformer_decoder/dense_1/BiasAddBiasAdd.transformer_decoder/dense_1/Tensordot:output:0:transformer_decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
&transformer_decoder/dropout_2/IdentityIdentity,transformer_decoder/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/add_2AddV2=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:0/transformer_decoder/dropout_2/Identity:output:0*
T0*,
_output_shapes
:?????????2??
Htransformer_decoder/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_decoder/layer_normalization_2/moments/meanMeantransformer_decoder/add_2:z:0Qtransformer_decoder/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_decoder/layer_normalization_2/moments/StopGradientStopGradient?transformer_decoder/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_decoder/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add_2:z:0Gtransformer_decoder/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_decoder/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_decoder/layer_normalization_2/moments/varianceMeanGtransformer_decoder/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_decoder/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_decoder/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_decoder/layer_normalization_2/batchnorm/addAddV2Ctransformer_decoder/layer_normalization_2/moments/variance:output:0Btransformer_decoder/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_decoder/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_decoder/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_2/batchnorm/mulMul=transformer_decoder/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/mul_1Multransformer_decoder/add_2:z:0;transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/mul_2Mul?transformer_decoder/layer_normalization_2/moments/mean:output:0;transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_2/batchnorm/subSubJtransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_decoder/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/add_1AddV2=transformer_decoder/layer_normalization_2/batchnorm/mul_1:z:0;transformer_decoder/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape=transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2      ?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/Reshape_2Reshape=transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????x
dropout/IdentityIdentity#time_distributed/Reshape_1:output:0*
T0*,
_output_shapes
:?????????2?q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshapedropout/Identity:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
"time_distributed_1/dense_1/SoftmaxSoftmax+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????'w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2   ?  ?
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_1/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?'s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/Reshape_2Reshapedropout/Identity:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????y
IdentityIdentity%time_distributed_1/Reshape_1:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp^embedding/embedding_lookup"^position_embedding/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp1^transformer_decoder/dense/BiasAdd/ReadVariableOp3^transformer_decoder/dense/Tensordot/ReadVariableOp3^transformer_decoder/dense_1/BiasAdd/ReadVariableOp5^transformer_decoder/dense_1/Tensordot/ReadVariableOpA^transformer_decoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpM^transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_decoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention/query/add/ReadVariableOpL^transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention/value/add/ReadVariableOpL^transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpO^transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention_1/key/add/ReadVariableOpL^transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_decoder/multi_head_attention_1/query/add/ReadVariableOpN^transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_decoder/multi_head_attention_1/value/add/ReadVariableOpN^transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp1^transformer_encoder/dense/BiasAdd/ReadVariableOp3^transformer_encoder/dense/Tensordot/ReadVariableOp3^transformer_encoder/dense_1/BiasAdd/ReadVariableOp5^transformer_encoder/dense_1/Tensordot/ReadVariableOpA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpM^transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_encoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/query/add/ReadVariableOpL^transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/value/add/ReadVariableOpL^transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2F
!position_embedding/ReadVariableOp!position_embedding/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp2d
0transformer_decoder/dense/BiasAdd/ReadVariableOp0transformer_decoder/dense/BiasAdd/ReadVariableOp2h
2transformer_decoder/dense/Tensordot/ReadVariableOp2transformer_decoder/dense/Tensordot/ReadVariableOp2h
2transformer_decoder/dense_1/BiasAdd/ReadVariableOp2transformer_decoder/dense_1/BiasAdd/ReadVariableOp2l
4transformer_decoder/dense_1/Tensordot/ReadVariableOp4transformer_decoder/dense_1/Tensordot/ReadVariableOp2?
@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp2?
Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp2?
Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp2?
Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
?transformer_decoder/multi_head_attention/key/add/ReadVariableOp?transformer_decoder/multi_head_attention/key/add/ReadVariableOp2?
Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention/query/add/ReadVariableOpAtransformer_decoder/multi_head_attention/query/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention/value/add/ReadVariableOpAtransformer_decoder/multi_head_attention/value/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOpAtransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOpCtransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp2?
Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOpCtransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp2?
Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2d
0transformer_encoder/dense/BiasAdd/ReadVariableOp0transformer_encoder/dense/BiasAdd/ReadVariableOp2h
2transformer_encoder/dense/Tensordot/ReadVariableOp2transformer_encoder/dense/Tensordot/ReadVariableOp2h
2transformer_encoder/dense_1/BiasAdd/ReadVariableOp2transformer_encoder/dense_1/BiasAdd/ReadVariableOp2l
4transformer_encoder/dense_1/Tensordot/ReadVariableOp4transformer_encoder/dense_1/Tensordot/ReadVariableOp2?
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2?
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2?
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
?transformer_encoder/multi_head_attention/key/add/ReadVariableOp?transformer_encoder/multi_head_attention/key/add/ReadVariableOp2?
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpAtransformer_encoder/multi_head_attention/query/add/ReadVariableOp2?
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpAtransformer_encoder/multi_head_attention/value/add/ReadVariableOp2?
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_86140

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????2?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????2?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_89888

inputs2
matmul_readvariableop_resource:
??'.
biasadd_readvariableop_resource:	?'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????'a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:??????????'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
@__inference_model_layer_call_and_return_conditional_losses_87418
input_1#
embedding_87307:
?'?+
position_embedding_87312:	2?0
transformer_encoder_87316:?
+
transformer_encoder_87318:
0
transformer_encoder_87320:?
+
transformer_encoder_87322:
0
transformer_encoder_87324:?
+
transformer_encoder_87326:
0
transformer_encoder_87328:
?(
transformer_encoder_87330:	?(
transformer_encoder_87332:	?(
transformer_encoder_87334:	?-
transformer_encoder_87336:
??(
transformer_encoder_87338:	?-
transformer_encoder_87340:
??(
transformer_encoder_87342:	?(
transformer_encoder_87344:	?(
transformer_encoder_87346:	?0
transformer_decoder_87349:?
+
transformer_decoder_87351:
0
transformer_decoder_87353:?
+
transformer_decoder_87355:
0
transformer_decoder_87357:?
+
transformer_decoder_87359:
0
transformer_decoder_87361:
?(
transformer_decoder_87363:	?(
transformer_decoder_87365:	?(
transformer_decoder_87367:	?0
transformer_decoder_87369:?
+
transformer_decoder_87371:
0
transformer_decoder_87373:?
+
transformer_decoder_87375:
1
transformer_decoder_87377:?
?,
transformer_decoder_87379:	
?1
transformer_decoder_87381:
??(
transformer_decoder_87383:	?(
transformer_decoder_87385:	?(
transformer_decoder_87387:	?-
transformer_decoder_87389:
??(
transformer_decoder_87391:	?-
transformer_decoder_87393:
??(
transformer_decoder_87395:	?(
transformer_decoder_87397:	?(
transformer_decoder_87399:	?*
time_distributed_87402:
??%
time_distributed_87404:	?,
time_distributed_1_87410:
??''
time_distributed_1_87412:	?'
identity??!embedding/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?+transformer_decoder/StatefulPartitionedCall?+transformer_encoder/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_87307*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_85657Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    x
embedding/NotEqualNotEqualinput_1embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0position_embedding_87312*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684?
tf.__operators__.add/AddV2AddV2*embedding/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0transformer_encoder_87316transformer_encoder_87318transformer_encoder_87320transformer_encoder_87322transformer_encoder_87324transformer_encoder_87326transformer_encoder_87328transformer_encoder_87330transformer_encoder_87332transformer_encoder_87334transformer_encoder_87336transformer_encoder_87338transformer_encoder_87340transformer_encoder_87342transformer_encoder_87344transformer_encoder_87346*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_85816?	
+transformer_decoder/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0tf.__operators__.add/AddV2:z:0transformer_decoder_87349transformer_decoder_87351transformer_decoder_87353transformer_decoder_87355transformer_decoder_87357transformer_decoder_87359transformer_decoder_87361transformer_decoder_87363transformer_decoder_87365transformer_decoder_87367transformer_decoder_87369transformer_decoder_87371transformer_decoder_87373transformer_decoder_87375transformer_decoder_87377transformer_decoder_87379transformer_decoder_87381transformer_decoder_87383transformer_decoder_87385transformer_decoder_87387transformer_decoder_87389transformer_decoder_87391transformer_decoder_87393transformer_decoder_87395transformer_decoder_87397transformer_decoder_87399*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86074?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall4transformer_decoder/StatefulPartitionedCall:output:0time_distributed_87402time_distributed_87404*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85512o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape4transformer_decoder/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dropout/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86140?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0time_distributed_1_87410time_distributed_1_87412*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85594q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape dropout/PartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp"^embedding/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall,^transformer_decoder/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2Z
+transformer_decoder/StatefulPartitionedCall+transformer_decoder/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
?E
?
@__inference_model_layer_call_and_return_conditional_losses_86150

inputs#
embedding_85658:
?'?+
position_embedding_85685:	2?0
transformer_encoder_85817:?
+
transformer_encoder_85819:
0
transformer_encoder_85821:?
+
transformer_encoder_85823:
0
transformer_encoder_85825:?
+
transformer_encoder_85827:
0
transformer_encoder_85829:
?(
transformer_encoder_85831:	?(
transformer_encoder_85833:	?(
transformer_encoder_85835:	?-
transformer_encoder_85837:
??(
transformer_encoder_85839:	?-
transformer_encoder_85841:
??(
transformer_encoder_85843:	?(
transformer_encoder_85845:	?(
transformer_encoder_85847:	?0
transformer_decoder_86075:?
+
transformer_decoder_86077:
0
transformer_decoder_86079:?
+
transformer_decoder_86081:
0
transformer_decoder_86083:?
+
transformer_decoder_86085:
0
transformer_decoder_86087:
?(
transformer_decoder_86089:	?(
transformer_decoder_86091:	?(
transformer_decoder_86093:	?0
transformer_decoder_86095:?
+
transformer_decoder_86097:
0
transformer_decoder_86099:?
+
transformer_decoder_86101:
1
transformer_decoder_86103:?
?,
transformer_decoder_86105:	
?1
transformer_decoder_86107:
??(
transformer_decoder_86109:	?(
transformer_decoder_86111:	?(
transformer_decoder_86113:	?-
transformer_decoder_86115:
??(
transformer_decoder_86117:	?-
transformer_decoder_86119:
??(
transformer_decoder_86121:	?(
transformer_decoder_86123:	?(
transformer_decoder_86125:	?*
time_distributed_86128:
??%
time_distributed_86130:	?,
time_distributed_1_86142:
??''
time_distributed_1_86144:	?'
identity??!embedding/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?+transformer_decoder/StatefulPartitionedCall?+transformer_encoder/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_85658*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_85657Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    w
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0position_embedding_85685*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684?
tf.__operators__.add/AddV2AddV2*embedding/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0transformer_encoder_85817transformer_encoder_85819transformer_encoder_85821transformer_encoder_85823transformer_encoder_85825transformer_encoder_85827transformer_encoder_85829transformer_encoder_85831transformer_encoder_85833transformer_encoder_85835transformer_encoder_85837transformer_encoder_85839transformer_encoder_85841transformer_encoder_85843transformer_encoder_85845transformer_encoder_85847*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_85816?	
+transformer_decoder/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0tf.__operators__.add/AddV2:z:0transformer_decoder_86075transformer_decoder_86077transformer_decoder_86079transformer_decoder_86081transformer_decoder_86083transformer_decoder_86085transformer_decoder_86087transformer_decoder_86089transformer_decoder_86091transformer_decoder_86093transformer_decoder_86095transformer_decoder_86097transformer_decoder_86099transformer_decoder_86101transformer_decoder_86103transformer_decoder_86105transformer_decoder_86107transformer_decoder_86109transformer_decoder_86111transformer_decoder_86113transformer_decoder_86115transformer_decoder_86117transformer_decoder_86119transformer_decoder_86121transformer_decoder_86123transformer_decoder_86125*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86074?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall4transformer_decoder/StatefulPartitionedCall:output:0time_distributed_86128time_distributed_86130*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85512o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape4transformer_decoder/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dropout/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_86140?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0time_distributed_1_86142time_distributed_1_86144*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85594q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshape dropout/PartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp"^embedding/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall,^transformer_decoder/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2Z
+transformer_decoder/StatefulPartitionedCall+transformer_decoder/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?<
@__inference_model_layer_call_and_return_conditional_losses_88704

inputs4
 embedding_embedding_lookup_88246:
?'?=
*position_embedding_readvariableop_resource:	2?k
Ttransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
\
Jtransformer_encoder_multi_head_attention_query_add_readvariableop_resource:
i
Rtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
Z
Htransformer_encoder_multi_head_attention_key_add_readvariableop_resource:
k
Ttransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
\
Jtransformer_encoder_multi_head_attention_value_add_readvariableop_resource:
v
_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?d
Utransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:	?\
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?X
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	?O
;transformer_encoder_dense_tensordot_readvariableop_resource:
??H
9transformer_encoder_dense_biasadd_readvariableop_resource:	?Q
=transformer_encoder_dense_1_tensordot_readvariableop_resource:
??J
;transformer_encoder_dense_1_biasadd_readvariableop_resource:	?^
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	?k
Ttransformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_query_add_readvariableop_resource:
i
Rtransformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:?
Z
Htransformer_decoder_multi_head_attention_key_add_readvariableop_resource:
k
Ttransformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_value_add_readvariableop_resource:
v
_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?d
Utransformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource:	?\
Mtransformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource:	?X
Itransformer_decoder_layer_normalization_batchnorm_readvariableop_resource:	?m
Vtransformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:?
^
Ltransformer_decoder_multi_head_attention_1_query_add_readvariableop_resource:
k
Ttransformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
\
Jtransformer_decoder_multi_head_attention_1_key_add_readvariableop_resource:
n
Vtransformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?_
Ltransformer_decoder_multi_head_attention_1_value_add_readvariableop_resource:	
?y
atransformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??f
Wtransformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?^
Otransformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource:	?O
;transformer_decoder_dense_tensordot_readvariableop_resource:
??H
9transformer_decoder_dense_biasadd_readvariableop_resource:	?Q
=transformer_decoder_dense_1_tensordot_readvariableop_resource:
??J
;transformer_decoder_dense_1_biasadd_readvariableop_resource:	?^
Otransformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource:	?Z
Ktransformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource:	?I
5time_distributed_dense_matmul_readvariableop_resource:
??E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??'I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?'
identity??embedding/embedding_lookup?!position_embedding/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOp?0transformer_decoder/dense/BiasAdd/ReadVariableOp?2transformer_decoder/dense/Tensordot/ReadVariableOp?2transformer_decoder/dense_1/BiasAdd/ReadVariableOp?4transformer_decoder/dense_1/Tensordot/ReadVariableOp?@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp?Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp?Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp?Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp?Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp?Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp?Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp??transformer_decoder/multi_head_attention/key/add/ReadVariableOp?Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention/query/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention/value/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp?Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp?Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp?Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp?Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?0transformer_encoder/dense/BiasAdd/ReadVariableOp?2transformer_encoder/dense/Tensordot/ReadVariableOp?2transformer_encoder/dense_1/BiasAdd/ReadVariableOp?4transformer_encoder/dense_1/Tensordot/ReadVariableOp?@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp?Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp?Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp?Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp?Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp?Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp??transformer_encoder/multi_head_attention/key/add/ReadVariableOp?Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Atransformer_encoder/multi_head_attention/query/add/ReadVariableOp?Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Atransformer_encoder/multi_head_attention/value/add/ReadVariableOp?Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_88246embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/88246*,
_output_shapes
:?????????2?*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/88246*,
_output_shapes
:?????????2??
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????2?Y
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    w
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:?????????2v
position_embedding/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:y
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????r
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes
:	2?*
dtype0Z
position_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : \
position_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :l
*position_embedding/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ?
(position_embedding/strided_slice_1/stackPack!position_embedding/Const:output:03position_embedding/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:n
,position_embedding/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ?
*position_embedding/strided_slice_1/stack_1Pack)position_embedding/strided_slice:output:05position_embedding/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:n
,position_embedding/strided_slice_1/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :?
*position_embedding/strided_slice_1/stack_2Pack#position_embedding/Const_1:output:05position_embedding/strided_slice_1/stack_2/1:output:0*
N*
T0*
_output_shapes
:?
"position_embedding/strided_slice_1StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2?*

begin_mask*
end_mask?
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_1:output:0!position_embedding/Shape:output:0*
T0*,
_output_shapes
:?????????2??
tf.__operators__.add/AddV2AddV2.embedding/embedding_lookup/Identity_1:output:0'position_embedding/BroadcastTo:output:0*
T0*,
_output_shapes
:?????????2??
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_encoder/multi_head_attention/query/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_encoder/multi_head_attention/query/addAddV2Etransformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
:transformer_encoder/multi_head_attention/key/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Qtransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
?transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
0transformer_encoder/multi_head_attention/key/addAddV2Ctransformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_encoder/multi_head_attention/value/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_encoder/multi_head_attention/value/addAddV2Etransformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
s
.transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
,transformer_encoder/multi_head_attention/MulMul6transformer_encoder/multi_head_attention/query/add:z:07transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
6transformer_encoder/multi_head_attention/einsum/EinsumEinsum4transformer_encoder/multi_head_attention/key/add:z:00transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
8transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmax?transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
@transformer_encoder/multi_head_attention/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
>transformer_encoder/multi_head_attention/dropout_2/dropout/MulMulBtransformer_encoder/multi_head_attention/softmax/Softmax:softmax:0Itransformer_encoder/multi_head_attention/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
@transformer_encoder/multi_head_attention/dropout_2/dropout/ShapeShapeBtransformer_encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Wtransformer_encoder/multi_head_attention/dropout_2/dropout/random_uniform/RandomUniformRandomUniformItransformer_encoder/multi_head_attention/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seed?
Itransformer_encoder/multi_head_attention/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
Gtransformer_encoder/multi_head_attention/dropout_2/dropout/GreaterEqualGreaterEqual`transformer_encoder/multi_head_attention/dropout_2/dropout/random_uniform/RandomUniform:output:0Rtransformer_encoder/multi_head_attention/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
?transformer_encoder/multi_head_attention/dropout_2/dropout/CastCastKtransformer_encoder/multi_head_attention/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
@transformer_encoder/multi_head_attention/dropout_2/dropout/Mul_1MulBtransformer_encoder/multi_head_attention/dropout_2/dropout/Mul:z:0Ctransformer_encoder/multi_head_attention/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumDtransformer_encoder/multi_head_attention/dropout_2/dropout/Mul_1:z:06transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Gtransformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=transformer_encoder/multi_head_attention/attention_output/addAddV2Ptransformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?n
)transformer_encoder/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
'transformer_encoder/dropout/dropout/MulMulAtransformer_encoder/multi_head_attention/attention_output/add:z:02transformer_encoder/dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2??
)transformer_encoder/dropout/dropout/ShapeShapeAtransformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
@transformer_encoder/dropout/dropout/random_uniform/RandomUniformRandomUniform2transformer_encoder/dropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2w
2transformer_encoder/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
0transformer_encoder/dropout/dropout/GreaterEqualGreaterEqualItransformer_encoder/dropout/dropout/random_uniform/RandomUniform:output:0;transformer_encoder/dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
(transformer_encoder/dropout/dropout/CastCast4transformer_encoder/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
)transformer_encoder/dropout/dropout/Mul_1Mul+transformer_encoder/dropout/dropout/Mul:z:0,transformer_encoder/dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/addAddV2tf.__operators__.add/AddV2:z:0-transformer_encoder/dropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2??
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_encoder/layer_normalization/moments/meanMeantransformer_encoder/add:z:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add:z:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/mul_1Multransformer_encoder/add:z:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
2transformer_encoder/dense/Tensordot/ReadVariableOpReadVariableOp;transformer_encoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0r
(transformer_encoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(transformer_encoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
)transformer_encoder/dense/Tensordot/ShapeShape;transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:s
1transformer_encoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense/Tensordot/GatherV2GatherV22transformer_encoder/dense/Tensordot/Shape:output:01transformer_encoder/dense/Tensordot/free:output:0:transformer_encoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3transformer_encoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense/Tensordot/GatherV2_1GatherV22transformer_encoder/dense/Tensordot/Shape:output:01transformer_encoder/dense/Tensordot/axes:output:0<transformer_encoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)transformer_encoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
(transformer_encoder/dense/Tensordot/ProdProd5transformer_encoder/dense/Tensordot/GatherV2:output:02transformer_encoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+transformer_encoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_encoder/dense/Tensordot/Prod_1Prod7transformer_encoder/dense/Tensordot/GatherV2_1:output:04transformer_encoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/transformer_encoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*transformer_encoder/dense/Tensordot/concatConcatV21transformer_encoder/dense/Tensordot/free:output:01transformer_encoder/dense/Tensordot/axes:output:08transformer_encoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
)transformer_encoder/dense/Tensordot/stackPack1transformer_encoder/dense/Tensordot/Prod:output:03transformer_encoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
-transformer_encoder/dense/Tensordot/transpose	Transpose;transformer_encoder/layer_normalization/batchnorm/add_1:z:03transformer_encoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/dense/Tensordot/ReshapeReshape1transformer_encoder/dense/Tensordot/transpose:y:02transformer_encoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
*transformer_encoder/dense/Tensordot/MatMulMatMul4transformer_encoder/dense/Tensordot/Reshape:output:0:transformer_encoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
+transformer_encoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?s
1transformer_encoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense/Tensordot/concat_1ConcatV25transformer_encoder/dense/Tensordot/GatherV2:output:04transformer_encoder/dense/Tensordot/Const_2:output:0:transformer_encoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
#transformer_encoder/dense/TensordotReshape4transformer_encoder/dense/Tensordot/MatMul:product:05transformer_encoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
0transformer_encoder/dense/BiasAdd/ReadVariableOpReadVariableOp9transformer_encoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!transformer_encoder/dense/BiasAddBiasAdd,transformer_encoder/dense/Tensordot:output:08transformer_encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/dense/ReluRelu*transformer_encoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
4transformer_encoder/dense_1/Tensordot/ReadVariableOpReadVariableOp=transformer_encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0t
*transformer_encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer_encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
+transformer_encoder/dense_1/Tensordot/ShapeShape,transformer_encoder/dense/Relu:activations:0*
T0*
_output_shapes
:u
3transformer_encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense_1/Tensordot/GatherV2GatherV24transformer_encoder/dense_1/Tensordot/Shape:output:03transformer_encoder/dense_1/Tensordot/free:output:0<transformer_encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer_encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0transformer_encoder/dense_1/Tensordot/GatherV2_1GatherV24transformer_encoder/dense_1/Tensordot/Shape:output:03transformer_encoder/dense_1/Tensordot/axes:output:0>transformer_encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer_encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_encoder/dense_1/Tensordot/ProdProd7transformer_encoder/dense_1/Tensordot/GatherV2:output:04transformer_encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer_encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
,transformer_encoder/dense_1/Tensordot/Prod_1Prod9transformer_encoder/dense_1/Tensordot/GatherV2_1:output:06transformer_encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer_encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_encoder/dense_1/Tensordot/concatConcatV23transformer_encoder/dense_1/Tensordot/free:output:03transformer_encoder/dense_1/Tensordot/axes:output:0:transformer_encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
+transformer_encoder/dense_1/Tensordot/stackPack3transformer_encoder/dense_1/Tensordot/Prod:output:05transformer_encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
/transformer_encoder/dense_1/Tensordot/transpose	Transpose,transformer_encoder/dense/Relu:activations:05transformer_encoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
-transformer_encoder/dense_1/Tensordot/ReshapeReshape3transformer_encoder/dense_1/Tensordot/transpose:y:04transformer_encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
,transformer_encoder/dense_1/Tensordot/MatMulMatMul6transformer_encoder/dense_1/Tensordot/Reshape:output:0<transformer_encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
-transformer_encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?u
3transformer_encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_encoder/dense_1/Tensordot/concat_1ConcatV27transformer_encoder/dense_1/Tensordot/GatherV2:output:06transformer_encoder/dense_1/Tensordot/Const_2:output:0<transformer_encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
%transformer_encoder/dense_1/TensordotReshape6transformer_encoder/dense_1/Tensordot/MatMul:product:07transformer_encoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
2transformer_encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;transformer_encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#transformer_encoder/dense_1/BiasAddBiasAdd.transformer_encoder/dense_1/Tensordot:output:0:transformer_encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?p
+transformer_encoder/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
)transformer_encoder/dropout_1/dropout/MulMul,transformer_encoder/dense_1/BiasAdd:output:04transformer_encoder/dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_encoder/dropout_1/dropout/ShapeShape,transformer_encoder/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
Btransformer_encoder/dropout_1/dropout/random_uniform/RandomUniformRandomUniform4transformer_encoder/dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2y
4transformer_encoder/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
2transformer_encoder/dropout_1/dropout/GreaterEqualGreaterEqualKtransformer_encoder/dropout_1/dropout/random_uniform/RandomUniform:output:0=transformer_encoder/dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
*transformer_encoder/dropout_1/dropout/CastCast6transformer_encoder/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
+transformer_encoder/dropout_1/dropout/Mul_1Mul-transformer_encoder/dropout_1/dropout/Mul:z:0.transformer_encoder/dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
transformer_encoder/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0/transformer_encoder/dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2??
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_encoder/layer_normalization_1/moments/meanMeantransformer_encoder/add_1:z:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add_1:z:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Multransformer_encoder/add_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/ShapeShape=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
'transformer_decoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)transformer_decoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)transformer_decoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!transformer_decoder/strided_sliceStridedSlice"transformer_decoder/Shape:output:00transformer_decoder/strided_slice/stack:output:02transformer_decoder/strided_slice/stack_1:output:02transformer_decoder/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_decoder/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_1StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_1/stack:output:04transformer_decoder/strided_slice_1/stack_1:output:04transformer_decoder/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
transformer_decoder/range/startConst*
_output_shapes
: *
dtype0*
value	B : a
transformer_decoder/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
transformer_decoder/rangeRange(transformer_decoder/range/start:output:0,transformer_decoder/strided_slice_1:output:0(transformer_decoder/range/delta:output:0*
_output_shapes
:2z
)transformer_decoder/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_decoder/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_decoder/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
#transformer_decoder/strided_slice_2StridedSlice"transformer_decoder/range:output:02transformer_decoder/strided_slice_2/stack:output:04transformer_decoder/strided_slice_2/stack_1:output:04transformer_decoder/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskc
!transformer_decoder/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : c
!transformer_decoder/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
transformer_decoder/range_1Range*transformer_decoder/range_1/start:output:0,transformer_decoder/strided_slice_1:output:0*transformer_decoder/range_1/delta:output:0*
_output_shapes
:2?
 transformer_decoder/GreaterEqualGreaterEqual,transformer_decoder/strided_slice_2:output:0$transformer_decoder/range_1:output:0*
T0*
_output_shapes

:22~
transformer_decoder/CastCast$transformer_decoder/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22s
)transformer_decoder/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_3StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_3/stack:output:04transformer_decoder/strided_slice_3/stack_1:output:04transformer_decoder/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_decoder/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_decoder/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#transformer_decoder/strided_slice_4StridedSlice"transformer_decoder/Shape:output:02transformer_decoder/strided_slice_4/stack:output:04transformer_decoder/strided_slice_4/stack_1:output:04transformer_decoder/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#transformer_decoder/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
!transformer_decoder/Reshape/shapePack,transformer_decoder/Reshape/shape/0:output:0,transformer_decoder/strided_slice_3:output:0,transformer_decoder/strided_slice_4:output:0*
N*
T0*
_output_shapes
:?
transformer_decoder/ReshapeReshapetransformer_decoder/Cast:y:0*transformer_decoder/Reshape/shape:output:0*
T0*"
_output_shapes
:22m
"transformer_decoder/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
transformer_decoder/ExpandDims
ExpandDims*transformer_decoder/strided_slice:output:0+transformer_decoder/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
transformer_decoder/ConstConst*
_output_shapes
:*
dtype0*
valueB"      a
transformer_decoder/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
transformer_decoder/concatConcatV2'transformer_decoder/ExpandDims:output:0"transformer_decoder/Const:output:0(transformer_decoder/concat/axis:output:0*
N*
T0*
_output_shapes
:?
transformer_decoder/TileTile$transformer_decoder/Reshape:output:0#transformer_decoder/concat:output:0*
T0*+
_output_shapes
:?????????22?
Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention/query/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Stransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention/query/addAddV2Etransformer_decoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_decoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
:transformer_decoder/multi_head_attention/key/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Qtransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
?transformer_decoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_decoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
0transformer_decoder/multi_head_attention/key/addAddV2Ctransformer_decoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_decoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention/value/einsum/EinsumEinsum=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0Stransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention/value/addAddV2Etransformer_decoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
s
.transformer_decoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
,transformer_decoder/multi_head_attention/MulMul6transformer_decoder/multi_head_attention/query/add:z:07transformer_decoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
6transformer_decoder/multi_head_attention/einsum/EinsumEinsum4transformer_decoder/multi_head_attention/key/add:z:00transformer_decoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
7transformer_decoder/multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3transformer_decoder/multi_head_attention/ExpandDims
ExpandDims!transformer_decoder/Tile:output:0@transformer_decoder/multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
5transformer_decoder/multi_head_attention/softmax/CastCast<transformer_decoder/multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22{
6transformer_decoder/multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
4transformer_decoder/multi_head_attention/softmax/subSub?transformer_decoder/multi_head_attention/softmax/sub/x:output:09transformer_decoder/multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22{
6transformer_decoder/multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
4transformer_decoder/multi_head_attention/softmax/mulMul8transformer_decoder/multi_head_attention/softmax/sub:z:0?transformer_decoder/multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
4transformer_decoder/multi_head_attention/softmax/addAddV2?transformer_decoder/multi_head_attention/einsum/Einsum:output:08transformer_decoder/multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
8transformer_decoder/multi_head_attention/softmax/SoftmaxSoftmax8transformer_decoder/multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22?
@transformer_decoder/multi_head_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
>transformer_decoder/multi_head_attention/dropout_3/dropout/MulMulBtransformer_decoder/multi_head_attention/softmax/Softmax:softmax:0Itransformer_decoder/multi_head_attention/dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
@transformer_decoder/multi_head_attention/dropout_3/dropout/ShapeShapeBtransformer_decoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Wtransformer_decoder/multi_head_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniformItransformer_decoder/multi_head_attention/dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seed*
seed2?
Itransformer_decoder/multi_head_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
Gtransformer_decoder/multi_head_attention/dropout_3/dropout/GreaterEqualGreaterEqual`transformer_decoder/multi_head_attention/dropout_3/dropout/random_uniform/RandomUniform:output:0Rtransformer_decoder/multi_head_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
?transformer_decoder/multi_head_attention/dropout_3/dropout/CastCastKtransformer_decoder/multi_head_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
@transformer_decoder/multi_head_attention/dropout_3/dropout/Mul_1MulBtransformer_decoder/multi_head_attention/dropout_3/dropout/Mul:z:0Ctransformer_decoder/multi_head_attention/dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
8transformer_decoder/multi_head_attention/einsum_1/EinsumEinsumDtransformer_decoder/multi_head_attention/dropout_3/dropout/Mul_1:z:06transformer_decoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_decoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
Gtransformer_decoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_decoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_decoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
=transformer_decoder/multi_head_attention/attention_output/addAddV2Ptransformer_decoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?p
+transformer_decoder/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
)transformer_decoder/dropout_1/dropout/MulMulAtransformer_decoder/multi_head_attention/attention_output/add:z:04transformer_decoder/dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_decoder/dropout_1/dropout/ShapeShapeAtransformer_decoder/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
Btransformer_decoder/dropout_1/dropout/random_uniform/RandomUniformRandomUniform4transformer_decoder/dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2y
4transformer_decoder/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
2transformer_decoder/dropout_1/dropout/GreaterEqualGreaterEqualKtransformer_decoder/dropout_1/dropout/random_uniform/RandomUniform:output:0=transformer_decoder/dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
*transformer_decoder/dropout_1/dropout/CastCast6transformer_decoder/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
+transformer_decoder/dropout_1/dropout/Mul_1Mul-transformer_decoder/dropout_1/dropout/Mul:z:0.transformer_decoder/dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/addAddV2/transformer_decoder/dropout_1/dropout/Mul_1:z:0=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Ftransformer_decoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_decoder/layer_normalization/moments/meanMeantransformer_decoder/add:z:0Otransformer_decoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
<transformer_decoder/layer_normalization/moments/StopGradientStopGradient=transformer_decoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Atransformer_decoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add:z:0Etransformer_decoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Jtransformer_decoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_decoder/layer_normalization/moments/varianceMeanEtransformer_decoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_decoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(|
7transformer_decoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
5transformer_decoder/layer_normalization/batchnorm/addAddV2Atransformer_decoder/layer_normalization/moments/variance:output:0@transformer_decoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
7transformer_decoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_decoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_decoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_decoder/layer_normalization/batchnorm/mulMul;transformer_decoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/mul_1Multransformer_decoder/add:z:09transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/mul_2Mul=transformer_decoder/layer_normalization/moments/mean:output:09transformer_decoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
@transformer_decoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_decoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
5transformer_decoder/layer_normalization/batchnorm/subSubHtransformer_decoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_decoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
7transformer_decoder/layer_normalization/batchnorm/add_1AddV2;transformer_decoder/layer_normalization/batchnorm/mul_1:z:09transformer_decoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_decoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
>transformer_decoder/multi_head_attention_1/query/einsum/EinsumEinsum;transformer_decoder/layer_normalization/batchnorm/add_1:z:0Utransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_decoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
4transformer_decoder/multi_head_attention_1/query/addAddV2Gtransformer_decoder/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_decoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
<transformer_decoder/multi_head_attention_1/key/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Stransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_decoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
2transformer_decoder/multi_head_attention_1/key/addAddV2Etransformer_decoder/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_decoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
>transformer_decoder/multi_head_attention_1/value/einsum/EinsumEinsumtf.__operators__.add/AddV2:z:0Utransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_decoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
4transformer_decoder/multi_head_attention_1/value/addAddV2Gtransformer_decoder/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?u
0transformer_decoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
.transformer_decoder/multi_head_attention_1/MulMul8transformer_decoder/multi_head_attention_1/query/add:z:09transformer_decoder/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
8transformer_decoder/multi_head_attention_1/einsum/EinsumEinsum6transformer_decoder/multi_head_attention_1/key/add:z:02transformer_decoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
<transformer_decoder/multi_head_attention_1/softmax_1/SoftmaxSoftmaxAtransformer_decoder/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
Btransformer_decoder/multi_head_attention_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
@transformer_decoder/multi_head_attention_1/dropout_4/dropout/MulMulFtransformer_decoder/multi_head_attention_1/softmax_1/Softmax:softmax:0Ktransformer_decoder/multi_head_attention_1/dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
Btransformer_decoder/multi_head_attention_1/dropout_4/dropout/ShapeShapeFtransformer_decoder/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:?
Ytransformer_decoder/multi_head_attention_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniformKtransformer_decoder/multi_head_attention_1/dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seed*
seed2?
Ktransformer_decoder/multi_head_attention_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
Itransformer_decoder/multi_head_attention_1/dropout_4/dropout/GreaterEqualGreaterEqualbtransformer_decoder/multi_head_attention_1/dropout_4/dropout/random_uniform/RandomUniform:output:0Ttransformer_decoder/multi_head_attention_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
Atransformer_decoder/multi_head_attention_1/dropout_4/dropout/CastCastMtransformer_decoder/multi_head_attention_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
Btransformer_decoder/multi_head_attention_1/dropout_4/dropout/Mul_1MulDtransformer_decoder/multi_head_attention_1/dropout_4/dropout/Mul:z:0Etransformer_decoder/multi_head_attention_1/dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
:transformer_decoder/multi_head_attention_1/einsum_1/EinsumEinsumFtransformer_decoder/multi_head_attention_1/dropout_4/dropout/Mul_1:z:08transformer_decoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_decoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
Itransformer_decoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_decoder/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_decoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
?transformer_decoder/multi_head_attention_1/attention_output/addAddV2Rtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?n
)transformer_decoder/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
'transformer_decoder/dropout/dropout/MulMulCtransformer_decoder/multi_head_attention_1/attention_output/add:z:02transformer_decoder/dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2??
)transformer_decoder/dropout/dropout/ShapeShapeCtransformer_decoder/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
@transformer_decoder/dropout/dropout/random_uniform/RandomUniformRandomUniform2transformer_decoder/dropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2w
2transformer_decoder/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
0transformer_decoder/dropout/dropout/GreaterEqualGreaterEqualItransformer_decoder/dropout/dropout/random_uniform/RandomUniform:output:0;transformer_decoder/dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
(transformer_decoder/dropout/dropout/CastCast4transformer_decoder/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
)transformer_decoder/dropout/dropout/Mul_1Mul+transformer_decoder/dropout/dropout/Mul:z:0,transformer_decoder/dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/add_1AddV2-transformer_decoder/dropout/dropout/Mul_1:z:0;transformer_decoder/layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2??
Htransformer_decoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_decoder/layer_normalization_1/moments/meanMeantransformer_decoder/add_1:z:0Qtransformer_decoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_decoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_decoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_decoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add_1:z:0Gtransformer_decoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_decoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_decoder/layer_normalization_1/moments/varianceMeanGtransformer_decoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_decoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_decoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_decoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_decoder/layer_normalization_1/moments/variance:output:0Btransformer_decoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_decoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_decoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_decoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_1/batchnorm/mulMul=transformer_decoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/mul_1Multransformer_decoder/add_1:z:0;transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_decoder/layer_normalization_1/moments/mean:output:0;transformer_decoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_decoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_1/batchnorm/subSubJtransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_decoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_decoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_decoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
2transformer_decoder/dense/Tensordot/ReadVariableOpReadVariableOp;transformer_decoder_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0r
(transformer_decoder/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(transformer_decoder/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
)transformer_decoder/dense/Tensordot/ShapeShape=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:s
1transformer_decoder/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense/Tensordot/GatherV2GatherV22transformer_decoder/dense/Tensordot/Shape:output:01transformer_decoder/dense/Tensordot/free:output:0:transformer_decoder/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3transformer_decoder/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense/Tensordot/GatherV2_1GatherV22transformer_decoder/dense/Tensordot/Shape:output:01transformer_decoder/dense/Tensordot/axes:output:0<transformer_decoder/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)transformer_decoder/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
(transformer_decoder/dense/Tensordot/ProdProd5transformer_decoder/dense/Tensordot/GatherV2:output:02transformer_decoder/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+transformer_decoder/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_decoder/dense/Tensordot/Prod_1Prod7transformer_decoder/dense/Tensordot/GatherV2_1:output:04transformer_decoder/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/transformer_decoder/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*transformer_decoder/dense/Tensordot/concatConcatV21transformer_decoder/dense/Tensordot/free:output:01transformer_decoder/dense/Tensordot/axes:output:08transformer_decoder/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
)transformer_decoder/dense/Tensordot/stackPack1transformer_decoder/dense/Tensordot/Prod:output:03transformer_decoder/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
-transformer_decoder/dense/Tensordot/transpose	Transpose=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:03transformer_decoder/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_decoder/dense/Tensordot/ReshapeReshape1transformer_decoder/dense/Tensordot/transpose:y:02transformer_decoder/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
*transformer_decoder/dense/Tensordot/MatMulMatMul4transformer_decoder/dense/Tensordot/Reshape:output:0:transformer_decoder/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
+transformer_decoder/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?s
1transformer_decoder/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense/Tensordot/concat_1ConcatV25transformer_decoder/dense/Tensordot/GatherV2:output:04transformer_decoder/dense/Tensordot/Const_2:output:0:transformer_decoder/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
#transformer_decoder/dense/TensordotReshape4transformer_decoder/dense/Tensordot/MatMul:product:05transformer_decoder/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
0transformer_decoder/dense/BiasAdd/ReadVariableOpReadVariableOp9transformer_decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!transformer_decoder/dense/BiasAddBiasAdd,transformer_decoder/dense/Tensordot:output:08transformer_decoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/dense/ReluRelu*transformer_decoder/dense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
4transformer_decoder/dense_1/Tensordot/ReadVariableOpReadVariableOp=transformer_decoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0t
*transformer_decoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer_decoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
+transformer_decoder/dense_1/Tensordot/ShapeShape,transformer_decoder/dense/Relu:activations:0*
T0*
_output_shapes
:u
3transformer_decoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense_1/Tensordot/GatherV2GatherV24transformer_decoder/dense_1/Tensordot/Shape:output:03transformer_decoder/dense_1/Tensordot/free:output:0<transformer_decoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer_decoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
0transformer_decoder/dense_1/Tensordot/GatherV2_1GatherV24transformer_decoder/dense_1/Tensordot/Shape:output:03transformer_decoder/dense_1/Tensordot/axes:output:0>transformer_decoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer_decoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
*transformer_decoder/dense_1/Tensordot/ProdProd7transformer_decoder/dense_1/Tensordot/GatherV2:output:04transformer_decoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer_decoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
,transformer_decoder/dense_1/Tensordot/Prod_1Prod9transformer_decoder/dense_1/Tensordot/GatherV2_1:output:06transformer_decoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer_decoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
,transformer_decoder/dense_1/Tensordot/concatConcatV23transformer_decoder/dense_1/Tensordot/free:output:03transformer_decoder/dense_1/Tensordot/axes:output:0:transformer_decoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
+transformer_decoder/dense_1/Tensordot/stackPack3transformer_decoder/dense_1/Tensordot/Prod:output:05transformer_decoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
/transformer_decoder/dense_1/Tensordot/transpose	Transpose,transformer_decoder/dense/Relu:activations:05transformer_decoder/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
-transformer_decoder/dense_1/Tensordot/ReshapeReshape3transformer_decoder/dense_1/Tensordot/transpose:y:04transformer_decoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
,transformer_decoder/dense_1/Tensordot/MatMulMatMul6transformer_decoder/dense_1/Tensordot/Reshape:output:0<transformer_decoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
-transformer_decoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?u
3transformer_decoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
.transformer_decoder/dense_1/Tensordot/concat_1ConcatV27transformer_decoder/dense_1/Tensordot/GatherV2:output:06transformer_decoder/dense_1/Tensordot/Const_2:output:0<transformer_decoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
%transformer_decoder/dense_1/TensordotReshape6transformer_decoder/dense_1/Tensordot/MatMul:product:07transformer_decoder/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
2transformer_decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;transformer_decoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#transformer_decoder/dense_1/BiasAddBiasAdd.transformer_decoder/dense_1/Tensordot:output:0:transformer_decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?p
+transformer_decoder/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
)transformer_decoder/dropout_2/dropout/MulMul,transformer_decoder/dense_1/BiasAdd:output:04transformer_decoder/dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2??
+transformer_decoder/dropout_2/dropout/ShapeShape,transformer_decoder/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
Btransformer_decoder/dropout_2/dropout/random_uniform/RandomUniformRandomUniform4transformer_decoder/dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2y
4transformer_decoder/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
2transformer_decoder/dropout_2/dropout/GreaterEqualGreaterEqualKtransformer_decoder/dropout_2/dropout/random_uniform/RandomUniform:output:0=transformer_decoder/dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
*transformer_decoder/dropout_2/dropout/CastCast6transformer_decoder/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
+transformer_decoder/dropout_2/dropout/Mul_1Mul-transformer_decoder/dropout_2/dropout/Mul:z:0.transformer_decoder/dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
transformer_decoder/add_2AddV2=transformer_decoder/layer_normalization_1/batchnorm/add_1:z:0/transformer_decoder/dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2??
Htransformer_decoder/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_decoder/layer_normalization_2/moments/meanMeantransformer_decoder/add_2:z:0Qtransformer_decoder/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
>transformer_decoder/layer_normalization_2/moments/StopGradientStopGradient?transformer_decoder/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
Ctransformer_decoder/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_decoder/add_2:z:0Gtransformer_decoder/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
Ltransformer_decoder/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_decoder/layer_normalization_2/moments/varianceMeanGtransformer_decoder/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_decoder/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(~
9transformer_decoder/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
7transformer_decoder/layer_normalization_2/batchnorm/addAddV2Ctransformer_decoder/layer_normalization_2/moments/variance:output:0Btransformer_decoder/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
9transformer_decoder/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_decoder/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_decoder_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_2/batchnorm/mulMul=transformer_decoder/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/mul_1Multransformer_decoder/add_2:z:0;transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/mul_2Mul?transformer_decoder/layer_normalization_2/moments/mean:output:0;transformer_decoder/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_decoder_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7transformer_decoder/layer_normalization_2/batchnorm/subSubJtransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_decoder/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
9transformer_decoder/layer_normalization_2/batchnorm/add_1AddV2=transformer_decoder/layer_normalization_2/batchnorm/mul_1:z:0;transformer_decoder/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/ReshapeReshape=transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2      ?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed/Reshape_2Reshape=transformer_decoder/layer_normalization_2/batchnorm/add_1:z:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMul#time_distributed/Reshape_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?h
dropout/dropout/ShapeShape#time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/ReshapeReshapedropout/dropout/Mul_1:z:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
"time_distributed_1/dense_1/SoftmaxSoftmax+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????'w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????2   ?  ?
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_1/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:?????????2?'s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
time_distributed_1/Reshape_2Reshapedropout/dropout/Mul_1:z:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????y
IdentityIdentity%time_distributed_1/Reshape_1:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'?
NoOpNoOp^embedding/embedding_lookup"^position_embedding/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp1^transformer_decoder/dense/BiasAdd/ReadVariableOp3^transformer_decoder/dense/Tensordot/ReadVariableOp3^transformer_decoder/dense_1/BiasAdd/ReadVariableOp5^transformer_decoder/dense_1/Tensordot/ReadVariableOpA^transformer_decoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpM^transformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_decoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention/query/add/ReadVariableOpL^transformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention/value/add/ReadVariableOpL^transformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpO^transformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_decoder/multi_head_attention_1/key/add/ReadVariableOpL^transformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_decoder/multi_head_attention_1/query/add/ReadVariableOpN^transformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_decoder/multi_head_attention_1/value/add/ReadVariableOpN^transformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp1^transformer_encoder/dense/BiasAdd/ReadVariableOp3^transformer_encoder/dense/Tensordot/ReadVariableOp3^transformer_encoder/dense_1/BiasAdd/ReadVariableOp5^transformer_encoder/dense_1/Tensordot/ReadVariableOpA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpM^transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_encoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/query/add/ReadVariableOpL^transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/value/add/ReadVariableOpL^transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2F
!position_embedding/ReadVariableOp!position_embedding/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp2d
0transformer_decoder/dense/BiasAdd/ReadVariableOp0transformer_decoder/dense/BiasAdd/ReadVariableOp2h
2transformer_decoder/dense/Tensordot/ReadVariableOp2transformer_decoder/dense/Tensordot/ReadVariableOp2h
2transformer_decoder/dense_1/BiasAdd/ReadVariableOp2transformer_decoder/dense_1/BiasAdd/ReadVariableOp2l
4transformer_decoder/dense_1/Tensordot/ReadVariableOp4transformer_decoder/dense_1/Tensordot/ReadVariableOp2?
@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp@transformer_decoder/layer_normalization/batchnorm/ReadVariableOp2?
Dtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_decoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Btransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_decoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Ftransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_decoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Btransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_decoder/layer_normalization_2/batchnorm/ReadVariableOp2?
Ftransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_decoder/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
Ltransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_decoder/multi_head_attention/attention_output/add/ReadVariableOp2?
Vtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_decoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
?transformer_decoder/multi_head_attention/key/add/ReadVariableOp?transformer_decoder/multi_head_attention/key/add/ReadVariableOp2?
Itransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_decoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention/query/add/ReadVariableOpAtransformer_decoder/multi_head_attention/query/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention/value/add/ReadVariableOpAtransformer_decoder/multi_head_attention/value/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Ntransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_decoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
Xtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_decoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_decoder/multi_head_attention_1/key/add/ReadVariableOpAtransformer_decoder/multi_head_attention_1/key/add/ReadVariableOp2?
Ktransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_decoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_decoder/multi_head_attention_1/query/add/ReadVariableOpCtransformer_decoder/multi_head_attention_1/query/add/ReadVariableOp2?
Mtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_decoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_decoder/multi_head_attention_1/value/add/ReadVariableOpCtransformer_decoder/multi_head_attention_1/value/add/ReadVariableOp2?
Mtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_decoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2d
0transformer_encoder/dense/BiasAdd/ReadVariableOp0transformer_encoder/dense/BiasAdd/ReadVariableOp2h
2transformer_encoder/dense/Tensordot/ReadVariableOp2transformer_encoder/dense/Tensordot/ReadVariableOp2h
2transformer_encoder/dense_1/BiasAdd/ReadVariableOp2transformer_encoder/dense_1/BiasAdd/ReadVariableOp2l
4transformer_encoder/dense_1/Tensordot/ReadVariableOp4transformer_encoder/dense_1/Tensordot/ReadVariableOp2?
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2?
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2?
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2?
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2?
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
?transformer_encoder/multi_head_attention/key/add/ReadVariableOp?transformer_encoder/multi_head_attention/key/add/ReadVariableOp2?
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpAtransformer_encoder/multi_head_attention/query/add/ReadVariableOp2?
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpAtransformer_encoder/multi_head_attention/value/add/ReadVariableOp2?
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_86249
input_1
unknown:
?'?
	unknown_0:	2? 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:?

	unknown_6:
 
	unknown_7:
?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?!

unknown_17:?


unknown_18:
!

unknown_19:?


unknown_20:
!

unknown_21:?


unknown_22:
!

unknown_23:
?

unknown_24:	?

unknown_25:	?

unknown_26:	?!

unknown_27:?


unknown_28:
!

unknown_29:?


unknown_30:
"

unknown_31:?
?

unknown_32:	
?"

unknown_33:
??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:	?

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:
??'

unknown_46:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86150t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
?
?
2__inference_position_embedding_layer_call_fn_88728

inputs
unknown:	2?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_85684t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:?????????2?: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_85816

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
'multi_head_attention/dropout_2/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_2/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2?f
addAddV2inputsdropout/Identity:output:0*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?o
dropout_1/IdentityIdentitydense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?

)__inference_embedding_layer_call_fn_88711

inputs
unknown:
?'?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_85657t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89697
decoder_sequence
encoder_sequenceW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:?
J
8multi_head_attention_1_query_add_readvariableop_resource:
W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_1_key_add_readvariableop_resource:
Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?K
8multi_head_attention_1_value_add_readvariableop_resource:	
?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_2_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpE
ShapeShapedecoder_sequence*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :p
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes
:2f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :v
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*
_output_shapes
:2q
GreaterEqualGreaterEqualstrided_slice_2:output:0range_1:output:0*
T0*
_output_shapes

:22V
CastCastGreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_4StridedSliceShape:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0strided_slice_3:output:0strided_slice_4:output:0*
N*
T0*
_output_shapes
:a
ReshapeReshapeCast:y:0Reshape/shape:output:0*
T0*"
_output_shapes
:22Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:e
TileTileReshape:output:0concat:output:0*
T0*+
_output_shapes
:?????????22?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsumdecoder_sequence=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22q
,multi_head_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
*multi_head_attention/dropout_3/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:05multi_head_attention/dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_3/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seedz
5multi_head_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
3multi_head_attention/dropout_3/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_3/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
+multi_head_attention/dropout_3/dropout/CastCast7multi_head_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_3/dropout/Mul_1Mul.multi_head_attention/dropout_3/dropout/Mul:z:0/multi_head_attention/dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_3/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMul-multi_head_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?t
dropout_1/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?r
addAddV2dropout_1/dropout/Mul_1:z:0decoder_sequence*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsumencoder_sequence?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsumencoder_sequenceAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22s
.multi_head_attention_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,multi_head_attention_1/dropout_4/dropout/MulMul2multi_head_attention_1/softmax_1/Softmax:softmax:07multi_head_attention_1/dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
.multi_head_attention_1/dropout_4/dropout/ShapeShape2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:?
Emulti_head_attention_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniform7multi_head_attention_1/dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seed*
seed2|
7multi_head_attention_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
5multi_head_attention_1/dropout_4/dropout/GreaterEqualGreaterEqualNmulti_head_attention_1/dropout_4/dropout/random_uniform/RandomUniform:output:0@multi_head_attention_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
-multi_head_attention_1/dropout_4/dropout/CastCast9multi_head_attention_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
.multi_head_attention_1/dropout_4/dropout/Mul_1Mul0multi_head_attention_1/dropout_4/dropout/Mul:z:01multi_head_attention_1/dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_4/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?t
dropout/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2dropout/dropout/Mul_1:z:0'layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
dense/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_2/dropout/MulMuldense_1/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?_
dropout_2/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_2AddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_2/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMean	add_2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_2/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_89786

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????2?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
M__inference_position_embedding_layer_call_and_return_conditional_losses_88749

inputs*
readvariableop_resource:	2?
identity??ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype0G
ConstConst*
_output_shapes
: *
dtype0*
value	B : I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : }
strided_slice_1/stackPackConst:output:0 strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ?
strided_slice_1/stack_1Packstrided_slice:output:0"strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :?
strided_slice_1/stack_2PackConst_1:output:0"strided_slice_1/stack_2/1:output:0*
N*
T0*
_output_shapes
:?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2?*

begin_mask*
end_mask{
BroadcastToBroadcastTostrided_slice_1:output:0Shape:output:0*
T0*,
_output_shapes
:?????????2?h
IdentityIdentityBroadcastTo:output:0^NoOp*
T0*,
_output_shapes
:?????????2?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:?????????2?: 2 
ReadVariableOpReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_87843

inputs
unknown:
?'?
	unknown_0:	2? 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:?

	unknown_6:
 
	unknown_7:
?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?!

unknown_17:?


unknown_18:
!

unknown_19:?


unknown_20:
!

unknown_21:?


unknown_22:
!

unknown_23:
?

unknown_24:	?

unknown_25:	?

unknown_26:	?!

unknown_27:?


unknown_28:
!

unknown_29:?


unknown_30:
"

unknown_31:?
?

unknown_32:	
?"

unknown_33:
??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:	?

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:
??'

unknown_46:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_87104t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_time_distributed_layer_call_and_return_conditional_losses_85512

inputs
dense_85502:
??
dense_85504:	?
identity??dense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_85502dense_85504*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_85501\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89826

inputs:
&dense_1_matmul_readvariableop_resource:
??'6
'dense_1_biasadd_readvariableop_resource:	?'
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??'*
dtype0?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?'*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????'g
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????'\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?'?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????'o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_86269

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????2?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
3__inference_transformer_decoder_layer_call_fn_89156
decoder_sequence
encoder_sequence
unknown:?

	unknown_0:
 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:
?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	? 
	unknown_9:?


unknown_10:
!

unknown_11:?


unknown_12:
"

unknown_13:?
?

unknown_14:	
?"

unknown_15:
??

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
??

unknown_20:	?

unknown_21:
??

unknown_22:	?

unknown_23:	?

unknown_24:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoder_sequenceencoder_sequenceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86074t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
??
?`
__inference__traced_save_90370
file_prefix3
/savev2_embedding_embeddings_read_readvariableop<
8savev2_position_embedding_embeddings_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopP
Lsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop_
[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableop]
Ysavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableopL
Hsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopK
Gsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopN
Jsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopM
Isavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableop?
;savev2_transformer_encoder_dense_kernel_read_readvariableop=
9savev2_transformer_encoder_dense_bias_read_readvariableopA
=savev2_transformer_encoder_dense_1_kernel_read_readvariableop?
;savev2_transformer_encoder_dense_1_bias_read_readvariableopT
Psavev2_transformer_decoder_multi_head_attention_query_kernel_read_readvariableopR
Nsavev2_transformer_decoder_multi_head_attention_query_bias_read_readvariableopR
Nsavev2_transformer_decoder_multi_head_attention_key_kernel_read_readvariableopP
Lsavev2_transformer_decoder_multi_head_attention_key_bias_read_readvariableopT
Psavev2_transformer_decoder_multi_head_attention_value_kernel_read_readvariableopR
Nsavev2_transformer_decoder_multi_head_attention_value_bias_read_readvariableop_
[savev2_transformer_decoder_multi_head_attention_attention_output_kernel_read_readvariableop]
Ysavev2_transformer_decoder_multi_head_attention_attention_output_bias_read_readvariableopL
Hsavev2_transformer_decoder_layer_normalization_gamma_read_readvariableopK
Gsavev2_transformer_decoder_layer_normalization_beta_read_readvariableopV
Rsavev2_transformer_decoder_multi_head_attention_1_query_kernel_read_readvariableopT
Psavev2_transformer_decoder_multi_head_attention_1_query_bias_read_readvariableopT
Psavev2_transformer_decoder_multi_head_attention_1_key_kernel_read_readvariableopR
Nsavev2_transformer_decoder_multi_head_attention_1_key_bias_read_readvariableopV
Rsavev2_transformer_decoder_multi_head_attention_1_value_kernel_read_readvariableopT
Psavev2_transformer_decoder_multi_head_attention_1_value_bias_read_readvariableopa
]savev2_transformer_decoder_multi_head_attention_1_attention_output_kernel_read_readvariableop_
[savev2_transformer_decoder_multi_head_attention_1_attention_output_bias_read_readvariableopN
Jsavev2_transformer_decoder_layer_normalization_1_gamma_read_readvariableopM
Isavev2_transformer_decoder_layer_normalization_1_beta_read_readvariableopN
Jsavev2_transformer_decoder_layer_normalization_2_gamma_read_readvariableopM
Isavev2_transformer_decoder_layer_normalization_2_beta_read_readvariableop?
;savev2_transformer_decoder_dense_kernel_read_readvariableop=
9savev2_transformer_decoder_dense_bias_read_readvariableopA
=savev2_transformer_decoder_dense_1_kernel_read_readvariableop?
;savev2_transformer_decoder_dense_1_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_1_kernel_read_readvariableop6
2savev2_time_distributed_1_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableopC
?savev2_adam_position_embedding_embeddings_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_query_bias_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_multi_head_attention_key_bias_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_value_bias_m_read_readvariableopf
bsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m_read_readvariableopd
`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_m_read_readvariableopS
Osavev2_adam_transformer_encoder_layer_normalization_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_encoder_layer_normalization_beta_m_read_readvariableopU
Qsavev2_adam_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopT
Psavev2_adam_transformer_encoder_layer_normalization_1_beta_m_read_readvariableopF
Bsavev2_adam_transformer_encoder_dense_kernel_m_read_readvariableopD
@savev2_adam_transformer_encoder_dense_bias_m_read_readvariableopH
Dsavev2_adam_transformer_encoder_dense_1_kernel_m_read_readvariableopF
Bsavev2_adam_transformer_encoder_dense_1_bias_m_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_query_kernel_m_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_query_bias_m_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_key_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_decoder_multi_head_attention_key_bias_m_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_value_kernel_m_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_value_bias_m_read_readvariableopf
bsavev2_adam_transformer_decoder_multi_head_attention_attention_output_kernel_m_read_readvariableopd
`savev2_adam_transformer_decoder_multi_head_attention_attention_output_bias_m_read_readvariableopS
Osavev2_adam_transformer_decoder_layer_normalization_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_decoder_layer_normalization_beta_m_read_readvariableop]
Ysavev2_adam_transformer_decoder_multi_head_attention_1_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_1_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_decoder_multi_head_attention_1_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_m_read_readvariableopU
Qsavev2_adam_transformer_decoder_layer_normalization_1_gamma_m_read_readvariableopT
Psavev2_adam_transformer_decoder_layer_normalization_1_beta_m_read_readvariableopU
Qsavev2_adam_transformer_decoder_layer_normalization_2_gamma_m_read_readvariableopT
Psavev2_adam_transformer_decoder_layer_normalization_2_beta_m_read_readvariableopF
Bsavev2_adam_transformer_decoder_dense_kernel_m_read_readvariableopD
@savev2_adam_transformer_decoder_dense_bias_m_read_readvariableopH
Dsavev2_adam_transformer_decoder_dense_1_kernel_m_read_readvariableopF
Bsavev2_adam_transformer_decoder_dense_1_bias_m_read_readvariableop=
9savev2_adam_time_distributed_kernel_m_read_readvariableop;
7savev2_adam_time_distributed_bias_m_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_1_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableopC
?savev2_adam_position_embedding_embeddings_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_query_bias_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_multi_head_attention_key_bias_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_value_bias_v_read_readvariableopf
bsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v_read_readvariableopd
`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_v_read_readvariableopS
Osavev2_adam_transformer_encoder_layer_normalization_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_encoder_layer_normalization_beta_v_read_readvariableopU
Qsavev2_adam_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopT
Psavev2_adam_transformer_encoder_layer_normalization_1_beta_v_read_readvariableopF
Bsavev2_adam_transformer_encoder_dense_kernel_v_read_readvariableopD
@savev2_adam_transformer_encoder_dense_bias_v_read_readvariableopH
Dsavev2_adam_transformer_encoder_dense_1_kernel_v_read_readvariableopF
Bsavev2_adam_transformer_encoder_dense_1_bias_v_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_query_kernel_v_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_query_bias_v_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_key_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_decoder_multi_head_attention_key_bias_v_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_value_kernel_v_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_value_bias_v_read_readvariableopf
bsavev2_adam_transformer_decoder_multi_head_attention_attention_output_kernel_v_read_readvariableopd
`savev2_adam_transformer_decoder_multi_head_attention_attention_output_bias_v_read_readvariableopS
Osavev2_adam_transformer_decoder_layer_normalization_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_decoder_layer_normalization_beta_v_read_readvariableop]
Ysavev2_adam_transformer_decoder_multi_head_attention_1_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_decoder_multi_head_attention_1_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_decoder_multi_head_attention_1_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_decoder_multi_head_attention_1_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_v_read_readvariableopU
Qsavev2_adam_transformer_decoder_layer_normalization_1_gamma_v_read_readvariableopT
Psavev2_adam_transformer_decoder_layer_normalization_1_beta_v_read_readvariableopU
Qsavev2_adam_transformer_decoder_layer_normalization_2_gamma_v_read_readvariableopT
Psavev2_adam_transformer_decoder_layer_normalization_2_beta_v_read_readvariableopF
Bsavev2_adam_transformer_decoder_dense_kernel_v_read_readvariableopD
@savev2_adam_transformer_decoder_dense_bias_v_read_readvariableopH
Dsavev2_adam_transformer_decoder_dense_1_kernel_v_read_readvariableopF
Bsavev2_adam_transformer_decoder_dense_1_bias_v_read_readvariableop=
9savev2_adam_time_distributed_kernel_v_read_readvariableop;
7savev2_adam_time_distributed_bias_v_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?H
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?G
value?GB?G?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/44/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/45/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/44/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/45/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?]
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop8savev2_position_embedding_embeddings_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopLsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableopYsavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableopHsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopGsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopJsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopIsavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableop;savev2_transformer_encoder_dense_kernel_read_readvariableop9savev2_transformer_encoder_dense_bias_read_readvariableop=savev2_transformer_encoder_dense_1_kernel_read_readvariableop;savev2_transformer_encoder_dense_1_bias_read_readvariableopPsavev2_transformer_decoder_multi_head_attention_query_kernel_read_readvariableopNsavev2_transformer_decoder_multi_head_attention_query_bias_read_readvariableopNsavev2_transformer_decoder_multi_head_attention_key_kernel_read_readvariableopLsavev2_transformer_decoder_multi_head_attention_key_bias_read_readvariableopPsavev2_transformer_decoder_multi_head_attention_value_kernel_read_readvariableopNsavev2_transformer_decoder_multi_head_attention_value_bias_read_readvariableop[savev2_transformer_decoder_multi_head_attention_attention_output_kernel_read_readvariableopYsavev2_transformer_decoder_multi_head_attention_attention_output_bias_read_readvariableopHsavev2_transformer_decoder_layer_normalization_gamma_read_readvariableopGsavev2_transformer_decoder_layer_normalization_beta_read_readvariableopRsavev2_transformer_decoder_multi_head_attention_1_query_kernel_read_readvariableopPsavev2_transformer_decoder_multi_head_attention_1_query_bias_read_readvariableopPsavev2_transformer_decoder_multi_head_attention_1_key_kernel_read_readvariableopNsavev2_transformer_decoder_multi_head_attention_1_key_bias_read_readvariableopRsavev2_transformer_decoder_multi_head_attention_1_value_kernel_read_readvariableopPsavev2_transformer_decoder_multi_head_attention_1_value_bias_read_readvariableop]savev2_transformer_decoder_multi_head_attention_1_attention_output_kernel_read_readvariableop[savev2_transformer_decoder_multi_head_attention_1_attention_output_bias_read_readvariableopJsavev2_transformer_decoder_layer_normalization_1_gamma_read_readvariableopIsavev2_transformer_decoder_layer_normalization_1_beta_read_readvariableopJsavev2_transformer_decoder_layer_normalization_2_gamma_read_readvariableopIsavev2_transformer_decoder_layer_normalization_2_beta_read_readvariableop;savev2_transformer_decoder_dense_kernel_read_readvariableop9savev2_transformer_decoder_dense_bias_read_readvariableop=savev2_transformer_decoder_dense_1_kernel_read_readvariableop;savev2_transformer_decoder_dense_1_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop?savev2_adam_position_embedding_embeddings_m_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_query_bias_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableopSsavev2_adam_transformer_encoder_multi_head_attention_key_bias_m_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_value_bias_m_read_readvariableopbsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m_read_readvariableop`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_m_read_readvariableopOsavev2_adam_transformer_encoder_layer_normalization_gamma_m_read_readvariableopNsavev2_adam_transformer_encoder_layer_normalization_beta_m_read_readvariableopQsavev2_adam_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopPsavev2_adam_transformer_encoder_layer_normalization_1_beta_m_read_readvariableopBsavev2_adam_transformer_encoder_dense_kernel_m_read_readvariableop@savev2_adam_transformer_encoder_dense_bias_m_read_readvariableopDsavev2_adam_transformer_encoder_dense_1_kernel_m_read_readvariableopBsavev2_adam_transformer_encoder_dense_1_bias_m_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_query_kernel_m_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_query_bias_m_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_key_kernel_m_read_readvariableopSsavev2_adam_transformer_decoder_multi_head_attention_key_bias_m_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_value_kernel_m_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_value_bias_m_read_readvariableopbsavev2_adam_transformer_decoder_multi_head_attention_attention_output_kernel_m_read_readvariableop`savev2_adam_transformer_decoder_multi_head_attention_attention_output_bias_m_read_readvariableopOsavev2_adam_transformer_decoder_layer_normalization_gamma_m_read_readvariableopNsavev2_adam_transformer_decoder_layer_normalization_beta_m_read_readvariableopYsavev2_adam_transformer_decoder_multi_head_attention_1_query_kernel_m_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_query_bias_m_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_key_kernel_m_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_1_key_bias_m_read_readvariableopYsavev2_adam_transformer_decoder_multi_head_attention_1_value_kernel_m_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_value_bias_m_read_readvariableopdsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_m_read_readvariableopQsavev2_adam_transformer_decoder_layer_normalization_1_gamma_m_read_readvariableopPsavev2_adam_transformer_decoder_layer_normalization_1_beta_m_read_readvariableopQsavev2_adam_transformer_decoder_layer_normalization_2_gamma_m_read_readvariableopPsavev2_adam_transformer_decoder_layer_normalization_2_beta_m_read_readvariableopBsavev2_adam_transformer_decoder_dense_kernel_m_read_readvariableop@savev2_adam_transformer_decoder_dense_bias_m_read_readvariableopDsavev2_adam_transformer_decoder_dense_1_kernel_m_read_readvariableopBsavev2_adam_transformer_decoder_dense_1_bias_m_read_readvariableop9savev2_adam_time_distributed_kernel_m_read_readvariableop7savev2_adam_time_distributed_bias_m_read_readvariableop;savev2_adam_time_distributed_1_kernel_m_read_readvariableop9savev2_adam_time_distributed_1_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop?savev2_adam_position_embedding_embeddings_v_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_query_bias_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableopSsavev2_adam_transformer_encoder_multi_head_attention_key_bias_v_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_value_bias_v_read_readvariableopbsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v_read_readvariableop`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_v_read_readvariableopOsavev2_adam_transformer_encoder_layer_normalization_gamma_v_read_readvariableopNsavev2_adam_transformer_encoder_layer_normalization_beta_v_read_readvariableopQsavev2_adam_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopPsavev2_adam_transformer_encoder_layer_normalization_1_beta_v_read_readvariableopBsavev2_adam_transformer_encoder_dense_kernel_v_read_readvariableop@savev2_adam_transformer_encoder_dense_bias_v_read_readvariableopDsavev2_adam_transformer_encoder_dense_1_kernel_v_read_readvariableopBsavev2_adam_transformer_encoder_dense_1_bias_v_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_query_kernel_v_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_query_bias_v_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_key_kernel_v_read_readvariableopSsavev2_adam_transformer_decoder_multi_head_attention_key_bias_v_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_value_kernel_v_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_value_bias_v_read_readvariableopbsavev2_adam_transformer_decoder_multi_head_attention_attention_output_kernel_v_read_readvariableop`savev2_adam_transformer_decoder_multi_head_attention_attention_output_bias_v_read_readvariableopOsavev2_adam_transformer_decoder_layer_normalization_gamma_v_read_readvariableopNsavev2_adam_transformer_decoder_layer_normalization_beta_v_read_readvariableopYsavev2_adam_transformer_decoder_multi_head_attention_1_query_kernel_v_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_query_bias_v_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_key_kernel_v_read_readvariableopUsavev2_adam_transformer_decoder_multi_head_attention_1_key_bias_v_read_readvariableopYsavev2_adam_transformer_decoder_multi_head_attention_1_value_kernel_v_read_readvariableopWsavev2_adam_transformer_decoder_multi_head_attention_1_value_bias_v_read_readvariableopdsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_v_read_readvariableopQsavev2_adam_transformer_decoder_layer_normalization_1_gamma_v_read_readvariableopPsavev2_adam_transformer_decoder_layer_normalization_1_beta_v_read_readvariableopQsavev2_adam_transformer_decoder_layer_normalization_2_gamma_v_read_readvariableopPsavev2_adam_transformer_decoder_layer_normalization_2_beta_v_read_readvariableopBsavev2_adam_transformer_decoder_dense_kernel_v_read_readvariableop@savev2_adam_transformer_decoder_dense_bias_v_read_readvariableopDsavev2_adam_transformer_decoder_dense_1_kernel_v_read_readvariableopBsavev2_adam_transformer_decoder_dense_1_bias_v_read_readvariableop9savev2_adam_time_distributed_kernel_v_read_readvariableop7savev2_adam_time_distributed_bias_v_read_readvariableop;savev2_adam_time_distributed_1_kernel_v_read_readvariableop9savev2_adam_time_distributed_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?'?:	2?:?
:
:?
:
:?
:
:
?:?:?:?:?:?:
??:?:
??:?:?
:
:?
:
:?
:
:
?:?:?:?:?
:
:?
:
:?
?:	
?:
??:?:?:?:?:?:
??:?:
??:?:
??:?:
??':?': : : : : : : : : :
?'?:	2?:?
:
:?
:
:?
:
:
?:?:?:?:?:?:
??:?:
??:?:?
:
:?
:
:?
:
:
?:?:?:?:?
:
:?
:
:?
?:	
?:
??:?:?:?:?:?:
??:?:
??:?:
??:?:
??':?':
?'?:	2?:?
:
:?
:
:?
:
:
?:?:?:?:?:?:
??:?:
??:?:?
:
:?
:
:?
:
:
?:?:?:?:?
:
:?
:
:?
?:	
?:
??:?:?:?:?:?:
??:?:
??:?:
??:?:
??':?': 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?'?:%!

_output_shapes
:	2?:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)	%
#
_output_shapes
:
?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:
?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:)%
#
_output_shapes
:?
:$ 

_output_shapes

:
:)%
#
_output_shapes
:?
:$  

_output_shapes

:
:*!&
$
_output_shapes
:?
?:%"!

_output_shapes
:	
?:*#&
$
_output_shapes
:
??:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:&)"
 
_output_shapes
:
??:!*

_output_shapes	
:?:&+"
 
_output_shapes
:
??:!,

_output_shapes	
:?:&-"
 
_output_shapes
:
??:!.

_output_shapes	
:?:&/"
 
_output_shapes
:
??':!0

_output_shapes	
:?':1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: :&:"
 
_output_shapes
:
?'?:%;!

_output_shapes
:	2?:)<%
#
_output_shapes
:?
:$= 

_output_shapes

:
:)>%
#
_output_shapes
:?
:$? 

_output_shapes

:
:)@%
#
_output_shapes
:?
:$A 

_output_shapes

:
:)B%
#
_output_shapes
:
?:!C

_output_shapes	
:?:!D

_output_shapes	
:?:!E

_output_shapes	
:?:!F

_output_shapes	
:?:!G

_output_shapes	
:?:&H"
 
_output_shapes
:
??:!I

_output_shapes	
:?:&J"
 
_output_shapes
:
??:!K

_output_shapes	
:?:)L%
#
_output_shapes
:?
:$M 

_output_shapes

:
:)N%
#
_output_shapes
:?
:$O 

_output_shapes

:
:)P%
#
_output_shapes
:?
:$Q 

_output_shapes

:
:)R%
#
_output_shapes
:
?:!S

_output_shapes	
:?:!T

_output_shapes	
:?:!U

_output_shapes	
:?:)V%
#
_output_shapes
:?
:$W 

_output_shapes

:
:)X%
#
_output_shapes
:?
:$Y 

_output_shapes

:
:*Z&
$
_output_shapes
:?
?:%[!

_output_shapes
:	
?:*\&
$
_output_shapes
:
??:!]

_output_shapes	
:?:!^

_output_shapes	
:?:!_

_output_shapes	
:?:!`

_output_shapes	
:?:!a

_output_shapes	
:?:&b"
 
_output_shapes
:
??:!c

_output_shapes	
:?:&d"
 
_output_shapes
:
??:!e

_output_shapes	
:?:&f"
 
_output_shapes
:
??:!g

_output_shapes	
:?:&h"
 
_output_shapes
:
??':!i

_output_shapes	
:?':&j"
 
_output_shapes
:
?'?:%k!

_output_shapes
:	2?:)l%
#
_output_shapes
:?
:$m 

_output_shapes

:
:)n%
#
_output_shapes
:?
:$o 

_output_shapes

:
:)p%
#
_output_shapes
:?
:$q 

_output_shapes

:
:)r%
#
_output_shapes
:
?:!s

_output_shapes	
:?:!t

_output_shapes	
:?:!u

_output_shapes	
:?:!v

_output_shapes	
:?:!w

_output_shapes	
:?:&x"
 
_output_shapes
:
??:!y

_output_shapes	
:?:&z"
 
_output_shapes
:
??:!{

_output_shapes	
:?:)|%
#
_output_shapes
:?
:$} 

_output_shapes

:
:)~%
#
_output_shapes
:?
:$ 

_output_shapes

:
:*?%
#
_output_shapes
:?
:%? 

_output_shapes

:
:*?%
#
_output_shapes
:
?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:*?%
#
_output_shapes
:?
:%? 

_output_shapes

:
:*?%
#
_output_shapes
:?
:%? 

_output_shapes

:
:+?&
$
_output_shapes
:?
?:&?!

_output_shapes
:	
?:+?&
$
_output_shapes
:
??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??':"?

_output_shapes	
:?':?

_output_shapes
: 
?
?
%__inference_model_layer_call_fn_87304
input_1
unknown:
?'?
	unknown_0:	2? 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:?

	unknown_6:
 
	unknown_7:
?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?!

unknown_17:?


unknown_18:
!

unknown_19:?


unknown_20:
!

unknown_21:?


unknown_22:
!

unknown_23:
?

unknown_24:	?

unknown_25:	?

unknown_26:	?!

unknown_27:?


unknown_28:
!

unknown_29:?


unknown_30:
"

unknown_31:?
?

unknown_32:	
?"

unknown_33:
??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:	?

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:
??'

unknown_46:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_87104t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????2
!
_user_specified_name	input_1
??
?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86074
decoder_sequence
encoder_sequenceW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:?
J
8multi_head_attention_1_query_add_readvariableop_resource:
W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_1_key_add_readvariableop_resource:
Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:?
?K
8multi_head_attention_1_value_add_readvariableop_resource:	
?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:
??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_2_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpE
ShapeShapedecoder_sequence*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :p
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes
:2f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:2*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :v
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*
_output_shapes
:2q
GreaterEqualGreaterEqualstrided_slice_2:output:0range_1:output:0*
T0*
_output_shapes

:22V
CastCastGreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:22_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_4StridedSliceShape:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0strided_slice_3:output:0strided_slice_4:output:0*
N*
T0*
_output_shapes
:a
ReshapeReshapeCast:y:0Reshape/shape:output:0*
T0*"
_output_shapes
:22Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:e
TileTileReshape:output:0concat:output:0*
T0*+
_output_shapes
:?????????22?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsumdecoder_sequence=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsumdecoder_sequence?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????22?
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????22g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*/
_output_shapes
:?????????22?
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*/
_output_shapes
:?????????
22?
'multi_head_attention/dropout_3/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_3/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2?r
addAddV2dropout_1/Identity:output:0decoder_sequence*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsumencoder_sequence?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:?
?*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsumencoder_sequenceAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	
?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
?a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
)multi_head_attention_1/dropout_4/IdentityIdentity2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_4/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:?????????2
?*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:
??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2dropout/Identity:output:0'layer_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
dense/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?o
dropout_2/IdentityIdentitydense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
add_2AddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_2/Identity:output:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMean	add_2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_2/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
?

?
@__inference_dense_layer_call_and_return_conditional_losses_89868

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_86836

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22q
,multi_head_attention/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
*multi_head_attention/dropout_2/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:05multi_head_attention/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_2/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention/dropout_2/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
22*
dtype0*

seedz
5multi_head_attention/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
3multi_head_attention/dropout_2/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_2/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
22?
+multi_head_attention/dropout_2/dropout/CastCast7multi_head_attention/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
22?
,multi_head_attention/dropout_2/dropout/Mul_1Mul.multi_head_attention/dropout_2/dropout/Mul:z:0/multi_head_attention/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_2/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2?f
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMuldense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????2?_
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????2?*
dtype0*

seed*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????2??
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????2??
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
2__inference_time_distributed_1_layer_call_fn_89804

inputs
unknown:
??'
	unknown_0:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85633}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
??
!__inference__traced_restore_90839
file_prefix9
%assignvariableop_embedding_embeddings:
?'?C
0assignvariableop_1_position_embedding_embeddings:	2?_
Hassignvariableop_2_transformer_encoder_multi_head_attention_query_kernel:?
X
Fassignvariableop_3_transformer_encoder_multi_head_attention_query_bias:
]
Fassignvariableop_4_transformer_encoder_multi_head_attention_key_kernel:?
V
Dassignvariableop_5_transformer_encoder_multi_head_attention_key_bias:
_
Hassignvariableop_6_transformer_encoder_multi_head_attention_value_kernel:?
X
Fassignvariableop_7_transformer_encoder_multi_head_attention_value_bias:
j
Sassignvariableop_8_transformer_encoder_multi_head_attention_attention_output_kernel:
?`
Qassignvariableop_9_transformer_encoder_multi_head_attention_attention_output_bias:	?P
Aassignvariableop_10_transformer_encoder_layer_normalization_gamma:	?O
@assignvariableop_11_transformer_encoder_layer_normalization_beta:	?R
Cassignvariableop_12_transformer_encoder_layer_normalization_1_gamma:	?Q
Bassignvariableop_13_transformer_encoder_layer_normalization_1_beta:	?H
4assignvariableop_14_transformer_encoder_dense_kernel:
??A
2assignvariableop_15_transformer_encoder_dense_bias:	?J
6assignvariableop_16_transformer_encoder_dense_1_kernel:
??C
4assignvariableop_17_transformer_encoder_dense_1_bias:	?`
Iassignvariableop_18_transformer_decoder_multi_head_attention_query_kernel:?
Y
Gassignvariableop_19_transformer_decoder_multi_head_attention_query_bias:
^
Gassignvariableop_20_transformer_decoder_multi_head_attention_key_kernel:?
W
Eassignvariableop_21_transformer_decoder_multi_head_attention_key_bias:
`
Iassignvariableop_22_transformer_decoder_multi_head_attention_value_kernel:?
Y
Gassignvariableop_23_transformer_decoder_multi_head_attention_value_bias:
k
Tassignvariableop_24_transformer_decoder_multi_head_attention_attention_output_kernel:
?a
Rassignvariableop_25_transformer_decoder_multi_head_attention_attention_output_bias:	?P
Aassignvariableop_26_transformer_decoder_layer_normalization_gamma:	?O
@assignvariableop_27_transformer_decoder_layer_normalization_beta:	?b
Kassignvariableop_28_transformer_decoder_multi_head_attention_1_query_kernel:?
[
Iassignvariableop_29_transformer_decoder_multi_head_attention_1_query_bias:
`
Iassignvariableop_30_transformer_decoder_multi_head_attention_1_key_kernel:?
Y
Gassignvariableop_31_transformer_decoder_multi_head_attention_1_key_bias:
c
Kassignvariableop_32_transformer_decoder_multi_head_attention_1_value_kernel:?
?\
Iassignvariableop_33_transformer_decoder_multi_head_attention_1_value_bias:	
?n
Vassignvariableop_34_transformer_decoder_multi_head_attention_1_attention_output_kernel:
??c
Tassignvariableop_35_transformer_decoder_multi_head_attention_1_attention_output_bias:	?R
Cassignvariableop_36_transformer_decoder_layer_normalization_1_gamma:	?Q
Bassignvariableop_37_transformer_decoder_layer_normalization_1_beta:	?R
Cassignvariableop_38_transformer_decoder_layer_normalization_2_gamma:	?Q
Bassignvariableop_39_transformer_decoder_layer_normalization_2_beta:	?H
4assignvariableop_40_transformer_decoder_dense_kernel:
??A
2assignvariableop_41_transformer_decoder_dense_bias:	?J
6assignvariableop_42_transformer_decoder_dense_1_kernel:
??C
4assignvariableop_43_transformer_decoder_dense_1_bias:	??
+assignvariableop_44_time_distributed_kernel:
??8
)assignvariableop_45_time_distributed_bias:	?A
-assignvariableop_46_time_distributed_1_kernel:
??':
+assignvariableop_47_time_distributed_1_bias:	?'$
assignvariableop_48_beta_1: $
assignvariableop_49_beta_2: #
assignvariableop_50_decay: +
!assignvariableop_51_learning_rate: '
assignvariableop_52_adam_iter:	 %
assignvariableop_53_total_1: %
assignvariableop_54_count_1: #
assignvariableop_55_total: #
assignvariableop_56_count: C
/assignvariableop_57_adam_embedding_embeddings_m:
?'?K
8assignvariableop_58_adam_position_embedding_embeddings_m:	2?g
Passignvariableop_59_adam_transformer_encoder_multi_head_attention_query_kernel_m:?
`
Nassignvariableop_60_adam_transformer_encoder_multi_head_attention_query_bias_m:
e
Nassignvariableop_61_adam_transformer_encoder_multi_head_attention_key_kernel_m:?
^
Lassignvariableop_62_adam_transformer_encoder_multi_head_attention_key_bias_m:
g
Passignvariableop_63_adam_transformer_encoder_multi_head_attention_value_kernel_m:?
`
Nassignvariableop_64_adam_transformer_encoder_multi_head_attention_value_bias_m:
r
[assignvariableop_65_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m:
?h
Yassignvariableop_66_adam_transformer_encoder_multi_head_attention_attention_output_bias_m:	?W
Hassignvariableop_67_adam_transformer_encoder_layer_normalization_gamma_m:	?V
Gassignvariableop_68_adam_transformer_encoder_layer_normalization_beta_m:	?Y
Jassignvariableop_69_adam_transformer_encoder_layer_normalization_1_gamma_m:	?X
Iassignvariableop_70_adam_transformer_encoder_layer_normalization_1_beta_m:	?O
;assignvariableop_71_adam_transformer_encoder_dense_kernel_m:
??H
9assignvariableop_72_adam_transformer_encoder_dense_bias_m:	?Q
=assignvariableop_73_adam_transformer_encoder_dense_1_kernel_m:
??J
;assignvariableop_74_adam_transformer_encoder_dense_1_bias_m:	?g
Passignvariableop_75_adam_transformer_decoder_multi_head_attention_query_kernel_m:?
`
Nassignvariableop_76_adam_transformer_decoder_multi_head_attention_query_bias_m:
e
Nassignvariableop_77_adam_transformer_decoder_multi_head_attention_key_kernel_m:?
^
Lassignvariableop_78_adam_transformer_decoder_multi_head_attention_key_bias_m:
g
Passignvariableop_79_adam_transformer_decoder_multi_head_attention_value_kernel_m:?
`
Nassignvariableop_80_adam_transformer_decoder_multi_head_attention_value_bias_m:
r
[assignvariableop_81_adam_transformer_decoder_multi_head_attention_attention_output_kernel_m:
?h
Yassignvariableop_82_adam_transformer_decoder_multi_head_attention_attention_output_bias_m:	?W
Hassignvariableop_83_adam_transformer_decoder_layer_normalization_gamma_m:	?V
Gassignvariableop_84_adam_transformer_decoder_layer_normalization_beta_m:	?i
Rassignvariableop_85_adam_transformer_decoder_multi_head_attention_1_query_kernel_m:?
b
Passignvariableop_86_adam_transformer_decoder_multi_head_attention_1_query_bias_m:
g
Passignvariableop_87_adam_transformer_decoder_multi_head_attention_1_key_kernel_m:?
`
Nassignvariableop_88_adam_transformer_decoder_multi_head_attention_1_key_bias_m:
j
Rassignvariableop_89_adam_transformer_decoder_multi_head_attention_1_value_kernel_m:?
?c
Passignvariableop_90_adam_transformer_decoder_multi_head_attention_1_value_bias_m:	
?u
]assignvariableop_91_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_m:
??j
[assignvariableop_92_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_m:	?Y
Jassignvariableop_93_adam_transformer_decoder_layer_normalization_1_gamma_m:	?X
Iassignvariableop_94_adam_transformer_decoder_layer_normalization_1_beta_m:	?Y
Jassignvariableop_95_adam_transformer_decoder_layer_normalization_2_gamma_m:	?X
Iassignvariableop_96_adam_transformer_decoder_layer_normalization_2_beta_m:	?O
;assignvariableop_97_adam_transformer_decoder_dense_kernel_m:
??H
9assignvariableop_98_adam_transformer_decoder_dense_bias_m:	?Q
=assignvariableop_99_adam_transformer_decoder_dense_1_kernel_m:
??K
<assignvariableop_100_adam_transformer_decoder_dense_1_bias_m:	?G
3assignvariableop_101_adam_time_distributed_kernel_m:
??@
1assignvariableop_102_adam_time_distributed_bias_m:	?I
5assignvariableop_103_adam_time_distributed_1_kernel_m:
??'B
3assignvariableop_104_adam_time_distributed_1_bias_m:	?'D
0assignvariableop_105_adam_embedding_embeddings_v:
?'?L
9assignvariableop_106_adam_position_embedding_embeddings_v:	2?h
Qassignvariableop_107_adam_transformer_encoder_multi_head_attention_query_kernel_v:?
a
Oassignvariableop_108_adam_transformer_encoder_multi_head_attention_query_bias_v:
f
Oassignvariableop_109_adam_transformer_encoder_multi_head_attention_key_kernel_v:?
_
Massignvariableop_110_adam_transformer_encoder_multi_head_attention_key_bias_v:
h
Qassignvariableop_111_adam_transformer_encoder_multi_head_attention_value_kernel_v:?
a
Oassignvariableop_112_adam_transformer_encoder_multi_head_attention_value_bias_v:
s
\assignvariableop_113_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v:
?i
Zassignvariableop_114_adam_transformer_encoder_multi_head_attention_attention_output_bias_v:	?X
Iassignvariableop_115_adam_transformer_encoder_layer_normalization_gamma_v:	?W
Hassignvariableop_116_adam_transformer_encoder_layer_normalization_beta_v:	?Z
Kassignvariableop_117_adam_transformer_encoder_layer_normalization_1_gamma_v:	?Y
Jassignvariableop_118_adam_transformer_encoder_layer_normalization_1_beta_v:	?P
<assignvariableop_119_adam_transformer_encoder_dense_kernel_v:
??I
:assignvariableop_120_adam_transformer_encoder_dense_bias_v:	?R
>assignvariableop_121_adam_transformer_encoder_dense_1_kernel_v:
??K
<assignvariableop_122_adam_transformer_encoder_dense_1_bias_v:	?h
Qassignvariableop_123_adam_transformer_decoder_multi_head_attention_query_kernel_v:?
a
Oassignvariableop_124_adam_transformer_decoder_multi_head_attention_query_bias_v:
f
Oassignvariableop_125_adam_transformer_decoder_multi_head_attention_key_kernel_v:?
_
Massignvariableop_126_adam_transformer_decoder_multi_head_attention_key_bias_v:
h
Qassignvariableop_127_adam_transformer_decoder_multi_head_attention_value_kernel_v:?
a
Oassignvariableop_128_adam_transformer_decoder_multi_head_attention_value_bias_v:
s
\assignvariableop_129_adam_transformer_decoder_multi_head_attention_attention_output_kernel_v:
?i
Zassignvariableop_130_adam_transformer_decoder_multi_head_attention_attention_output_bias_v:	?X
Iassignvariableop_131_adam_transformer_decoder_layer_normalization_gamma_v:	?W
Hassignvariableop_132_adam_transformer_decoder_layer_normalization_beta_v:	?j
Sassignvariableop_133_adam_transformer_decoder_multi_head_attention_1_query_kernel_v:?
c
Qassignvariableop_134_adam_transformer_decoder_multi_head_attention_1_query_bias_v:
h
Qassignvariableop_135_adam_transformer_decoder_multi_head_attention_1_key_kernel_v:?
a
Oassignvariableop_136_adam_transformer_decoder_multi_head_attention_1_key_bias_v:
k
Sassignvariableop_137_adam_transformer_decoder_multi_head_attention_1_value_kernel_v:?
?d
Qassignvariableop_138_adam_transformer_decoder_multi_head_attention_1_value_bias_v:	
?v
^assignvariableop_139_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_v:
??k
\assignvariableop_140_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_v:	?Z
Kassignvariableop_141_adam_transformer_decoder_layer_normalization_1_gamma_v:	?Y
Jassignvariableop_142_adam_transformer_decoder_layer_normalization_1_beta_v:	?Z
Kassignvariableop_143_adam_transformer_decoder_layer_normalization_2_gamma_v:	?Y
Jassignvariableop_144_adam_transformer_decoder_layer_normalization_2_beta_v:	?P
<assignvariableop_145_adam_transformer_decoder_dense_kernel_v:
??I
:assignvariableop_146_adam_transformer_decoder_dense_bias_v:	?R
>assignvariableop_147_adam_transformer_decoder_dense_1_kernel_v:
??K
<assignvariableop_148_adam_transformer_decoder_dense_1_bias_v:	?G
3assignvariableop_149_adam_time_distributed_kernel_v:
??@
1assignvariableop_150_adam_time_distributed_bias_v:	?I
5assignvariableop_151_adam_time_distributed_1_kernel_v:
??'B
3assignvariableop_152_adam_time_distributed_1_bias_v:	?'
identity_154??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_151?AssignVariableOp_152?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?H
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?G
value?GB?G?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/44/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/45/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/40/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/41/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/44/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/45/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/46/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/47/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp0assignvariableop_1_position_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpHassignvariableop_2_transformer_encoder_multi_head_attention_query_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpFassignvariableop_3_transformer_encoder_multi_head_attention_query_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpFassignvariableop_4_transformer_encoder_multi_head_attention_key_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpDassignvariableop_5_transformer_encoder_multi_head_attention_key_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpHassignvariableop_6_transformer_encoder_multi_head_attention_value_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpFassignvariableop_7_transformer_encoder_multi_head_attention_value_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpSassignvariableop_8_transformer_encoder_multi_head_attention_attention_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpQassignvariableop_9_transformer_encoder_multi_head_attention_attention_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpAassignvariableop_10_transformer_encoder_layer_normalization_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp@assignvariableop_11_transformer_encoder_layer_normalization_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpCassignvariableop_12_transformer_encoder_layer_normalization_1_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpBassignvariableop_13_transformer_encoder_layer_normalization_1_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_transformer_encoder_dense_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_transformer_encoder_dense_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_transformer_encoder_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp4assignvariableop_17_transformer_encoder_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpIassignvariableop_18_transformer_decoder_multi_head_attention_query_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpGassignvariableop_19_transformer_decoder_multi_head_attention_query_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpGassignvariableop_20_transformer_decoder_multi_head_attention_key_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpEassignvariableop_21_transformer_decoder_multi_head_attention_key_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpIassignvariableop_22_transformer_decoder_multi_head_attention_value_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpGassignvariableop_23_transformer_decoder_multi_head_attention_value_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpTassignvariableop_24_transformer_decoder_multi_head_attention_attention_output_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpRassignvariableop_25_transformer_decoder_multi_head_attention_attention_output_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpAassignvariableop_26_transformer_decoder_layer_normalization_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_transformer_decoder_layer_normalization_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpKassignvariableop_28_transformer_decoder_multi_head_attention_1_query_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpIassignvariableop_29_transformer_decoder_multi_head_attention_1_query_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpIassignvariableop_30_transformer_decoder_multi_head_attention_1_key_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpGassignvariableop_31_transformer_decoder_multi_head_attention_1_key_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpKassignvariableop_32_transformer_decoder_multi_head_attention_1_value_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpIassignvariableop_33_transformer_decoder_multi_head_attention_1_value_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpVassignvariableop_34_transformer_decoder_multi_head_attention_1_attention_output_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpTassignvariableop_35_transformer_decoder_multi_head_attention_1_attention_output_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpCassignvariableop_36_transformer_decoder_layer_normalization_1_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpBassignvariableop_37_transformer_decoder_layer_normalization_1_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpCassignvariableop_38_transformer_decoder_layer_normalization_2_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpBassignvariableop_39_transformer_decoder_layer_normalization_2_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp4assignvariableop_40_transformer_decoder_dense_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp2assignvariableop_41_transformer_decoder_dense_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp6assignvariableop_42_transformer_decoder_dense_1_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp4assignvariableop_43_transformer_decoder_dense_1_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp+assignvariableop_44_time_distributed_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_time_distributed_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp-assignvariableop_46_time_distributed_1_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_time_distributed_1_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpassignvariableop_48_beta_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpassignvariableop_49_beta_2Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpassignvariableop_50_decayIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp!assignvariableop_51_learning_rateIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_iterIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_1Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_1Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpassignvariableop_55_totalIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpassignvariableop_56_countIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp/assignvariableop_57_adam_embedding_embeddings_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp8assignvariableop_58_adam_position_embedding_embeddings_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOpPassignvariableop_59_adam_transformer_encoder_multi_head_attention_query_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOpNassignvariableop_60_adam_transformer_encoder_multi_head_attention_query_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOpNassignvariableop_61_adam_transformer_encoder_multi_head_attention_key_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpLassignvariableop_62_adam_transformer_encoder_multi_head_attention_key_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpPassignvariableop_63_adam_transformer_encoder_multi_head_attention_value_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpNassignvariableop_64_adam_transformer_encoder_multi_head_attention_value_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp[assignvariableop_65_adam_transformer_encoder_multi_head_attention_attention_output_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpYassignvariableop_66_adam_transformer_encoder_multi_head_attention_attention_output_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOpHassignvariableop_67_adam_transformer_encoder_layer_normalization_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpGassignvariableop_68_adam_transformer_encoder_layer_normalization_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpJassignvariableop_69_adam_transformer_encoder_layer_normalization_1_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpIassignvariableop_70_adam_transformer_encoder_layer_normalization_1_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp;assignvariableop_71_adam_transformer_encoder_dense_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp9assignvariableop_72_adam_transformer_encoder_dense_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp=assignvariableop_73_adam_transformer_encoder_dense_1_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp;assignvariableop_74_adam_transformer_encoder_dense_1_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOpPassignvariableop_75_adam_transformer_decoder_multi_head_attention_query_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOpNassignvariableop_76_adam_transformer_decoder_multi_head_attention_query_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOpNassignvariableop_77_adam_transformer_decoder_multi_head_attention_key_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpLassignvariableop_78_adam_transformer_decoder_multi_head_attention_key_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOpPassignvariableop_79_adam_transformer_decoder_multi_head_attention_value_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOpNassignvariableop_80_adam_transformer_decoder_multi_head_attention_value_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp[assignvariableop_81_adam_transformer_decoder_multi_head_attention_attention_output_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOpYassignvariableop_82_adam_transformer_decoder_multi_head_attention_attention_output_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOpHassignvariableop_83_adam_transformer_decoder_layer_normalization_gamma_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOpGassignvariableop_84_adam_transformer_decoder_layer_normalization_beta_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOpRassignvariableop_85_adam_transformer_decoder_multi_head_attention_1_query_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOpPassignvariableop_86_adam_transformer_decoder_multi_head_attention_1_query_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOpPassignvariableop_87_adam_transformer_decoder_multi_head_attention_1_key_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOpNassignvariableop_88_adam_transformer_decoder_multi_head_attention_1_key_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOpRassignvariableop_89_adam_transformer_decoder_multi_head_attention_1_value_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOpPassignvariableop_90_adam_transformer_decoder_multi_head_attention_1_value_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp]assignvariableop_91_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp[assignvariableop_92_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOpJassignvariableop_93_adam_transformer_decoder_layer_normalization_1_gamma_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOpIassignvariableop_94_adam_transformer_decoder_layer_normalization_1_beta_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOpJassignvariableop_95_adam_transformer_decoder_layer_normalization_2_gamma_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOpIassignvariableop_96_adam_transformer_decoder_layer_normalization_2_beta_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp;assignvariableop_97_adam_transformer_decoder_dense_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp9assignvariableop_98_adam_transformer_decoder_dense_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp=assignvariableop_99_adam_transformer_decoder_dense_1_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp<assignvariableop_100_adam_transformer_decoder_dense_1_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp3assignvariableop_101_adam_time_distributed_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp1assignvariableop_102_adam_time_distributed_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp5assignvariableop_103_adam_time_distributed_1_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp3assignvariableop_104_adam_time_distributed_1_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOp0assignvariableop_105_adam_embedding_embeddings_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOp9assignvariableop_106_adam_position_embedding_embeddings_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOpQassignvariableop_107_adam_transformer_encoder_multi_head_attention_query_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOpOassignvariableop_108_adam_transformer_encoder_multi_head_attention_query_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOpOassignvariableop_109_adam_transformer_encoder_multi_head_attention_key_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOpMassignvariableop_110_adam_transformer_encoder_multi_head_attention_key_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOpQassignvariableop_111_adam_transformer_encoder_multi_head_attention_value_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOpOassignvariableop_112_adam_transformer_encoder_multi_head_attention_value_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp\assignvariableop_113_adam_transformer_encoder_multi_head_attention_attention_output_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOpZassignvariableop_114_adam_transformer_encoder_multi_head_attention_attention_output_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOpIassignvariableop_115_adam_transformer_encoder_layer_normalization_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOpHassignvariableop_116_adam_transformer_encoder_layer_normalization_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOpKassignvariableop_117_adam_transformer_encoder_layer_normalization_1_gamma_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOpJassignvariableop_118_adam_transformer_encoder_layer_normalization_1_beta_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_119AssignVariableOp<assignvariableop_119_adam_transformer_encoder_dense_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_120AssignVariableOp:assignvariableop_120_adam_transformer_encoder_dense_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_121AssignVariableOp>assignvariableop_121_adam_transformer_encoder_dense_1_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_122AssignVariableOp<assignvariableop_122_adam_transformer_encoder_dense_1_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_123AssignVariableOpQassignvariableop_123_adam_transformer_decoder_multi_head_attention_query_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_124AssignVariableOpOassignvariableop_124_adam_transformer_decoder_multi_head_attention_query_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_125AssignVariableOpOassignvariableop_125_adam_transformer_decoder_multi_head_attention_key_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_126AssignVariableOpMassignvariableop_126_adam_transformer_decoder_multi_head_attention_key_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_127AssignVariableOpQassignvariableop_127_adam_transformer_decoder_multi_head_attention_value_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_128AssignVariableOpOassignvariableop_128_adam_transformer_decoder_multi_head_attention_value_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_129AssignVariableOp\assignvariableop_129_adam_transformer_decoder_multi_head_attention_attention_output_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_130AssignVariableOpZassignvariableop_130_adam_transformer_decoder_multi_head_attention_attention_output_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_131AssignVariableOpIassignvariableop_131_adam_transformer_decoder_layer_normalization_gamma_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_132AssignVariableOpHassignvariableop_132_adam_transformer_decoder_layer_normalization_beta_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_133AssignVariableOpSassignvariableop_133_adam_transformer_decoder_multi_head_attention_1_query_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_134AssignVariableOpQassignvariableop_134_adam_transformer_decoder_multi_head_attention_1_query_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_135AssignVariableOpQassignvariableop_135_adam_transformer_decoder_multi_head_attention_1_key_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_136AssignVariableOpOassignvariableop_136_adam_transformer_decoder_multi_head_attention_1_key_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_137AssignVariableOpSassignvariableop_137_adam_transformer_decoder_multi_head_attention_1_value_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_138AssignVariableOpQassignvariableop_138_adam_transformer_decoder_multi_head_attention_1_value_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_139AssignVariableOp^assignvariableop_139_adam_transformer_decoder_multi_head_attention_1_attention_output_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_140AssignVariableOp\assignvariableop_140_adam_transformer_decoder_multi_head_attention_1_attention_output_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_141AssignVariableOpKassignvariableop_141_adam_transformer_decoder_layer_normalization_1_gamma_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_142AssignVariableOpJassignvariableop_142_adam_transformer_decoder_layer_normalization_1_beta_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_143AssignVariableOpKassignvariableop_143_adam_transformer_decoder_layer_normalization_2_gamma_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_144AssignVariableOpJassignvariableop_144_adam_transformer_decoder_layer_normalization_2_beta_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_145AssignVariableOp<assignvariableop_145_adam_transformer_decoder_dense_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_146AssignVariableOp:assignvariableop_146_adam_transformer_decoder_dense_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_147AssignVariableOp>assignvariableop_147_adam_transformer_decoder_dense_1_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_148AssignVariableOp<assignvariableop_148_adam_transformer_decoder_dense_1_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_149AssignVariableOp3assignvariableop_149_adam_time_distributed_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_150AssignVariableOp1assignvariableop_150_adam_time_distributed_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_151AssignVariableOp5assignvariableop_151_adam_time_distributed_1_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_152AssignVariableOp3assignvariableop_152_adam_time_distributed_1_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_153Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_154IdentityIdentity_153:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_154Identity_154:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_88950

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_query_add_readvariableop_resource:
U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:?
F
4multi_head_attention_key_add_readvariableop_resource:
W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:?
H
6multi_head_attention_value_add_readvariableop_resource:
b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:
?P
Amulti_head_attention_attention_output_add_readvariableop_resource:	?H
9layer_normalization_batchnorm_mul_readvariableop_resource:	?D
5layer_normalization_batchnorm_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	?F
7layer_normalization_1_batchnorm_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
?
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:?
*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????2
*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:
*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:?????????2
?
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????
22*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????
22?
'multi_head_attention/dropout_2/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????
22?
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_2/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????2
*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:
?*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????2?*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:?????????2?f
addAddV2inputsdropout/Identity:output:0*
T0*,
_output_shapes
:?????????2?|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????2??
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2?o
dropout_1/IdentityIdentitydense_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????2??
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:?????????2?~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:?????????2?
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????2??
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????2*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *??'7?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2?
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2?
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????2??
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????2??
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????2?}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:?????????2??
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
0__inference_time_distributed_layer_call_fn_89715

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85551}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_89857

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_85501p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_time_distributed_layer_call_fn_89706

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85512}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_88721

inputs*
embedding_lookup_88715:
?'?
identity??embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2?
embedding_lookupResourceGatherembedding_lookup_88715Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/88715*,
_output_shapes
:?????????2?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/88715*,
_output_shapes
:?????????2??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????2?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????2?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_85657

inputs*
embedding_lookup_85651:
?'?
identity??embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2?
embedding_lookupResourceGatherembedding_lookup_85651Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/85651*,
_output_shapes
:?????????2?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/85651*,
_output_shapes
:?????????2??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????2?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????2?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_87742

inputs
unknown:
?'?
	unknown_0:	2? 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:?

	unknown_6:
 
	unknown_7:
?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?!

unknown_17:?


unknown_18:
!

unknown_19:?


unknown_20:
!

unknown_21:?


unknown_22:
!

unknown_23:
?

unknown_24:	?

unknown_25:	?

unknown_26:	?!

unknown_27:?


unknown_28:
!

unknown_29:?


unknown_30:
"

unknown_31:?
?

unknown_32:	
?"

unknown_33:
??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:	?

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:
??'

unknown_46:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?'*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86150t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
3__inference_transformer_encoder_layer_call_fn_88823

inputs
unknown:?

	unknown_0:
 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:
?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_86836t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
3__inference_transformer_encoder_layer_call_fn_88786

inputs
unknown:?

	unknown_0:
 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:
?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_85816t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????2?: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs
?
?
3__inference_transformer_decoder_layer_call_fn_89214
decoder_sequence
encoder_sequence
unknown:?

	unknown_0:
 
	unknown_1:?

	unknown_2:
 
	unknown_3:?

	unknown_4:
 
	unknown_5:
?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	? 
	unknown_9:?


unknown_10:
!

unknown_11:?


unknown_12:
"

unknown_13:?
?

unknown_14:	
?"

unknown_15:
??

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
??

unknown_20:	?

unknown_21:
??

unknown_22:	?

unknown_23:	?

unknown_24:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoder_sequenceencoder_sequenceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????2?*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_86593t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????2?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:?????????2?:?????????2?: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:?????????2?
*
_user_specified_namedecoder_sequence:^Z
,
_output_shapes
:?????????2?
*
_user_specified_nameencoder_sequence
?
?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89737

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
2__inference_time_distributed_1_layer_call_fn_89795

inputs
unknown:
??'
	unknown_0:	?'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85594}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89759

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_89774

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????2?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????2?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????2?:T P
,
_output_shapes
:?????????2?
 
_user_specified_nameinputs"?	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????2K
time_distributed_15
StatefulPartitionedCall:0?????????2?'tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
embeddings
 position_embeddings"
_tf_keras_layer
(
!	keras_api"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_multi_head_attention_layer
)_attention_layernorm
*_feedforward_layernorm
+_attention_dropout
,_intermediate_dense
-_output_dense
._output_dropout"
_tf_keras_layer
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_self_attention_layer
 6_decoder_attention_layernorm
7_cross_attention_layer
8_cross_attention_layernorm
9_cross_attention_dropout
:_feedforward_layernorm
;_self_attention_dropout
<_intermediate_dense
=_output_dense
>_output_dropout"
_tf_keras_layer
?
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
	Elayer"
_tf_keras_layer
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
L_random_generator"
_tf_keras_layer
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
	Slayer"
_tf_keras_layer
?
0
 1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
b16
c17
d18
e19
f20
g21
h22
i23
j24
k25
l26
m27
n28
o29
p30
q31
r32
s33
t34
u35
v36
w37
x38
y39
z40
{41
|42
}43
~44
45
?46
?47"
trackable_list_wrapper
?
0
 1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
b16
c17
d18
e19
f20
g21
h22
i23
j24
k25
l26
m27
n28
o29
p30
q31
r32
s33
t34
u35
v36
w37
x38
y39
z40
{41
|42
}43
~44
45
?46
?47"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
%__inference_model_layer_call_fn_86249
%__inference_model_layer_call_fn_87742
%__inference_model_layer_call_fn_87843
%__inference_model_layer_call_fn_87304?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
@__inference_model_layer_call_and_return_conditional_losses_88242
@__inference_model_layer_call_and_return_conditional_losses_88704
@__inference_model_layer_call_and_return_conditional_losses_87418
@__inference_model_layer_call_and_return_conditional_losses_87532?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
 __inference__wrapped_model_85476input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
?beta_1
?beta_2

?decay
?learning_rate
	?iterm? m?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?hm?im?jm?km?lm?mm?nm?om?pm?qm?rm?sm?tm?um?vm?wm?xm?ym?zm?{m?|m?}m?~m?m?	?m?	?m?v? v?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?ov?pv?qv?rv?sv?tv?uv?vv?wv?xv?yv?zv?{v?|v?}v?~v?v?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_embedding_layer_call_fn_88711?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_embedding_layer_call_and_return_conditional_losses_88721?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
(:&
?'?2embedding/embeddings
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_position_embedding_layer_call_fn_88728?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_position_embedding_layer_call_and_return_conditional_losses_88749?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0:.	2?2position_embedding/embeddings
"
_generic_user_object
?
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15"
trackable_list_wrapper
?
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
3__inference_transformer_encoder_layer_call_fn_88786
3__inference_transformer_encoder_layer_call_fn_88823?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_88950
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_89098?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 z?trace_0z?trace_1
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	\gamma
]beta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	^gamma
_beta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

`kernel
abias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

bkernel
cbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
d0
e1
f2
g3
h4
i5
j6
k7
l8
m9
n10
o11
p12
q13
r14
s15
t16
u17
v18
w19
x20
y21
z22
{23
|24
}25"
trackable_list_wrapper
?
d0
e1
f2
g3
h4
i5
j6
k7
l8
m9
n10
o11
p12
q13
r14
s15
t16
u17
v18
w19
x20
y21
z22
{23
|24
}25"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
3__inference_transformer_decoder_layer_call_fn_89156
3__inference_transformer_decoder_layer_call_fn_89214?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89438
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89697?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 z?trace_0z?trace_1
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	lgamma
mbeta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_query_dense
?
_key_dense
?_value_dense
?_softmax
?_dropout_layer
?_output_dense"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	vgamma
wbeta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis
	xgamma
ybeta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

|kernel
}bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
0__inference_time_distributed_layer_call_fn_89706
0__inference_time_distributed_layer_call_fn_89715?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89737
K__inference_time_distributed_layer_call_and_return_conditional_losses_89759?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
'__inference_dropout_layer_call_fn_89764
'__inference_dropout_layer_call_fn_89769?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
B__inference_dropout_layer_call_and_return_conditional_losses_89774
B__inference_dropout_layer_call_and_return_conditional_losses_89786?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
2__inference_time_distributed_1_layer_call_fn_89795
2__inference_time_distributed_1_layer_call_fn_89804?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89826
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89848?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias"
_tf_keras_layer
L:J?
25transformer_encoder/multi_head_attention/query/kernel
E:C
23transformer_encoder/multi_head_attention/query/bias
J:H?
23transformer_encoder/multi_head_attention/key/kernel
C:A
21transformer_encoder/multi_head_attention/key/bias
L:J?
25transformer_encoder/multi_head_attention/value/kernel
E:C
23transformer_encoder/multi_head_attention/value/bias
W:U
?2@transformer_encoder/multi_head_attention/attention_output/kernel
M:K?2>transformer_encoder/multi_head_attention/attention_output/bias
<::?2-transformer_encoder/layer_normalization/gamma
;:9?2,transformer_encoder/layer_normalization/beta
>:<?2/transformer_encoder/layer_normalization_1/gamma
=:;?2.transformer_encoder/layer_normalization_1/beta
4:2
??2 transformer_encoder/dense/kernel
-:+?2transformer_encoder/dense/bias
6:4
??2"transformer_encoder/dense_1/kernel
/:-?2 transformer_encoder/dense_1/bias
L:J?
25transformer_decoder/multi_head_attention/query/kernel
E:C
23transformer_decoder/multi_head_attention/query/bias
J:H?
23transformer_decoder/multi_head_attention/key/kernel
C:A
21transformer_decoder/multi_head_attention/key/bias
L:J?
25transformer_decoder/multi_head_attention/value/kernel
E:C
23transformer_decoder/multi_head_attention/value/bias
W:U
?2@transformer_decoder/multi_head_attention/attention_output/kernel
M:K?2>transformer_decoder/multi_head_attention/attention_output/bias
<::?2-transformer_decoder/layer_normalization/gamma
;:9?2,transformer_decoder/layer_normalization/beta
N:L?
27transformer_decoder/multi_head_attention_1/query/kernel
G:E
25transformer_decoder/multi_head_attention_1/query/bias
L:J?
25transformer_decoder/multi_head_attention_1/key/kernel
E:C
23transformer_decoder/multi_head_attention_1/key/bias
O:M?
?27transformer_decoder/multi_head_attention_1/value/kernel
H:F	
?25transformer_decoder/multi_head_attention_1/value/bias
Z:X
??2Btransformer_decoder/multi_head_attention_1/attention_output/kernel
O:M?2@transformer_decoder/multi_head_attention_1/attention_output/bias
>:<?2/transformer_decoder/layer_normalization_1/gamma
=:;?2.transformer_decoder/layer_normalization_1/beta
>:<?2/transformer_decoder/layer_normalization_2/gamma
=:;?2.transformer_decoder/layer_normalization_2/beta
4:2
??2 transformer_decoder/dense/kernel
-:+?2transformer_decoder/dense/bias
6:4
??2"transformer_decoder/dense_1/kernel
/:-?2 transformer_decoder/dense_1/bias
+:)
??2time_distributed/kernel
$:"?2time_distributed/bias
-:+
??'2time_distributed_1/kernel
&:$?'2time_distributed_1/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_model_layer_call_fn_86249input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_model_layer_call_fn_87742inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_model_layer_call_fn_87843inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_model_layer_call_fn_87304input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_88242inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_88704inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_87418input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_87532input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
?B?
#__inference_signature_wrapper_87641input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_embedding_layer_call_fn_88711inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_embedding_layer_call_and_return_conditional_losses_88721inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_position_embedding_layer_call_fn_88728inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_position_embedding_layer_call_and_return_conditional_losses_88749inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
Q
(0
)1
*2
+3
,4
-5
.6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_transformer_encoder_layer_call_fn_88786inputs"?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
3__inference_transformer_encoder_layer_call_fn_88823inputs"?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_88950inputs"?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_89098inputs"?
???
FullArgSpec?
args7?4
jself
jinputs
jpadding_mask
jattention_mask
varargs
 
varkw
 
defaults?

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
X
T0
U1
V2
W3
X4
Y5
Z6
[7"
trackable_list_wrapper
X
T0
U1
V2
W3
X4
Y5
Z6
[7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Tkernel
Ubias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Vkernel
Wbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Xkernel
Ybias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

Zkernel
[bias"
_tf_keras_layer
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
 "
trackable_list_wrapper
f
50
61
72
83
94
:5
;6
<7
=8
>9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_transformer_decoder_layer_call_fn_89156decoder_sequenceencoder_sequence"?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
3__inference_transformer_decoder_layer_call_fn_89214decoder_sequenceencoder_sequence"?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89438decoder_sequenceencoder_sequence"?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89697decoder_sequenceencoder_sequence"?
???
FullArgSpec?
args???
jself
jdecoder_sequence
jencoder_sequence
jdecoder_padding_mask
jdecoder_attention_mask
jencoder_padding_mask
jencoder_attention_mask
varargs
 
varkw
 #
defaults?

 

 

 

 

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
X
d0
e1
f2
g3
h4
i5
j6
k7"
trackable_list_wrapper
X
d0
e1
f2
g3
h4
i5
j6
k7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

dkernel
ebias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

fkernel
gbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

hkernel
ibias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

jkernel
kbias"
_tf_keras_layer
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
X
n0
o1
p2
q3
r4
s5
t6
u7"
trackable_list_wrapper
X
n0
o1
p2
q3
r4
s5
t6
u7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecx
argsp?m
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults?

 

 
p 
p 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

nkernel
obias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

pkernel
qbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

rkernel
sbias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?partial_output_shape
?full_output_shape

tkernel
ubias"
_tf_keras_layer
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
 "
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_time_distributed_layer_call_fn_89706inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
0__inference_time_distributed_layer_call_fn_89715inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89737inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89759inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
%__inference_dense_layer_call_fn_89857?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
@__inference_dense_layer_call_and_return_conditional_losses_89868?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dropout_layer_call_fn_89764inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
'__inference_dropout_layer_call_fn_89769inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_89774inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_89786inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_time_distributed_1_layer_call_fn_89795inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
2__inference_time_distributed_1_layer_call_fn_89804inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89826inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89848inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_1_layer_call_fn_89877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_dense_1_layer_call_and_return_conditional_losses_89888?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_dense_layer_call_fn_89857inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_dense_layer_call_and_return_conditional_losses_89868inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dense_1_layer_call_fn_89877inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dense_1_layer_call_and_return_conditional_losses_89888inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
-:+
?'?2Adam/embedding/embeddings/m
5:3	2?2$Adam/position_embedding/embeddings/m
Q:O?
2<Adam/transformer_encoder/multi_head_attention/query/kernel/m
J:H
2:Adam/transformer_encoder/multi_head_attention/query/bias/m
O:M?
2:Adam/transformer_encoder/multi_head_attention/key/kernel/m
H:F
28Adam/transformer_encoder/multi_head_attention/key/bias/m
Q:O?
2<Adam/transformer_encoder/multi_head_attention/value/kernel/m
J:H
2:Adam/transformer_encoder/multi_head_attention/value/bias/m
\:Z
?2GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m
R:P?2EAdam/transformer_encoder/multi_head_attention/attention_output/bias/m
A:??24Adam/transformer_encoder/layer_normalization/gamma/m
@:>?23Adam/transformer_encoder/layer_normalization/beta/m
C:A?26Adam/transformer_encoder/layer_normalization_1/gamma/m
B:@?25Adam/transformer_encoder/layer_normalization_1/beta/m
9:7
??2'Adam/transformer_encoder/dense/kernel/m
2:0?2%Adam/transformer_encoder/dense/bias/m
;:9
??2)Adam/transformer_encoder/dense_1/kernel/m
4:2?2'Adam/transformer_encoder/dense_1/bias/m
Q:O?
2<Adam/transformer_decoder/multi_head_attention/query/kernel/m
J:H
2:Adam/transformer_decoder/multi_head_attention/query/bias/m
O:M?
2:Adam/transformer_decoder/multi_head_attention/key/kernel/m
H:F
28Adam/transformer_decoder/multi_head_attention/key/bias/m
Q:O?
2<Adam/transformer_decoder/multi_head_attention/value/kernel/m
J:H
2:Adam/transformer_decoder/multi_head_attention/value/bias/m
\:Z
?2GAdam/transformer_decoder/multi_head_attention/attention_output/kernel/m
R:P?2EAdam/transformer_decoder/multi_head_attention/attention_output/bias/m
A:??24Adam/transformer_decoder/layer_normalization/gamma/m
@:>?23Adam/transformer_decoder/layer_normalization/beta/m
S:Q?
2>Adam/transformer_decoder/multi_head_attention_1/query/kernel/m
L:J
2<Adam/transformer_decoder/multi_head_attention_1/query/bias/m
Q:O?
2<Adam/transformer_decoder/multi_head_attention_1/key/kernel/m
J:H
2:Adam/transformer_decoder/multi_head_attention_1/key/bias/m
T:R?
?2>Adam/transformer_decoder/multi_head_attention_1/value/kernel/m
M:K	
?2<Adam/transformer_decoder/multi_head_attention_1/value/bias/m
_:]
??2IAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/m
T:R?2GAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/m
C:A?26Adam/transformer_decoder/layer_normalization_1/gamma/m
B:@?25Adam/transformer_decoder/layer_normalization_1/beta/m
C:A?26Adam/transformer_decoder/layer_normalization_2/gamma/m
B:@?25Adam/transformer_decoder/layer_normalization_2/beta/m
9:7
??2'Adam/transformer_decoder/dense/kernel/m
2:0?2%Adam/transformer_decoder/dense/bias/m
;:9
??2)Adam/transformer_decoder/dense_1/kernel/m
4:2?2'Adam/transformer_decoder/dense_1/bias/m
0:.
??2Adam/time_distributed/kernel/m
):'?2Adam/time_distributed/bias/m
2:0
??'2 Adam/time_distributed_1/kernel/m
+:)?'2Adam/time_distributed_1/bias/m
-:+
?'?2Adam/embedding/embeddings/v
5:3	2?2$Adam/position_embedding/embeddings/v
Q:O?
2<Adam/transformer_encoder/multi_head_attention/query/kernel/v
J:H
2:Adam/transformer_encoder/multi_head_attention/query/bias/v
O:M?
2:Adam/transformer_encoder/multi_head_attention/key/kernel/v
H:F
28Adam/transformer_encoder/multi_head_attention/key/bias/v
Q:O?
2<Adam/transformer_encoder/multi_head_attention/value/kernel/v
J:H
2:Adam/transformer_encoder/multi_head_attention/value/bias/v
\:Z
?2GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v
R:P?2EAdam/transformer_encoder/multi_head_attention/attention_output/bias/v
A:??24Adam/transformer_encoder/layer_normalization/gamma/v
@:>?23Adam/transformer_encoder/layer_normalization/beta/v
C:A?26Adam/transformer_encoder/layer_normalization_1/gamma/v
B:@?25Adam/transformer_encoder/layer_normalization_1/beta/v
9:7
??2'Adam/transformer_encoder/dense/kernel/v
2:0?2%Adam/transformer_encoder/dense/bias/v
;:9
??2)Adam/transformer_encoder/dense_1/kernel/v
4:2?2'Adam/transformer_encoder/dense_1/bias/v
Q:O?
2<Adam/transformer_decoder/multi_head_attention/query/kernel/v
J:H
2:Adam/transformer_decoder/multi_head_attention/query/bias/v
O:M?
2:Adam/transformer_decoder/multi_head_attention/key/kernel/v
H:F
28Adam/transformer_decoder/multi_head_attention/key/bias/v
Q:O?
2<Adam/transformer_decoder/multi_head_attention/value/kernel/v
J:H
2:Adam/transformer_decoder/multi_head_attention/value/bias/v
\:Z
?2GAdam/transformer_decoder/multi_head_attention/attention_output/kernel/v
R:P?2EAdam/transformer_decoder/multi_head_attention/attention_output/bias/v
A:??24Adam/transformer_decoder/layer_normalization/gamma/v
@:>?23Adam/transformer_decoder/layer_normalization/beta/v
S:Q?
2>Adam/transformer_decoder/multi_head_attention_1/query/kernel/v
L:J
2<Adam/transformer_decoder/multi_head_attention_1/query/bias/v
Q:O?
2<Adam/transformer_decoder/multi_head_attention_1/key/kernel/v
J:H
2:Adam/transformer_decoder/multi_head_attention_1/key/bias/v
T:R?
?2>Adam/transformer_decoder/multi_head_attention_1/value/kernel/v
M:K	
?2<Adam/transformer_decoder/multi_head_attention_1/value/bias/v
_:]
??2IAdam/transformer_decoder/multi_head_attention_1/attention_output/kernel/v
T:R?2GAdam/transformer_decoder/multi_head_attention_1/attention_output/bias/v
C:A?26Adam/transformer_decoder/layer_normalization_1/gamma/v
B:@?25Adam/transformer_decoder/layer_normalization_1/beta/v
C:A?26Adam/transformer_decoder/layer_normalization_2/gamma/v
B:@?25Adam/transformer_decoder/layer_normalization_2/beta/v
9:7
??2'Adam/transformer_decoder/dense/kernel/v
2:0?2%Adam/transformer_decoder/dense/bias/v
;:9
??2)Adam/transformer_decoder/dense_1/kernel/v
4:2?2'Adam/transformer_decoder/dense_1/bias/v
0:.
??2Adam/time_distributed/kernel/v
):'?2Adam/time_distributed/bias/v
2:0
??'2 Adam/time_distributed_1/kernel/v
+:)?'2Adam/time_distributed_1/bias/v?
 __inference__wrapped_model_85476?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??0?-
&?#
!?
input_1?????????2
? "L?I
G
time_distributed_11?.
time_distributed_1?????????2?'?
B__inference_dense_1_layer_call_and_return_conditional_losses_89888`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????'
? ~
'__inference_dense_1_layer_call_fn_89877S??0?-
&?#
!?
inputs??????????
? "???????????'?
@__inference_dense_layer_call_and_return_conditional_losses_89868^~0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? z
%__inference_dense_layer_call_fn_89857Q~0?-
&?#
!?
inputs??????????
? "????????????
B__inference_dropout_layer_call_and_return_conditional_losses_89774f8?5
.?+
%?"
inputs?????????2?
p 
? "*?'
 ?
0?????????2?
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_89786f8?5
.?+
%?"
inputs?????????2?
p
? "*?'
 ?
0?????????2?
? ?
'__inference_dropout_layer_call_fn_89764Y8?5
.?+
%?"
inputs?????????2?
p 
? "??????????2??
'__inference_dropout_layer_call_fn_89769Y8?5
.?+
%?"
inputs?????????2?
p
? "??????????2??
D__inference_embedding_layer_call_and_return_conditional_losses_88721`/?,
%?"
 ?
inputs?????????2
? "*?'
 ?
0?????????2?
? ?
)__inference_embedding_layer_call_fn_88711S/?,
%?"
 ?
inputs?????????2
? "??????????2??
@__inference_model_layer_call_and_return_conditional_losses_87418?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??8?5
.?+
!?
input_1?????????2
p 

 
? "*?'
 ?
0?????????2?'
? ?
@__inference_model_layer_call_and_return_conditional_losses_87532?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??8?5
.?+
!?
input_1?????????2
p

 
? "*?'
 ?
0?????????2?'
? ?
@__inference_model_layer_call_and_return_conditional_losses_88242?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??7?4
-?*
 ?
inputs?????????2
p 

 
? "*?'
 ?
0?????????2?'
? ?
@__inference_model_layer_call_and_return_conditional_losses_88704?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??7?4
-?*
 ?
inputs?????????2
p

 
? "*?'
 ?
0?????????2?'
? ?
%__inference_model_layer_call_fn_86249?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??8?5
.?+
!?
input_1?????????2
p 

 
? "??????????2?'?
%__inference_model_layer_call_fn_87304?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??8?5
.?+
!?
input_1?????????2
p

 
? "??????????2?'?
%__inference_model_layer_call_fn_87742?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??7?4
-?*
 ?
inputs?????????2
p 

 
? "??????????2?'?
%__inference_model_layer_call_fn_87843?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??7?4
-?*
 ?
inputs?????????2
p

 
? "??????????2?'?
M__inference_position_embedding_layer_call_and_return_conditional_losses_88749e 4?1
*?'
%?"
inputs?????????2?
? "*?'
 ?
0?????????2?
? ?
2__inference_position_embedding_layer_call_fn_88728X 4?1
*?'
%?"
inputs?????????2?
? "??????????2??
#__inference_signature_wrapper_87641?2 TUVWXYZ[\]`abc^_defghijklmnopqrstuvwz{|}xy~??;?8
? 
1?.
,
input_1!?
input_1?????????2"L?I
G
time_distributed_11?.
time_distributed_1?????????2?'?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89826???E?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????'
? ?
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_89848???E?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????'
? ?
2__inference_time_distributed_1_layer_call_fn_89795u??E?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#???????????????????'?
2__inference_time_distributed_1_layer_call_fn_89804u??E?B
;?8
.?+
inputs???????????????????
p

 
? "&?#???????????????????'?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89737?~E?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????
? ?
K__inference_time_distributed_layer_call_and_return_conditional_losses_89759?~E?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????
? ?
0__inference_time_distributed_layer_call_fn_89706s~E?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#????????????????????
0__inference_time_distributed_layer_call_fn_89715s~E?B
;?8
.?+
inputs???????????????????
p

 
? "&?#????????????????????
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89438?defghijklmnopqrstuvwz{|}xy???
u?r
/?,
decoder_sequence?????????2?
/?,
encoder_sequence?????????2?

 

 

 

 
?

trainingp "*?'
 ?
0?????????2?
? ?
N__inference_transformer_decoder_layer_call_and_return_conditional_losses_89697?defghijklmnopqrstuvwz{|}xy???
u?r
/?,
decoder_sequence?????????2?
/?,
encoder_sequence?????????2?

 

 

 

 
?

trainingp"*?'
 ?
0?????????2?
? ?
3__inference_transformer_decoder_layer_call_fn_89156?defghijklmnopqrstuvwz{|}xy???
u?r
/?,
decoder_sequence?????????2?
/?,
encoder_sequence?????????2?

 

 

 

 
?

trainingp "??????????2??
3__inference_transformer_decoder_layer_call_fn_89214?defghijklmnopqrstuvwz{|}xy???
u?r
/?,
decoder_sequence?????????2?
/?,
encoder_sequence?????????2?

 

 

 

 
?

trainingp"??????????2??
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_88950?TUVWXYZ[\]`abc^_L?I
2?/
%?"
inputs?????????2?

 

 
?

trainingp "*?'
 ?
0?????????2?
? ?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_89098?TUVWXYZ[\]`abc^_L?I
2?/
%?"
inputs?????????2?

 

 
?

trainingp"*?'
 ?
0?????????2?
? ?
3__inference_transformer_encoder_layer_call_fn_88786TUVWXYZ[\]`abc^_L?I
2?/
%?"
inputs?????????2?

 

 
?

trainingp "??????????2??
3__inference_transformer_encoder_layer_call_fn_88823TUVWXYZ[\]`abc^_L?I
2?/
%?"
inputs?????????2?

 

 
?

trainingp"??????????2?