ܚ#
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
y

SegmentSum	
data"T
segment_ids"Tindices
output"T" 
Ttype:
2	"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
?
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
ecc_conv/root_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*%
shared_nameecc_conv/root_kernel
~
(ecc_conv/root_kernel/Read/ReadVariableOpReadVariableOpecc_conv/root_kernel*
_output_shapes
:	
?*
dtype0
s
ecc_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameecc_conv/bias
l
!ecc_conv/bias/Read/ReadVariableOpReadVariableOpecc_conv/bias*
_output_shapes	
:?*
dtype0
?
ecc_conv_1/root_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameecc_conv_1/root_kernel
?
*ecc_conv_1/root_kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/root_kernel* 
_output_shapes
:
??*
dtype0
w
ecc_conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameecc_conv_1/bias
p
#ecc_conv_1/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/bias*
_output_shapes	
:?*
dtype0
?
ecc_conv_2/root_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameecc_conv_2/root_kernel
?
*ecc_conv_2/root_kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/root_kernel* 
_output_shapes
:
??*
dtype0
w
ecc_conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameecc_conv_2/bias
p
#ecc_conv_2/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/bias*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
??*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
?
ecc_conv/FGN_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameecc_conv/FGN_0/kernel

)ecc_conv/FGN_0/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_0/kernel*
_output_shapes

:*
dtype0
~
ecc_conv/FGN_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameecc_conv/FGN_0/bias
w
'ecc_conv/FGN_0/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_0/bias*
_output_shapes
:*
dtype0
?
ecc_conv/FGN_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameecc_conv/FGN_1/kernel

)ecc_conv/FGN_1/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_1/kernel*
_output_shapes

: *
dtype0
~
ecc_conv/FGN_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameecc_conv/FGN_1/bias
w
'ecc_conv/FGN_1/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_1/bias*
_output_shapes
: *
dtype0
?
ecc_conv/FGN_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameecc_conv/FGN_2/kernel

)ecc_conv/FGN_2/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_2/kernel*
_output_shapes

:  *
dtype0
~
ecc_conv/FGN_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameecc_conv/FGN_2/bias
w
'ecc_conv/FGN_2/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_2/bias*
_output_shapes
: *
dtype0
?
ecc_conv/FGN_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameecc_conv/FGN_3/kernel

)ecc_conv/FGN_3/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_3/kernel*
_output_shapes

: *
dtype0
~
ecc_conv/FGN_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameecc_conv/FGN_3/bias
w
'ecc_conv/FGN_3/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_3/bias*
_output_shapes
:*
dtype0
?
ecc_conv/FGN_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameecc_conv/FGN_out/kernel
?
+ecc_conv/FGN_out/kernel/Read/ReadVariableOpReadVariableOpecc_conv/FGN_out/kernel*
_output_shapes
:	?
*
dtype0
?
ecc_conv/FGN_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*&
shared_nameecc_conv/FGN_out/bias
|
)ecc_conv/FGN_out/bias/Read/ReadVariableOpReadVariableOpecc_conv/FGN_out/bias*
_output_shapes	
:?
*
dtype0
?
ecc_conv_1/FGN_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameecc_conv_1/FGN_0/kernel
?
+ecc_conv_1/FGN_0/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_0/kernel*
_output_shapes

:*
dtype0
?
ecc_conv_1/FGN_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameecc_conv_1/FGN_0/bias
{
)ecc_conv_1/FGN_0/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_0/bias*
_output_shapes
:*
dtype0
?
ecc_conv_1/FGN_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameecc_conv_1/FGN_1/kernel
?
+ecc_conv_1/FGN_1/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_1/kernel*
_output_shapes

: *
dtype0
?
ecc_conv_1/FGN_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameecc_conv_1/FGN_1/bias
{
)ecc_conv_1/FGN_1/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_1/bias*
_output_shapes
: *
dtype0
?
ecc_conv_1/FGN_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameecc_conv_1/FGN_2/kernel
?
+ecc_conv_1/FGN_2/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_2/kernel*
_output_shapes

:  *
dtype0
?
ecc_conv_1/FGN_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameecc_conv_1/FGN_2/bias
{
)ecc_conv_1/FGN_2/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_2/bias*
_output_shapes
: *
dtype0
?
ecc_conv_1/FGN_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameecc_conv_1/FGN_3/kernel
?
+ecc_conv_1/FGN_3/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_3/kernel*
_output_shapes

: *
dtype0
?
ecc_conv_1/FGN_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameecc_conv_1/FGN_3/bias
{
)ecc_conv_1/FGN_3/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_3/bias*
_output_shapes
:*
dtype0
?
ecc_conv_1/FGN_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameecc_conv_1/FGN_out/kernel
?
-ecc_conv_1/FGN_out/kernel/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_out/kernel* 
_output_shapes
:
??*
dtype0
?
ecc_conv_1/FGN_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameecc_conv_1/FGN_out/bias
?
+ecc_conv_1/FGN_out/bias/Read/ReadVariableOpReadVariableOpecc_conv_1/FGN_out/bias*
_output_shapes

:??*
dtype0
?
ecc_conv_2/FGN_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameecc_conv_2/FGN_0/kernel
?
+ecc_conv_2/FGN_0/kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_0/kernel*
_output_shapes

:*
dtype0
?
ecc_conv_2/FGN_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameecc_conv_2/FGN_0/bias
{
)ecc_conv_2/FGN_0/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_0/bias*
_output_shapes
:*
dtype0
?
ecc_conv_2/FGN_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameecc_conv_2/FGN_1/kernel
?
+ecc_conv_2/FGN_1/kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_1/kernel*
_output_shapes

: *
dtype0
?
ecc_conv_2/FGN_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameecc_conv_2/FGN_1/bias
{
)ecc_conv_2/FGN_1/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_1/bias*
_output_shapes
: *
dtype0
?
ecc_conv_2/FGN_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameecc_conv_2/FGN_2/kernel
?
+ecc_conv_2/FGN_2/kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_2/kernel*
_output_shapes

:  *
dtype0
?
ecc_conv_2/FGN_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameecc_conv_2/FGN_2/bias
{
)ecc_conv_2/FGN_2/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_2/bias*
_output_shapes
: *
dtype0
?
ecc_conv_2/FGN_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameecc_conv_2/FGN_3/kernel
?
+ecc_conv_2/FGN_3/kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_3/kernel*
_output_shapes

: *
dtype0
?
ecc_conv_2/FGN_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameecc_conv_2/FGN_3/bias
{
)ecc_conv_2/FGN_3/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_3/bias*
_output_shapes
:*
dtype0
?
ecc_conv_2/FGN_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameecc_conv_2/FGN_out/kernel
?
-ecc_conv_2/FGN_out/kernel/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_out/kernel* 
_output_shapes
:
??*
dtype0
?
ecc_conv_2/FGN_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameecc_conv_2/FGN_out/bias
?
+ecc_conv_2/FGN_out/bias/Read/ReadVariableOpReadVariableOpecc_conv_2/FGN_out/bias*
_output_shapes

:??*
dtype0
?
+global_attention_pool/features_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*<
shared_name-+global_attention_pool/features_layer/kernel
?
?global_attention_pool/features_layer/kernel/Read/ReadVariableOpReadVariableOp+global_attention_pool/features_layer/kernel* 
_output_shapes
:
??*
dtype0
?
)global_attention_pool/features_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)global_attention_pool/features_layer/bias
?
=global_attention_pool/features_layer/bias/Read/ReadVariableOpReadVariableOp)global_attention_pool/features_layer/bias*
_output_shapes	
:?*
dtype0
?
'global_attention_pool/attn_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'global_attention_pool/attn_layer/kernel
?
;global_attention_pool/attn_layer/kernel/Read/ReadVariableOpReadVariableOp'global_attention_pool/attn_layer/kernel* 
_output_shapes
:
??*
dtype0
?
%global_attention_pool/attn_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%global_attention_pool/attn_layer/bias
?
9global_attention_pool/attn_layer/bias/Read/ReadVariableOpReadVariableOp%global_attention_pool/attn_layer/bias*
_output_shapes	
:?*
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
?
Adam/ecc_conv/root_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*,
shared_nameAdam/ecc_conv/root_kernel/m
?
/Adam/ecc_conv/root_kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/root_kernel/m*
_output_shapes
:	
?*
dtype0
?
Adam/ecc_conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/ecc_conv/bias/m
z
(Adam/ecc_conv/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/ecc_conv_1/root_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_nameAdam/ecc_conv_1/root_kernel/m
?
1Adam/ecc_conv_1/root_kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/root_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/ecc_conv_1/bias/m
~
*Adam/ecc_conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/ecc_conv_2/root_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_nameAdam/ecc_conv_2/root_kernel/m
?
1Adam/ecc_conv_2/root_kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/root_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/ecc_conv_2/bias/m
~
*Adam/ecc_conv_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/ecc_conv/FGN_0/kernel/m
?
0Adam/ecc_conv/FGN_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_0/kernel/m*
_output_shapes

:*
dtype0
?
Adam/ecc_conv/FGN_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/ecc_conv/FGN_0/bias/m
?
.Adam/ecc_conv/FGN_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_0/bias/m*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/ecc_conv/FGN_1/kernel/m
?
0Adam/ecc_conv/FGN_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_1/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv/FGN_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/ecc_conv/FGN_1/bias/m
?
.Adam/ecc_conv/FGN_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv/FGN_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *-
shared_nameAdam/ecc_conv/FGN_2/kernel/m
?
0Adam/ecc_conv/FGN_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_2/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv/FGN_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/ecc_conv/FGN_2/bias/m
?
.Adam/ecc_conv/FGN_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv/FGN_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/ecc_conv/FGN_3/kernel/m
?
0Adam/ecc_conv/FGN_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_3/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv/FGN_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/ecc_conv/FGN_3/bias/m
?
.Adam/ecc_conv/FGN_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*/
shared_name Adam/ecc_conv/FGN_out/kernel/m
?
2Adam/ecc_conv/FGN_out/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adam/ecc_conv/FGN_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*-
shared_nameAdam/ecc_conv/FGN_out/bias/m
?
0Adam/ecc_conv/FGN_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/bias/m*
_output_shapes	
:?
*
dtype0
?
Adam/ecc_conv_1/FGN_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/ecc_conv_1/FGN_0/kernel/m
?
2Adam/ecc_conv_1/FGN_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_0/kernel/m*
_output_shapes

:*
dtype0
?
Adam/ecc_conv_1/FGN_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_1/FGN_0/bias/m
?
0Adam/ecc_conv_1/FGN_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_0/bias/m*
_output_shapes
:*
dtype0
?
Adam/ecc_conv_1/FGN_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_1/FGN_1/kernel/m
?
2Adam/ecc_conv_1/FGN_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_1/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_1/FGN_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_1/FGN_1/bias/m
?
0Adam/ecc_conv_1/FGN_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_1/FGN_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  */
shared_name Adam/ecc_conv_1/FGN_2/kernel/m
?
2Adam/ecc_conv_1/FGN_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_2/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv_1/FGN_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_1/FGN_2/bias/m
?
0Adam/ecc_conv_1/FGN_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_1/FGN_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_1/FGN_3/kernel/m
?
2Adam/ecc_conv_1/FGN_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_3/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_1/FGN_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_1/FGN_3/bias/m
?
0Adam/ecc_conv_1/FGN_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_3/bias/m*
_output_shapes
:*
dtype0
?
 Adam/ecc_conv_1/FGN_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/ecc_conv_1/FGN_out/kernel/m
?
4Adam/ecc_conv_1/FGN_out/kernel/m/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_1/FGN_out/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_1/FGN_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*/
shared_name Adam/ecc_conv_1/FGN_out/bias/m
?
2Adam/ecc_conv_1/FGN_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_out/bias/m*
_output_shapes

:??*
dtype0
?
Adam/ecc_conv_2/FGN_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/ecc_conv_2/FGN_0/kernel/m
?
2Adam/ecc_conv_2/FGN_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_0/kernel/m*
_output_shapes

:*
dtype0
?
Adam/ecc_conv_2/FGN_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_2/FGN_0/bias/m
?
0Adam/ecc_conv_2/FGN_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_0/bias/m*
_output_shapes
:*
dtype0
?
Adam/ecc_conv_2/FGN_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_2/FGN_1/kernel/m
?
2Adam/ecc_conv_2/FGN_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_1/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_2/FGN_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_2/FGN_1/bias/m
?
0Adam/ecc_conv_2/FGN_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_2/FGN_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  */
shared_name Adam/ecc_conv_2/FGN_2/kernel/m
?
2Adam/ecc_conv_2/FGN_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_2/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv_2/FGN_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_2/FGN_2/bias/m
?
0Adam/ecc_conv_2/FGN_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_2/FGN_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_2/FGN_3/kernel/m
?
2Adam/ecc_conv_2/FGN_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_3/kernel/m*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_2/FGN_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_2/FGN_3/bias/m
?
0Adam/ecc_conv_2/FGN_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_3/bias/m*
_output_shapes
:*
dtype0
?
 Adam/ecc_conv_2/FGN_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/ecc_conv_2/FGN_out/kernel/m
?
4Adam/ecc_conv_2/FGN_out/kernel/m/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_2/FGN_out/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_2/FGN_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*/
shared_name Adam/ecc_conv_2/FGN_out/bias/m
?
2Adam/ecc_conv_2/FGN_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_out/bias/m*
_output_shapes

:??*
dtype0
?
2Adam/global_attention_pool/features_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*C
shared_name42Adam/global_attention_pool/features_layer/kernel/m
?
FAdam/global_attention_pool/features_layer/kernel/m/Read/ReadVariableOpReadVariableOp2Adam/global_attention_pool/features_layer/kernel/m* 
_output_shapes
:
??*
dtype0
?
0Adam/global_attention_pool/features_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20Adam/global_attention_pool/features_layer/bias/m
?
DAdam/global_attention_pool/features_layer/bias/m/Read/ReadVariableOpReadVariableOp0Adam/global_attention_pool/features_layer/bias/m*
_output_shapes	
:?*
dtype0
?
.Adam/global_attention_pool/attn_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.Adam/global_attention_pool/attn_layer/kernel/m
?
BAdam/global_attention_pool/attn_layer/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/global_attention_pool/attn_layer/kernel/m* 
_output_shapes
:
??*
dtype0
?
,Adam/global_attention_pool/attn_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,Adam/global_attention_pool/attn_layer/bias/m
?
@Adam/global_attention_pool/attn_layer/bias/m/Read/ReadVariableOpReadVariableOp,Adam/global_attention_pool/attn_layer/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/ecc_conv/root_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*,
shared_nameAdam/ecc_conv/root_kernel/v
?
/Adam/ecc_conv/root_kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/root_kernel/v*
_output_shapes
:	
?*
dtype0
?
Adam/ecc_conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/ecc_conv/bias/v
z
(Adam/ecc_conv/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/ecc_conv_1/root_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_nameAdam/ecc_conv_1/root_kernel/v
?
1Adam/ecc_conv_1/root_kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/root_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/ecc_conv_1/bias/v
~
*Adam/ecc_conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/ecc_conv_2/root_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_nameAdam/ecc_conv_2/root_kernel/v
?
1Adam/ecc_conv_2/root_kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/root_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/ecc_conv_2/bias/v
~
*Adam/ecc_conv_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/ecc_conv/FGN_0/kernel/v
?
0Adam/ecc_conv/FGN_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_0/kernel/v*
_output_shapes

:*
dtype0
?
Adam/ecc_conv/FGN_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/ecc_conv/FGN_0/bias/v
?
.Adam/ecc_conv/FGN_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_0/bias/v*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/ecc_conv/FGN_1/kernel/v
?
0Adam/ecc_conv/FGN_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_1/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv/FGN_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/ecc_conv/FGN_1/bias/v
?
.Adam/ecc_conv/FGN_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv/FGN_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *-
shared_nameAdam/ecc_conv/FGN_2/kernel/v
?
0Adam/ecc_conv/FGN_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_2/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv/FGN_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/ecc_conv/FGN_2/bias/v
?
.Adam/ecc_conv/FGN_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv/FGN_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/ecc_conv/FGN_3/kernel/v
?
0Adam/ecc_conv/FGN_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_3/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv/FGN_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/ecc_conv/FGN_3/bias/v
?
.Adam/ecc_conv/FGN_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_3/bias/v*
_output_shapes
:*
dtype0
?
Adam/ecc_conv/FGN_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*/
shared_name Adam/ecc_conv/FGN_out/kernel/v
?
2Adam/ecc_conv/FGN_out/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adam/ecc_conv/FGN_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*-
shared_nameAdam/ecc_conv/FGN_out/bias/v
?
0Adam/ecc_conv/FGN_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv/FGN_out/bias/v*
_output_shapes	
:?
*
dtype0
?
Adam/ecc_conv_1/FGN_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/ecc_conv_1/FGN_0/kernel/v
?
2Adam/ecc_conv_1/FGN_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_0/kernel/v*
_output_shapes

:*
dtype0
?
Adam/ecc_conv_1/FGN_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_1/FGN_0/bias/v
?
0Adam/ecc_conv_1/FGN_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_0/bias/v*
_output_shapes
:*
dtype0
?
Adam/ecc_conv_1/FGN_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_1/FGN_1/kernel/v
?
2Adam/ecc_conv_1/FGN_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_1/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_1/FGN_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_1/FGN_1/bias/v
?
0Adam/ecc_conv_1/FGN_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_1/FGN_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  */
shared_name Adam/ecc_conv_1/FGN_2/kernel/v
?
2Adam/ecc_conv_1/FGN_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_2/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv_1/FGN_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_1/FGN_2/bias/v
?
0Adam/ecc_conv_1/FGN_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_1/FGN_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_1/FGN_3/kernel/v
?
2Adam/ecc_conv_1/FGN_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_3/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_1/FGN_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_1/FGN_3/bias/v
?
0Adam/ecc_conv_1/FGN_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_3/bias/v*
_output_shapes
:*
dtype0
?
 Adam/ecc_conv_1/FGN_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/ecc_conv_1/FGN_out/kernel/v
?
4Adam/ecc_conv_1/FGN_out/kernel/v/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_1/FGN_out/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_1/FGN_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*/
shared_name Adam/ecc_conv_1/FGN_out/bias/v
?
2Adam/ecc_conv_1/FGN_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_1/FGN_out/bias/v*
_output_shapes

:??*
dtype0
?
Adam/ecc_conv_2/FGN_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/ecc_conv_2/FGN_0/kernel/v
?
2Adam/ecc_conv_2/FGN_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_0/kernel/v*
_output_shapes

:*
dtype0
?
Adam/ecc_conv_2/FGN_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_2/FGN_0/bias/v
?
0Adam/ecc_conv_2/FGN_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_0/bias/v*
_output_shapes
:*
dtype0
?
Adam/ecc_conv_2/FGN_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_2/FGN_1/kernel/v
?
2Adam/ecc_conv_2/FGN_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_1/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_2/FGN_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_2/FGN_1/bias/v
?
0Adam/ecc_conv_2/FGN_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_2/FGN_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  */
shared_name Adam/ecc_conv_2/FGN_2/kernel/v
?
2Adam/ecc_conv_2/FGN_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_2/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/ecc_conv_2/FGN_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/ecc_conv_2/FGN_2/bias/v
?
0Adam/ecc_conv_2/FGN_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/ecc_conv_2/FGN_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/ecc_conv_2/FGN_3/kernel/v
?
2Adam/ecc_conv_2/FGN_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_3/kernel/v*
_output_shapes

: *
dtype0
?
Adam/ecc_conv_2/FGN_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/ecc_conv_2/FGN_3/bias/v
?
0Adam/ecc_conv_2/FGN_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_3/bias/v*
_output_shapes
:*
dtype0
?
 Adam/ecc_conv_2/FGN_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/ecc_conv_2/FGN_out/kernel/v
?
4Adam/ecc_conv_2/FGN_out/kernel/v/Read/ReadVariableOpReadVariableOp Adam/ecc_conv_2/FGN_out/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/ecc_conv_2/FGN_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*/
shared_name Adam/ecc_conv_2/FGN_out/bias/v
?
2Adam/ecc_conv_2/FGN_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/ecc_conv_2/FGN_out/bias/v*
_output_shapes

:??*
dtype0
?
2Adam/global_attention_pool/features_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*C
shared_name42Adam/global_attention_pool/features_layer/kernel/v
?
FAdam/global_attention_pool/features_layer/kernel/v/Read/ReadVariableOpReadVariableOp2Adam/global_attention_pool/features_layer/kernel/v* 
_output_shapes
:
??*
dtype0
?
0Adam/global_attention_pool/features_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*A
shared_name20Adam/global_attention_pool/features_layer/bias/v
?
DAdam/global_attention_pool/features_layer/bias/v/Read/ReadVariableOpReadVariableOp0Adam/global_attention_pool/features_layer/bias/v*
_output_shapes	
:?*
dtype0
?
.Adam/global_attention_pool/attn_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.Adam/global_attention_pool/attn_layer/kernel/v
?
BAdam/global_attention_pool/attn_layer/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/global_attention_pool/attn_layer/kernel/v* 
_output_shapes
:
??*
dtype0
?
,Adam/global_attention_pool/attn_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,Adam/global_attention_pool/attn_layer/bias/v
?
@Adam/global_attention_pool/attn_layer/bias/v/Read/ReadVariableOpReadVariableOp,Adam/global_attention_pool/attn_layer/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
 
 
?
kwargs_keys
kernel_network
kernel_network_layers
root_kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?
kwargs_keys
kernel_network
kernel_network_layers
 root_kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?
&kwargs_keys
'kernel_network
(kernel_network_layers
)root_kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
 
{
/features_layer
0attention_layer
1regularization_losses
2	variables
3trainable_variables
4	keras_api
R
5regularization_losses
6	variables
7trainable_variables
8	keras_api
h

9kernel
:bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
h

Ekernel
Fbias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
?

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_rate
Uiterm?m? m?!m?)m?*m?9m?:m??m?@m?Em?Fm?Km?Lm?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?hm?im?jm?km?lm?mm?nm?om?pm?qm?rm?sm?tm?um?vm?wm?v?v? v?!v?)v?*v?9v?:v??v?@v?Ev?Fv?Kv?Lv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?ov?pv?qv?rv?sv?tv?uv?vv?wv?
 
?
0
1
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
 12
!13
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
)24
*25
j26
k27
l28
m29
n30
o31
p32
q33
r34
s35
t36
u37
v38
w39
940
:41
?42
@43
E44
F45
K46
L47
?
0
1
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
 12
!13
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
)24
*25
j26
k27
l28
m29
n30
o31
p32
q33
r34
s35
t36
u37
v38
w39
940
:41
?42
@43
E44
F45
K46
L47
?
xlayer_metrics
regularization_losses
ynon_trainable_variables

zlayers
	variables
{metrics
trainable_variables
|layer_regularization_losses
 
 
 
%
}0
~1
2
?3
?4
ec
VARIABLE_VALUEecc_conv/root_kernel;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEecc_conv/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
V
0
1
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
V
0
1
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
?
?layer_metrics
regularization_losses
?non_trainable_variables
?layers
	variables
?metrics
trainable_variables
 ?layer_regularization_losses
 
 
(
?0
?1
?2
?3
?4
ge
VARIABLE_VALUEecc_conv_1/root_kernel;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEecc_conv_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
V
 0
!1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
V
 0
!1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
?
?layer_metrics
"regularization_losses
?non_trainable_variables
?layers
#	variables
?metrics
$trainable_variables
 ?layer_regularization_losses
 
 
(
?0
?1
?2
?3
?4
ge
VARIABLE_VALUEecc_conv_2/root_kernel;layer_with_weights-2/root_kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEecc_conv_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
V
)0
*1
j2
k3
l4
m5
n6
o7
p8
q9
r10
s11
V
)0
*1
j2
k3
l4
m5
n6
o7
p8
q9
r10
s11
?
?layer_metrics
+regularization_losses
?non_trainable_variables
?layers
,	variables
?metrics
-trainable_variables
 ?layer_regularization_losses
l

tkernel
ubias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

vkernel
wbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 

t0
u1
v2
w3

t0
u1
v2
w3
?
?layer_metrics
1regularization_losses
?non_trainable_variables
?layers
2	variables
?metrics
3trainable_variables
 ?layer_regularization_losses
 
 
 
?
?layer_metrics
5regularization_losses
?non_trainable_variables
?layers
6	variables
?metrics
7trainable_variables
 ?layer_regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

90
:1
?
?layer_metrics
;regularization_losses
?non_trainable_variables
?layers
<	variables
?metrics
=trainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
?
?layer_metrics
Aregularization_losses
?non_trainable_variables
?layers
B	variables
?metrics
Ctrainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

E0
F1
?
?layer_metrics
Gregularization_losses
?non_trainable_variables
?layers
H	variables
?metrics
Itrainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
?
?layer_metrics
Mregularization_losses
?non_trainable_variables
?layers
N	variables
?metrics
Otrainable_variables
 ?layer_regularization_losses
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEecc_conv/FGN_0/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEecc_conv/FGN_0/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEecc_conv/FGN_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEecc_conv/FGN_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEecc_conv/FGN_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEecc_conv/FGN_2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEecc_conv/FGN_3/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEecc_conv/FGN_3/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv/FGN_out/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv/FGN_out/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_1/FGN_0/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_1/FGN_0/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_1/FGN_1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_1/FGN_1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_1/FGN_2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_1/FGN_2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_1/FGN_3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_1/FGN_3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEecc_conv_1/FGN_out/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_1/FGN_out/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_2/FGN_0/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_2/FGN_0/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_2/FGN_1/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_2/FGN_1/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_2/FGN_2/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_2/FGN_2/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_2/FGN_3/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEecc_conv_2/FGN_3/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEecc_conv_2/FGN_out/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEecc_conv_2/FGN_out/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+global_attention_pool/features_layer/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)global_attention_pool/features_layer/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE'global_attention_pool/attn_layer/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%global_attention_pool/attn_layer/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE
 
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12

?0
 
l

Vkernel
Wbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

Xkernel
Ybias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

Zkernel
[bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

\kernel
]bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

^kernel
_bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
%
}0
~1
2
?3
?4
 
 
l

`kernel
abias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

bkernel
cbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

dkernel
ebias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

fkernel
gbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

hkernel
ibias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
(
?0
?1
?2
?3
?4
 
 
l

jkernel
kbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

lkernel
mbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

nkernel
obias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

pkernel
qbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

rkernel
sbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
(
?0
?1
?2
?3
?4
 
 
 

t0
u1

t0
u1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

v0
w1

v0
w1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 
 

/0
01
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
 

V0
W1

V0
W1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

X0
Y1

X0
Y1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

Z0
[1

Z0
[1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

\0
]1

\0
]1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

^0
_1

^0
_1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

`0
a1

`0
a1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

b0
c1

b0
c1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

d0
e1

d0
e1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

f0
g1

f0
g1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

h0
i1

h0
i1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

j0
k1

j0
k1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

l0
m1

l0
m1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

n0
o1

n0
o1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

p0
q1

p0
q1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 

r0
s1

r0
s1
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
??
VARIABLE_VALUEAdam/ecc_conv/root_kernel/mWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ecc_conv/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ecc_conv_1/root_kernel/mWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/ecc_conv_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ecc_conv_2/root_kernel/mWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/ecc_conv_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_0/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_0/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_1/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_2/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_3/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_3/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv/FGN_out/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv/FGN_out/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_0/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_0/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_1/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_1/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_2/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_2/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_3/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_3/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/ecc_conv_1/FGN_out/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_out/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_0/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_0/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_1/kernel/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_1/bias/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_2/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_2/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_3/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_3/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/ecc_conv_2/FGN_out/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_out/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/global_attention_pool/features_layer/kernel/mCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/global_attention_pool/features_layer/bias/mCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/global_attention_pool/attn_layer/kernel/mCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/global_attention_pool/attn_layer/bias/mCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ecc_conv/root_kernel/vWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/ecc_conv/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ecc_conv_1/root_kernel/vWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/ecc_conv_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ecc_conv_2/root_kernel/vWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/ecc_conv_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_0/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_0/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_1/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_2/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/ecc_conv/FGN_3/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/ecc_conv/FGN_3/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv/FGN_out/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv/FGN_out/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_0/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_0/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_1/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_1/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_2/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_2/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_3/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_1/FGN_3/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/ecc_conv_1/FGN_out/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_1/FGN_out/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_0/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_0/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_1/kernel/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_1/bias/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_2/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_2/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_3/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/ecc_conv_2/FGN_3/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/ecc_conv_2/FGN_out/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ecc_conv_2/FGN_out/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/global_attention_pool/features_layer/kernel/vCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/global_attention_pool/features_layer/bias/vCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/global_attention_pool/attn_layer/kernel/vCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/global_attention_pool/attn_layer/bias/vCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
y
serving_default_args_0Placeholder*'
_output_shapes
:?????????
*
dtype0*
shape:?????????

{
serving_default_args_0_1Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
s
serving_default_args_0_2Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:
{
serving_default_args_0_4Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
s
serving_default_args_0_5Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3serving_default_args_0_4serving_default_args_0_5ecc_conv/FGN_0/kernelecc_conv/FGN_0/biasecc_conv/FGN_1/kernelecc_conv/FGN_1/biasecc_conv/FGN_2/kernelecc_conv/FGN_2/biasecc_conv/FGN_3/kernelecc_conv/FGN_3/biasecc_conv/FGN_out/kernelecc_conv/FGN_out/biasecc_conv/root_kernelecc_conv/biasecc_conv_1/FGN_0/kernelecc_conv_1/FGN_0/biasecc_conv_1/FGN_1/kernelecc_conv_1/FGN_1/biasecc_conv_1/FGN_2/kernelecc_conv_1/FGN_2/biasecc_conv_1/FGN_3/kernelecc_conv_1/FGN_3/biasecc_conv_1/FGN_out/kernelecc_conv_1/FGN_out/biasecc_conv_1/root_kernelecc_conv_1/biasecc_conv_2/FGN_0/kernelecc_conv_2/FGN_0/biasecc_conv_2/FGN_1/kernelecc_conv_2/FGN_1/biasecc_conv_2/FGN_2/kernelecc_conv_2/FGN_2/biasecc_conv_2/FGN_3/kernelecc_conv_2/FGN_3/biasecc_conv_2/FGN_out/kernelecc_conv_2/FGN_out/biasecc_conv_2/root_kernelecc_conv_2/bias+global_attention_pool/features_layer/kernel)global_attention_pool/features_layer/bias'global_attention_pool/attn_layer/kernel%global_attention_pool/attn_layer/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*A
Tin:
826		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012345*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_119907
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?:
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(ecc_conv/root_kernel/Read/ReadVariableOp!ecc_conv/bias/Read/ReadVariableOp*ecc_conv_1/root_kernel/Read/ReadVariableOp#ecc_conv_1/bias/Read/ReadVariableOp*ecc_conv_2/root_kernel/Read/ReadVariableOp#ecc_conv_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp)ecc_conv/FGN_0/kernel/Read/ReadVariableOp'ecc_conv/FGN_0/bias/Read/ReadVariableOp)ecc_conv/FGN_1/kernel/Read/ReadVariableOp'ecc_conv/FGN_1/bias/Read/ReadVariableOp)ecc_conv/FGN_2/kernel/Read/ReadVariableOp'ecc_conv/FGN_2/bias/Read/ReadVariableOp)ecc_conv/FGN_3/kernel/Read/ReadVariableOp'ecc_conv/FGN_3/bias/Read/ReadVariableOp+ecc_conv/FGN_out/kernel/Read/ReadVariableOp)ecc_conv/FGN_out/bias/Read/ReadVariableOp+ecc_conv_1/FGN_0/kernel/Read/ReadVariableOp)ecc_conv_1/FGN_0/bias/Read/ReadVariableOp+ecc_conv_1/FGN_1/kernel/Read/ReadVariableOp)ecc_conv_1/FGN_1/bias/Read/ReadVariableOp+ecc_conv_1/FGN_2/kernel/Read/ReadVariableOp)ecc_conv_1/FGN_2/bias/Read/ReadVariableOp+ecc_conv_1/FGN_3/kernel/Read/ReadVariableOp)ecc_conv_1/FGN_3/bias/Read/ReadVariableOp-ecc_conv_1/FGN_out/kernel/Read/ReadVariableOp+ecc_conv_1/FGN_out/bias/Read/ReadVariableOp+ecc_conv_2/FGN_0/kernel/Read/ReadVariableOp)ecc_conv_2/FGN_0/bias/Read/ReadVariableOp+ecc_conv_2/FGN_1/kernel/Read/ReadVariableOp)ecc_conv_2/FGN_1/bias/Read/ReadVariableOp+ecc_conv_2/FGN_2/kernel/Read/ReadVariableOp)ecc_conv_2/FGN_2/bias/Read/ReadVariableOp+ecc_conv_2/FGN_3/kernel/Read/ReadVariableOp)ecc_conv_2/FGN_3/bias/Read/ReadVariableOp-ecc_conv_2/FGN_out/kernel/Read/ReadVariableOp+ecc_conv_2/FGN_out/bias/Read/ReadVariableOp?global_attention_pool/features_layer/kernel/Read/ReadVariableOp=global_attention_pool/features_layer/bias/Read/ReadVariableOp;global_attention_pool/attn_layer/kernel/Read/ReadVariableOp9global_attention_pool/attn_layer/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/ecc_conv/root_kernel/m/Read/ReadVariableOp(Adam/ecc_conv/bias/m/Read/ReadVariableOp1Adam/ecc_conv_1/root_kernel/m/Read/ReadVariableOp*Adam/ecc_conv_1/bias/m/Read/ReadVariableOp1Adam/ecc_conv_2/root_kernel/m/Read/ReadVariableOp*Adam/ecc_conv_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_0/kernel/m/Read/ReadVariableOp.Adam/ecc_conv/FGN_0/bias/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_1/kernel/m/Read/ReadVariableOp.Adam/ecc_conv/FGN_1/bias/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_2/kernel/m/Read/ReadVariableOp.Adam/ecc_conv/FGN_2/bias/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_3/kernel/m/Read/ReadVariableOp.Adam/ecc_conv/FGN_3/bias/m/Read/ReadVariableOp2Adam/ecc_conv/FGN_out/kernel/m/Read/ReadVariableOp0Adam/ecc_conv/FGN_out/bias/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_0/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_0/bias/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_1/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_1/bias/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_2/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_2/bias/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_3/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_3/bias/m/Read/ReadVariableOp4Adam/ecc_conv_1/FGN_out/kernel/m/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_out/bias/m/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_0/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_0/bias/m/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_1/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_1/bias/m/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_2/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_2/bias/m/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_3/kernel/m/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_3/bias/m/Read/ReadVariableOp4Adam/ecc_conv_2/FGN_out/kernel/m/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_out/bias/m/Read/ReadVariableOpFAdam/global_attention_pool/features_layer/kernel/m/Read/ReadVariableOpDAdam/global_attention_pool/features_layer/bias/m/Read/ReadVariableOpBAdam/global_attention_pool/attn_layer/kernel/m/Read/ReadVariableOp@Adam/global_attention_pool/attn_layer/bias/m/Read/ReadVariableOp/Adam/ecc_conv/root_kernel/v/Read/ReadVariableOp(Adam/ecc_conv/bias/v/Read/ReadVariableOp1Adam/ecc_conv_1/root_kernel/v/Read/ReadVariableOp*Adam/ecc_conv_1/bias/v/Read/ReadVariableOp1Adam/ecc_conv_2/root_kernel/v/Read/ReadVariableOp*Adam/ecc_conv_2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_0/kernel/v/Read/ReadVariableOp.Adam/ecc_conv/FGN_0/bias/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_1/kernel/v/Read/ReadVariableOp.Adam/ecc_conv/FGN_1/bias/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_2/kernel/v/Read/ReadVariableOp.Adam/ecc_conv/FGN_2/bias/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_3/kernel/v/Read/ReadVariableOp.Adam/ecc_conv/FGN_3/bias/v/Read/ReadVariableOp2Adam/ecc_conv/FGN_out/kernel/v/Read/ReadVariableOp0Adam/ecc_conv/FGN_out/bias/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_0/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_0/bias/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_1/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_1/bias/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_2/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_2/bias/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_3/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_1/FGN_3/bias/v/Read/ReadVariableOp4Adam/ecc_conv_1/FGN_out/kernel/v/Read/ReadVariableOp2Adam/ecc_conv_1/FGN_out/bias/v/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_0/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_0/bias/v/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_1/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_1/bias/v/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_2/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_2/bias/v/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_3/kernel/v/Read/ReadVariableOp0Adam/ecc_conv_2/FGN_3/bias/v/Read/ReadVariableOp4Adam/ecc_conv_2/FGN_out/kernel/v/Read/ReadVariableOp2Adam/ecc_conv_2/FGN_out/bias/v/Read/ReadVariableOpFAdam/global_attention_pool/features_layer/kernel/v/Read/ReadVariableOpDAdam/global_attention_pool/features_layer/bias/v/Read/ReadVariableOpBAdam/global_attention_pool/attn_layer/kernel/v/Read/ReadVariableOp@Adam/global_attention_pool/attn_layer/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_121586
?#
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameecc_conv/root_kernelecc_conv/biasecc_conv_1/root_kernelecc_conv_1/biasecc_conv_2/root_kernelecc_conv_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasbeta_1beta_2decaylearning_rate	Adam/iterecc_conv/FGN_0/kernelecc_conv/FGN_0/biasecc_conv/FGN_1/kernelecc_conv/FGN_1/biasecc_conv/FGN_2/kernelecc_conv/FGN_2/biasecc_conv/FGN_3/kernelecc_conv/FGN_3/biasecc_conv/FGN_out/kernelecc_conv/FGN_out/biasecc_conv_1/FGN_0/kernelecc_conv_1/FGN_0/biasecc_conv_1/FGN_1/kernelecc_conv_1/FGN_1/biasecc_conv_1/FGN_2/kernelecc_conv_1/FGN_2/biasecc_conv_1/FGN_3/kernelecc_conv_1/FGN_3/biasecc_conv_1/FGN_out/kernelecc_conv_1/FGN_out/biasecc_conv_2/FGN_0/kernelecc_conv_2/FGN_0/biasecc_conv_2/FGN_1/kernelecc_conv_2/FGN_1/biasecc_conv_2/FGN_2/kernelecc_conv_2/FGN_2/biasecc_conv_2/FGN_3/kernelecc_conv_2/FGN_3/biasecc_conv_2/FGN_out/kernelecc_conv_2/FGN_out/bias+global_attention_pool/features_layer/kernel)global_attention_pool/features_layer/bias'global_attention_pool/attn_layer/kernel%global_attention_pool/attn_layer/biastotalcountAdam/ecc_conv/root_kernel/mAdam/ecc_conv/bias/mAdam/ecc_conv_1/root_kernel/mAdam/ecc_conv_1/bias/mAdam/ecc_conv_2/root_kernel/mAdam/ecc_conv_2/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/ecc_conv/FGN_0/kernel/mAdam/ecc_conv/FGN_0/bias/mAdam/ecc_conv/FGN_1/kernel/mAdam/ecc_conv/FGN_1/bias/mAdam/ecc_conv/FGN_2/kernel/mAdam/ecc_conv/FGN_2/bias/mAdam/ecc_conv/FGN_3/kernel/mAdam/ecc_conv/FGN_3/bias/mAdam/ecc_conv/FGN_out/kernel/mAdam/ecc_conv/FGN_out/bias/mAdam/ecc_conv_1/FGN_0/kernel/mAdam/ecc_conv_1/FGN_0/bias/mAdam/ecc_conv_1/FGN_1/kernel/mAdam/ecc_conv_1/FGN_1/bias/mAdam/ecc_conv_1/FGN_2/kernel/mAdam/ecc_conv_1/FGN_2/bias/mAdam/ecc_conv_1/FGN_3/kernel/mAdam/ecc_conv_1/FGN_3/bias/m Adam/ecc_conv_1/FGN_out/kernel/mAdam/ecc_conv_1/FGN_out/bias/mAdam/ecc_conv_2/FGN_0/kernel/mAdam/ecc_conv_2/FGN_0/bias/mAdam/ecc_conv_2/FGN_1/kernel/mAdam/ecc_conv_2/FGN_1/bias/mAdam/ecc_conv_2/FGN_2/kernel/mAdam/ecc_conv_2/FGN_2/bias/mAdam/ecc_conv_2/FGN_3/kernel/mAdam/ecc_conv_2/FGN_3/bias/m Adam/ecc_conv_2/FGN_out/kernel/mAdam/ecc_conv_2/FGN_out/bias/m2Adam/global_attention_pool/features_layer/kernel/m0Adam/global_attention_pool/features_layer/bias/m.Adam/global_attention_pool/attn_layer/kernel/m,Adam/global_attention_pool/attn_layer/bias/mAdam/ecc_conv/root_kernel/vAdam/ecc_conv/bias/vAdam/ecc_conv_1/root_kernel/vAdam/ecc_conv_1/bias/vAdam/ecc_conv_2/root_kernel/vAdam/ecc_conv_2/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/ecc_conv/FGN_0/kernel/vAdam/ecc_conv/FGN_0/bias/vAdam/ecc_conv/FGN_1/kernel/vAdam/ecc_conv/FGN_1/bias/vAdam/ecc_conv/FGN_2/kernel/vAdam/ecc_conv/FGN_2/bias/vAdam/ecc_conv/FGN_3/kernel/vAdam/ecc_conv/FGN_3/bias/vAdam/ecc_conv/FGN_out/kernel/vAdam/ecc_conv/FGN_out/bias/vAdam/ecc_conv_1/FGN_0/kernel/vAdam/ecc_conv_1/FGN_0/bias/vAdam/ecc_conv_1/FGN_1/kernel/vAdam/ecc_conv_1/FGN_1/bias/vAdam/ecc_conv_1/FGN_2/kernel/vAdam/ecc_conv_1/FGN_2/bias/vAdam/ecc_conv_1/FGN_3/kernel/vAdam/ecc_conv_1/FGN_3/bias/v Adam/ecc_conv_1/FGN_out/kernel/vAdam/ecc_conv_1/FGN_out/bias/vAdam/ecc_conv_2/FGN_0/kernel/vAdam/ecc_conv_2/FGN_0/bias/vAdam/ecc_conv_2/FGN_1/kernel/vAdam/ecc_conv_2/FGN_1/bias/vAdam/ecc_conv_2/FGN_2/kernel/vAdam/ecc_conv_2/FGN_2/bias/vAdam/ecc_conv_2/FGN_3/kernel/vAdam/ecc_conv_2/FGN_3/bias/v Adam/ecc_conv_2/FGN_out/kernel/vAdam/ecc_conv_2/FGN_out/bias/v2Adam/global_attention_pool/features_layer/kernel/v0Adam/global_attention_pool/features_layer/bias/v.Adam/global_attention_pool/attn_layer/kernel/v,Adam/global_attention_pool/attn_layer/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_122049??
?

?
A__inference_dense_layer_call_and_return_conditional_losses_121037

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
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
?
?
(__inference_dense_3_layer_call_fn_121105

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1188472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_layer_call_fn_121026

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1190132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_dropout_layer_call_fn_121021

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1187842
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_118784

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
A__inference_model_layer_call_and_return_conditional_losses_119360

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4
inputs_5!
ecc_conv_119254:
ecc_conv_119256:!
ecc_conv_119258: 
ecc_conv_119260: !
ecc_conv_119262:  
ecc_conv_119264: !
ecc_conv_119266: 
ecc_conv_119268:"
ecc_conv_119270:	?

ecc_conv_119272:	?
"
ecc_conv_119274:	
?
ecc_conv_119276:	?#
ecc_conv_1_119279:
ecc_conv_1_119281:#
ecc_conv_1_119283: 
ecc_conv_1_119285: #
ecc_conv_1_119287:  
ecc_conv_1_119289: #
ecc_conv_1_119291: 
ecc_conv_1_119293:%
ecc_conv_1_119295:
??!
ecc_conv_1_119297:
??%
ecc_conv_1_119299:
?? 
ecc_conv_1_119301:	?#
ecc_conv_2_119304:
ecc_conv_2_119306:#
ecc_conv_2_119308: 
ecc_conv_2_119310: #
ecc_conv_2_119312:  
ecc_conv_2_119314: #
ecc_conv_2_119316: 
ecc_conv_2_119318:%
ecc_conv_2_119320:
??!
ecc_conv_2_119322:
??%
ecc_conv_2_119324:
?? 
ecc_conv_2_119326:	?0
global_attention_pool_119329:
??+
global_attention_pool_119331:	?0
global_attention_pool_119333:
??+
global_attention_pool_119335:	? 
dense_119339:
??
dense_119341:	?"
dense_1_119344:
??
dense_1_119346:	?"
dense_2_119349:
??
dense_2_119351:	?!
dense_3_119354:	?
dense_3_119356:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dropout/StatefulPartitionedCall? ecc_conv/StatefulPartitionedCall?"ecc_conv_1/StatefulPartitionedCall?"ecc_conv_2/StatefulPartitionedCall?-global_attention_pool/StatefulPartitionedCall?
 ecc_conv/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4ecc_conv_119254ecc_conv_119256ecc_conv_119258ecc_conv_119260ecc_conv_119262ecc_conv_119264ecc_conv_119266ecc_conv_119268ecc_conv_119270ecc_conv_119272ecc_conv_119274ecc_conv_119276*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_1185192"
 ecc_conv/StatefulPartitionedCall?
"ecc_conv_1/StatefulPartitionedCallStatefulPartitionedCall)ecc_conv/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_1_119279ecc_conv_1_119281ecc_conv_1_119283ecc_conv_1_119285ecc_conv_1_119287ecc_conv_1_119289ecc_conv_1_119291ecc_conv_1_119293ecc_conv_1_119295ecc_conv_1_119297ecc_conv_1_119299ecc_conv_1_119301*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_1186212$
"ecc_conv_1/StatefulPartitionedCall?
"ecc_conv_2/StatefulPartitionedCallStatefulPartitionedCall+ecc_conv_1/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_2_119304ecc_conv_2_119306ecc_conv_2_119308ecc_conv_2_119310ecc_conv_2_119312ecc_conv_2_119314ecc_conv_2_119316ecc_conv_2_119318ecc_conv_2_119320ecc_conv_2_119322ecc_conv_2_119324ecc_conv_2_119326*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_1187232$
"ecc_conv_2/StatefulPartitionedCall?
-global_attention_pool/StatefulPartitionedCallStatefulPartitionedCall+ecc_conv_2/StatefulPartitionedCall:output:0inputs_5global_attention_pool_119329global_attention_pool_119331global_attention_pool_119333global_attention_pool_119335*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_1187692/
-global_attention_pool/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall6global_attention_pool/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1190132!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_119339dense_119341*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1187972
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_119344dense_1_119346*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1188142!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_119349dense_2_119351*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1188312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_119354dense_3_119356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1188472!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall!^ecc_conv/StatefulPartitionedCall#^ecc_conv_1/StatefulPartitionedCall#^ecc_conv_2/StatefulPartitionedCall.^global_attention_pool/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2D
 ecc_conv/StatefulPartitionedCall ecc_conv/StatefulPartitionedCall2H
"ecc_conv_1/StatefulPartitionedCall"ecc_conv_1/StatefulPartitionedCall2H
"ecc_conv_2/StatefulPartitionedCall"ecc_conv_2/StatefulPartitionedCall2^
-global_attention_pool/StatefulPartitionedCall-global_attention_pool/StatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
ъ
?e
"__inference__traced_restore_122049
file_prefix8
%assignvariableop_ecc_conv_root_kernel:	
?/
 assignvariableop_1_ecc_conv_bias:	?=
)assignvariableop_2_ecc_conv_1_root_kernel:
??1
"assignvariableop_3_ecc_conv_1_bias:	?=
)assignvariableop_4_ecc_conv_2_root_kernel:
??1
"assignvariableop_5_ecc_conv_2_bias:	?3
assignvariableop_6_dense_kernel:
??,
assignvariableop_7_dense_bias:	?5
!assignvariableop_8_dense_1_kernel:
??.
assignvariableop_9_dense_1_bias:	?6
"assignvariableop_10_dense_2_kernel:
??/
 assignvariableop_11_dense_2_bias:	?5
"assignvariableop_12_dense_3_kernel:	?.
 assignvariableop_13_dense_3_bias:$
assignvariableop_14_beta_1: $
assignvariableop_15_beta_2: #
assignvariableop_16_decay: +
!assignvariableop_17_learning_rate: '
assignvariableop_18_adam_iter:	 ;
)assignvariableop_19_ecc_conv_fgn_0_kernel:5
'assignvariableop_20_ecc_conv_fgn_0_bias:;
)assignvariableop_21_ecc_conv_fgn_1_kernel: 5
'assignvariableop_22_ecc_conv_fgn_1_bias: ;
)assignvariableop_23_ecc_conv_fgn_2_kernel:  5
'assignvariableop_24_ecc_conv_fgn_2_bias: ;
)assignvariableop_25_ecc_conv_fgn_3_kernel: 5
'assignvariableop_26_ecc_conv_fgn_3_bias:>
+assignvariableop_27_ecc_conv_fgn_out_kernel:	?
8
)assignvariableop_28_ecc_conv_fgn_out_bias:	?
=
+assignvariableop_29_ecc_conv_1_fgn_0_kernel:7
)assignvariableop_30_ecc_conv_1_fgn_0_bias:=
+assignvariableop_31_ecc_conv_1_fgn_1_kernel: 7
)assignvariableop_32_ecc_conv_1_fgn_1_bias: =
+assignvariableop_33_ecc_conv_1_fgn_2_kernel:  7
)assignvariableop_34_ecc_conv_1_fgn_2_bias: =
+assignvariableop_35_ecc_conv_1_fgn_3_kernel: 7
)assignvariableop_36_ecc_conv_1_fgn_3_bias:A
-assignvariableop_37_ecc_conv_1_fgn_out_kernel:
??;
+assignvariableop_38_ecc_conv_1_fgn_out_bias:
??=
+assignvariableop_39_ecc_conv_2_fgn_0_kernel:7
)assignvariableop_40_ecc_conv_2_fgn_0_bias:=
+assignvariableop_41_ecc_conv_2_fgn_1_kernel: 7
)assignvariableop_42_ecc_conv_2_fgn_1_bias: =
+assignvariableop_43_ecc_conv_2_fgn_2_kernel:  7
)assignvariableop_44_ecc_conv_2_fgn_2_bias: =
+assignvariableop_45_ecc_conv_2_fgn_3_kernel: 7
)assignvariableop_46_ecc_conv_2_fgn_3_bias:A
-assignvariableop_47_ecc_conv_2_fgn_out_kernel:
??;
+assignvariableop_48_ecc_conv_2_fgn_out_bias:
??S
?assignvariableop_49_global_attention_pool_features_layer_kernel:
??L
=assignvariableop_50_global_attention_pool_features_layer_bias:	?O
;assignvariableop_51_global_attention_pool_attn_layer_kernel:
??H
9assignvariableop_52_global_attention_pool_attn_layer_bias:	?#
assignvariableop_53_total: #
assignvariableop_54_count: B
/assignvariableop_55_adam_ecc_conv_root_kernel_m:	
?7
(assignvariableop_56_adam_ecc_conv_bias_m:	?E
1assignvariableop_57_adam_ecc_conv_1_root_kernel_m:
??9
*assignvariableop_58_adam_ecc_conv_1_bias_m:	?E
1assignvariableop_59_adam_ecc_conv_2_root_kernel_m:
??9
*assignvariableop_60_adam_ecc_conv_2_bias_m:	?;
'assignvariableop_61_adam_dense_kernel_m:
??4
%assignvariableop_62_adam_dense_bias_m:	?=
)assignvariableop_63_adam_dense_1_kernel_m:
??6
'assignvariableop_64_adam_dense_1_bias_m:	?=
)assignvariableop_65_adam_dense_2_kernel_m:
??6
'assignvariableop_66_adam_dense_2_bias_m:	?<
)assignvariableop_67_adam_dense_3_kernel_m:	?5
'assignvariableop_68_adam_dense_3_bias_m:B
0assignvariableop_69_adam_ecc_conv_fgn_0_kernel_m:<
.assignvariableop_70_adam_ecc_conv_fgn_0_bias_m:B
0assignvariableop_71_adam_ecc_conv_fgn_1_kernel_m: <
.assignvariableop_72_adam_ecc_conv_fgn_1_bias_m: B
0assignvariableop_73_adam_ecc_conv_fgn_2_kernel_m:  <
.assignvariableop_74_adam_ecc_conv_fgn_2_bias_m: B
0assignvariableop_75_adam_ecc_conv_fgn_3_kernel_m: <
.assignvariableop_76_adam_ecc_conv_fgn_3_bias_m:E
2assignvariableop_77_adam_ecc_conv_fgn_out_kernel_m:	?
?
0assignvariableop_78_adam_ecc_conv_fgn_out_bias_m:	?
D
2assignvariableop_79_adam_ecc_conv_1_fgn_0_kernel_m:>
0assignvariableop_80_adam_ecc_conv_1_fgn_0_bias_m:D
2assignvariableop_81_adam_ecc_conv_1_fgn_1_kernel_m: >
0assignvariableop_82_adam_ecc_conv_1_fgn_1_bias_m: D
2assignvariableop_83_adam_ecc_conv_1_fgn_2_kernel_m:  >
0assignvariableop_84_adam_ecc_conv_1_fgn_2_bias_m: D
2assignvariableop_85_adam_ecc_conv_1_fgn_3_kernel_m: >
0assignvariableop_86_adam_ecc_conv_1_fgn_3_bias_m:H
4assignvariableop_87_adam_ecc_conv_1_fgn_out_kernel_m:
??B
2assignvariableop_88_adam_ecc_conv_1_fgn_out_bias_m:
??D
2assignvariableop_89_adam_ecc_conv_2_fgn_0_kernel_m:>
0assignvariableop_90_adam_ecc_conv_2_fgn_0_bias_m:D
2assignvariableop_91_adam_ecc_conv_2_fgn_1_kernel_m: >
0assignvariableop_92_adam_ecc_conv_2_fgn_1_bias_m: D
2assignvariableop_93_adam_ecc_conv_2_fgn_2_kernel_m:  >
0assignvariableop_94_adam_ecc_conv_2_fgn_2_bias_m: D
2assignvariableop_95_adam_ecc_conv_2_fgn_3_kernel_m: >
0assignvariableop_96_adam_ecc_conv_2_fgn_3_bias_m:H
4assignvariableop_97_adam_ecc_conv_2_fgn_out_kernel_m:
??B
2assignvariableop_98_adam_ecc_conv_2_fgn_out_bias_m:
??Z
Fassignvariableop_99_adam_global_attention_pool_features_layer_kernel_m:
??T
Eassignvariableop_100_adam_global_attention_pool_features_layer_bias_m:	?W
Cassignvariableop_101_adam_global_attention_pool_attn_layer_kernel_m:
??P
Aassignvariableop_102_adam_global_attention_pool_attn_layer_bias_m:	?C
0assignvariableop_103_adam_ecc_conv_root_kernel_v:	
?8
)assignvariableop_104_adam_ecc_conv_bias_v:	?F
2assignvariableop_105_adam_ecc_conv_1_root_kernel_v:
??:
+assignvariableop_106_adam_ecc_conv_1_bias_v:	?F
2assignvariableop_107_adam_ecc_conv_2_root_kernel_v:
??:
+assignvariableop_108_adam_ecc_conv_2_bias_v:	?<
(assignvariableop_109_adam_dense_kernel_v:
??5
&assignvariableop_110_adam_dense_bias_v:	?>
*assignvariableop_111_adam_dense_1_kernel_v:
??7
(assignvariableop_112_adam_dense_1_bias_v:	?>
*assignvariableop_113_adam_dense_2_kernel_v:
??7
(assignvariableop_114_adam_dense_2_bias_v:	?=
*assignvariableop_115_adam_dense_3_kernel_v:	?6
(assignvariableop_116_adam_dense_3_bias_v:C
1assignvariableop_117_adam_ecc_conv_fgn_0_kernel_v:=
/assignvariableop_118_adam_ecc_conv_fgn_0_bias_v:C
1assignvariableop_119_adam_ecc_conv_fgn_1_kernel_v: =
/assignvariableop_120_adam_ecc_conv_fgn_1_bias_v: C
1assignvariableop_121_adam_ecc_conv_fgn_2_kernel_v:  =
/assignvariableop_122_adam_ecc_conv_fgn_2_bias_v: C
1assignvariableop_123_adam_ecc_conv_fgn_3_kernel_v: =
/assignvariableop_124_adam_ecc_conv_fgn_3_bias_v:F
3assignvariableop_125_adam_ecc_conv_fgn_out_kernel_v:	?
@
1assignvariableop_126_adam_ecc_conv_fgn_out_bias_v:	?
E
3assignvariableop_127_adam_ecc_conv_1_fgn_0_kernel_v:?
1assignvariableop_128_adam_ecc_conv_1_fgn_0_bias_v:E
3assignvariableop_129_adam_ecc_conv_1_fgn_1_kernel_v: ?
1assignvariableop_130_adam_ecc_conv_1_fgn_1_bias_v: E
3assignvariableop_131_adam_ecc_conv_1_fgn_2_kernel_v:  ?
1assignvariableop_132_adam_ecc_conv_1_fgn_2_bias_v: E
3assignvariableop_133_adam_ecc_conv_1_fgn_3_kernel_v: ?
1assignvariableop_134_adam_ecc_conv_1_fgn_3_bias_v:I
5assignvariableop_135_adam_ecc_conv_1_fgn_out_kernel_v:
??C
3assignvariableop_136_adam_ecc_conv_1_fgn_out_bias_v:
??E
3assignvariableop_137_adam_ecc_conv_2_fgn_0_kernel_v:?
1assignvariableop_138_adam_ecc_conv_2_fgn_0_bias_v:E
3assignvariableop_139_adam_ecc_conv_2_fgn_1_kernel_v: ?
1assignvariableop_140_adam_ecc_conv_2_fgn_1_bias_v: E
3assignvariableop_141_adam_ecc_conv_2_fgn_2_kernel_v:  ?
1assignvariableop_142_adam_ecc_conv_2_fgn_2_bias_v: E
3assignvariableop_143_adam_ecc_conv_2_fgn_3_kernel_v: ?
1assignvariableop_144_adam_ecc_conv_2_fgn_3_bias_v:I
5assignvariableop_145_adam_ecc_conv_2_fgn_out_kernel_v:
??C
3assignvariableop_146_adam_ecc_conv_2_fgn_out_bias_v:
??[
Gassignvariableop_147_adam_global_attention_pool_features_layer_kernel_v:
??T
Eassignvariableop_148_adam_global_attention_pool_features_layer_bias_v:	?W
Cassignvariableop_149_adam_global_attention_pool_attn_layer_kernel_v:
??P
Aassignvariableop_150_adam_global_attention_pool_attn_layer_bias_v:	?
identity_152??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?K
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?J
value?JB?J?B;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_ecc_conv_root_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_ecc_conv_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp)assignvariableop_2_ecc_conv_1_root_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_ecc_conv_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp)assignvariableop_4_ecc_conv_2_root_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_ecc_conv_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_ecc_conv_fgn_0_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_ecc_conv_fgn_0_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_ecc_conv_fgn_1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_ecc_conv_fgn_1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_ecc_conv_fgn_2_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_ecc_conv_fgn_2_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_ecc_conv_fgn_3_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_ecc_conv_fgn_3_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_ecc_conv_fgn_out_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_ecc_conv_fgn_out_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_ecc_conv_1_fgn_0_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_ecc_conv_1_fgn_0_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_ecc_conv_1_fgn_1_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_ecc_conv_1_fgn_1_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_ecc_conv_1_fgn_2_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_ecc_conv_1_fgn_2_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_ecc_conv_1_fgn_3_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_ecc_conv_1_fgn_3_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp-assignvariableop_37_ecc_conv_1_fgn_out_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_ecc_conv_1_fgn_out_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_ecc_conv_2_fgn_0_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_ecc_conv_2_fgn_0_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_ecc_conv_2_fgn_1_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_ecc_conv_2_fgn_1_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_ecc_conv_2_fgn_2_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_ecc_conv_2_fgn_2_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_ecc_conv_2_fgn_3_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_ecc_conv_2_fgn_3_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp-assignvariableop_47_ecc_conv_2_fgn_out_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp+assignvariableop_48_ecc_conv_2_fgn_out_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp?assignvariableop_49_global_attention_pool_features_layer_kernelIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp=assignvariableop_50_global_attention_pool_features_layer_biasIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp;assignvariableop_51_global_attention_pool_attn_layer_kernelIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp9assignvariableop_52_global_attention_pool_attn_layer_biasIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp/assignvariableop_55_adam_ecc_conv_root_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_ecc_conv_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp1assignvariableop_57_adam_ecc_conv_1_root_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_ecc_conv_1_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp1assignvariableop_59_adam_ecc_conv_2_root_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_ecc_conv_2_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_dense_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp%assignvariableop_62_adam_dense_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_1_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_1_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_dense_2_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_dense_2_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_3_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_3_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp0assignvariableop_69_adam_ecc_conv_fgn_0_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp.assignvariableop_70_adam_ecc_conv_fgn_0_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp0assignvariableop_71_adam_ecc_conv_fgn_1_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp.assignvariableop_72_adam_ecc_conv_fgn_1_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp0assignvariableop_73_adam_ecc_conv_fgn_2_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp.assignvariableop_74_adam_ecc_conv_fgn_2_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp0assignvariableop_75_adam_ecc_conv_fgn_3_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp.assignvariableop_76_adam_ecc_conv_fgn_3_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp2assignvariableop_77_adam_ecc_conv_fgn_out_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp0assignvariableop_78_adam_ecc_conv_fgn_out_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp2assignvariableop_79_adam_ecc_conv_1_fgn_0_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp0assignvariableop_80_adam_ecc_conv_1_fgn_0_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp2assignvariableop_81_adam_ecc_conv_1_fgn_1_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp0assignvariableop_82_adam_ecc_conv_1_fgn_1_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp2assignvariableop_83_adam_ecc_conv_1_fgn_2_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp0assignvariableop_84_adam_ecc_conv_1_fgn_2_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp2assignvariableop_85_adam_ecc_conv_1_fgn_3_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp0assignvariableop_86_adam_ecc_conv_1_fgn_3_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp4assignvariableop_87_adam_ecc_conv_1_fgn_out_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp2assignvariableop_88_adam_ecc_conv_1_fgn_out_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp2assignvariableop_89_adam_ecc_conv_2_fgn_0_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp0assignvariableop_90_adam_ecc_conv_2_fgn_0_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp2assignvariableop_91_adam_ecc_conv_2_fgn_1_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp0assignvariableop_92_adam_ecc_conv_2_fgn_1_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp2assignvariableop_93_adam_ecc_conv_2_fgn_2_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp0assignvariableop_94_adam_ecc_conv_2_fgn_2_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp2assignvariableop_95_adam_ecc_conv_2_fgn_3_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp0assignvariableop_96_adam_ecc_conv_2_fgn_3_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp4assignvariableop_97_adam_ecc_conv_2_fgn_out_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp2assignvariableop_98_adam_ecc_conv_2_fgn_out_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOpFassignvariableop_99_adam_global_attention_pool_features_layer_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOpEassignvariableop_100_adam_global_attention_pool_features_layer_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOpCassignvariableop_101_adam_global_attention_pool_attn_layer_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOpAassignvariableop_102_adam_global_attention_pool_attn_layer_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp0assignvariableop_103_adam_ecc_conv_root_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp)assignvariableop_104_adam_ecc_conv_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp2assignvariableop_105_adam_ecc_conv_1_root_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_ecc_conv_1_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp2assignvariableop_107_adam_ecc_conv_2_root_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp+assignvariableop_108_adam_ecc_conv_2_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp(assignvariableop_109_adam_dense_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp&assignvariableop_110_adam_dense_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp*assignvariableop_111_adam_dense_1_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp(assignvariableop_112_adam_dense_1_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp*assignvariableop_113_adam_dense_2_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp(assignvariableop_114_adam_dense_2_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp*assignvariableop_115_adam_dense_3_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp(assignvariableop_116_adam_dense_3_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp1assignvariableop_117_adam_ecc_conv_fgn_0_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp/assignvariableop_118_adam_ecc_conv_fgn_0_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp1assignvariableop_119_adam_ecc_conv_fgn_1_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp/assignvariableop_120_adam_ecc_conv_fgn_1_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121?
AssignVariableOp_121AssignVariableOp1assignvariableop_121_adam_ecc_conv_fgn_2_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122?
AssignVariableOp_122AssignVariableOp/assignvariableop_122_adam_ecc_conv_fgn_2_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123?
AssignVariableOp_123AssignVariableOp1assignvariableop_123_adam_ecc_conv_fgn_3_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124?
AssignVariableOp_124AssignVariableOp/assignvariableop_124_adam_ecc_conv_fgn_3_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125?
AssignVariableOp_125AssignVariableOp3assignvariableop_125_adam_ecc_conv_fgn_out_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126?
AssignVariableOp_126AssignVariableOp1assignvariableop_126_adam_ecc_conv_fgn_out_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127?
AssignVariableOp_127AssignVariableOp3assignvariableop_127_adam_ecc_conv_1_fgn_0_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128?
AssignVariableOp_128AssignVariableOp1assignvariableop_128_adam_ecc_conv_1_fgn_0_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129?
AssignVariableOp_129AssignVariableOp3assignvariableop_129_adam_ecc_conv_1_fgn_1_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130?
AssignVariableOp_130AssignVariableOp1assignvariableop_130_adam_ecc_conv_1_fgn_1_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131?
AssignVariableOp_131AssignVariableOp3assignvariableop_131_adam_ecc_conv_1_fgn_2_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132?
AssignVariableOp_132AssignVariableOp1assignvariableop_132_adam_ecc_conv_1_fgn_2_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133?
AssignVariableOp_133AssignVariableOp3assignvariableop_133_adam_ecc_conv_1_fgn_3_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134?
AssignVariableOp_134AssignVariableOp1assignvariableop_134_adam_ecc_conv_1_fgn_3_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_134q
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:2
Identity_135?
AssignVariableOp_135AssignVariableOp5assignvariableop_135_adam_ecc_conv_1_fgn_out_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_135q
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:2
Identity_136?
AssignVariableOp_136AssignVariableOp3assignvariableop_136_adam_ecc_conv_1_fgn_out_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_136q
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:2
Identity_137?
AssignVariableOp_137AssignVariableOp3assignvariableop_137_adam_ecc_conv_2_fgn_0_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_137q
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:2
Identity_138?
AssignVariableOp_138AssignVariableOp1assignvariableop_138_adam_ecc_conv_2_fgn_0_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_138q
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:2
Identity_139?
AssignVariableOp_139AssignVariableOp3assignvariableop_139_adam_ecc_conv_2_fgn_1_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139q
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:2
Identity_140?
AssignVariableOp_140AssignVariableOp1assignvariableop_140_adam_ecc_conv_2_fgn_1_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_140q
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:2
Identity_141?
AssignVariableOp_141AssignVariableOp3assignvariableop_141_adam_ecc_conv_2_fgn_2_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_141q
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:2
Identity_142?
AssignVariableOp_142AssignVariableOp1assignvariableop_142_adam_ecc_conv_2_fgn_2_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_142q
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:2
Identity_143?
AssignVariableOp_143AssignVariableOp3assignvariableop_143_adam_ecc_conv_2_fgn_3_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_143q
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:2
Identity_144?
AssignVariableOp_144AssignVariableOp1assignvariableop_144_adam_ecc_conv_2_fgn_3_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_144q
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:2
Identity_145?
AssignVariableOp_145AssignVariableOp5assignvariableop_145_adam_ecc_conv_2_fgn_out_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_145q
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:2
Identity_146?
AssignVariableOp_146AssignVariableOp3assignvariableop_146_adam_ecc_conv_2_fgn_out_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_146q
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:2
Identity_147?
AssignVariableOp_147AssignVariableOpGassignvariableop_147_adam_global_attention_pool_features_layer_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_147q
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:2
Identity_148?
AssignVariableOp_148AssignVariableOpEassignvariableop_148_adam_global_attention_pool_features_layer_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_148q
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:2
Identity_149?
AssignVariableOp_149AssignVariableOpCassignvariableop_149_adam_global_attention_pool_attn_layer_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149q
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:2
Identity_150?
AssignVariableOp_150AssignVariableOpAassignvariableop_150_adam_global_attention_pool_attn_layer_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_151Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_151?
Identity_152IdentityIdentity_151:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_152"%
identity_152Identity_152:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_150AssignVariableOp_1502*
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
??
?E
__inference__traced_save_121586
file_prefix3
/savev2_ecc_conv_root_kernel_read_readvariableop,
(savev2_ecc_conv_bias_read_readvariableop5
1savev2_ecc_conv_1_root_kernel_read_readvariableop.
*savev2_ecc_conv_1_bias_read_readvariableop5
1savev2_ecc_conv_2_root_kernel_read_readvariableop.
*savev2_ecc_conv_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	4
0savev2_ecc_conv_fgn_0_kernel_read_readvariableop2
.savev2_ecc_conv_fgn_0_bias_read_readvariableop4
0savev2_ecc_conv_fgn_1_kernel_read_readvariableop2
.savev2_ecc_conv_fgn_1_bias_read_readvariableop4
0savev2_ecc_conv_fgn_2_kernel_read_readvariableop2
.savev2_ecc_conv_fgn_2_bias_read_readvariableop4
0savev2_ecc_conv_fgn_3_kernel_read_readvariableop2
.savev2_ecc_conv_fgn_3_bias_read_readvariableop6
2savev2_ecc_conv_fgn_out_kernel_read_readvariableop4
0savev2_ecc_conv_fgn_out_bias_read_readvariableop6
2savev2_ecc_conv_1_fgn_0_kernel_read_readvariableop4
0savev2_ecc_conv_1_fgn_0_bias_read_readvariableop6
2savev2_ecc_conv_1_fgn_1_kernel_read_readvariableop4
0savev2_ecc_conv_1_fgn_1_bias_read_readvariableop6
2savev2_ecc_conv_1_fgn_2_kernel_read_readvariableop4
0savev2_ecc_conv_1_fgn_2_bias_read_readvariableop6
2savev2_ecc_conv_1_fgn_3_kernel_read_readvariableop4
0savev2_ecc_conv_1_fgn_3_bias_read_readvariableop8
4savev2_ecc_conv_1_fgn_out_kernel_read_readvariableop6
2savev2_ecc_conv_1_fgn_out_bias_read_readvariableop6
2savev2_ecc_conv_2_fgn_0_kernel_read_readvariableop4
0savev2_ecc_conv_2_fgn_0_bias_read_readvariableop6
2savev2_ecc_conv_2_fgn_1_kernel_read_readvariableop4
0savev2_ecc_conv_2_fgn_1_bias_read_readvariableop6
2savev2_ecc_conv_2_fgn_2_kernel_read_readvariableop4
0savev2_ecc_conv_2_fgn_2_bias_read_readvariableop6
2savev2_ecc_conv_2_fgn_3_kernel_read_readvariableop4
0savev2_ecc_conv_2_fgn_3_bias_read_readvariableop8
4savev2_ecc_conv_2_fgn_out_kernel_read_readvariableop6
2savev2_ecc_conv_2_fgn_out_bias_read_readvariableopJ
Fsavev2_global_attention_pool_features_layer_kernel_read_readvariableopH
Dsavev2_global_attention_pool_features_layer_bias_read_readvariableopF
Bsavev2_global_attention_pool_attn_layer_kernel_read_readvariableopD
@savev2_global_attention_pool_attn_layer_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_ecc_conv_root_kernel_m_read_readvariableop3
/savev2_adam_ecc_conv_bias_m_read_readvariableop<
8savev2_adam_ecc_conv_1_root_kernel_m_read_readvariableop5
1savev2_adam_ecc_conv_1_bias_m_read_readvariableop<
8savev2_adam_ecc_conv_2_root_kernel_m_read_readvariableop5
1savev2_adam_ecc_conv_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_0_kernel_m_read_readvariableop9
5savev2_adam_ecc_conv_fgn_0_bias_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_1_kernel_m_read_readvariableop9
5savev2_adam_ecc_conv_fgn_1_bias_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_2_kernel_m_read_readvariableop9
5savev2_adam_ecc_conv_fgn_2_bias_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_3_kernel_m_read_readvariableop9
5savev2_adam_ecc_conv_fgn_3_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_fgn_out_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_fgn_out_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_0_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_0_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_1_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_1_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_2_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_2_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_3_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_3_bias_m_read_readvariableop?
;savev2_adam_ecc_conv_1_fgn_out_kernel_m_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_out_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_0_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_0_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_1_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_1_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_2_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_2_bias_m_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_3_kernel_m_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_3_bias_m_read_readvariableop?
;savev2_adam_ecc_conv_2_fgn_out_kernel_m_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_out_bias_m_read_readvariableopQ
Msavev2_adam_global_attention_pool_features_layer_kernel_m_read_readvariableopO
Ksavev2_adam_global_attention_pool_features_layer_bias_m_read_readvariableopM
Isavev2_adam_global_attention_pool_attn_layer_kernel_m_read_readvariableopK
Gsavev2_adam_global_attention_pool_attn_layer_bias_m_read_readvariableop:
6savev2_adam_ecc_conv_root_kernel_v_read_readvariableop3
/savev2_adam_ecc_conv_bias_v_read_readvariableop<
8savev2_adam_ecc_conv_1_root_kernel_v_read_readvariableop5
1savev2_adam_ecc_conv_1_bias_v_read_readvariableop<
8savev2_adam_ecc_conv_2_root_kernel_v_read_readvariableop5
1savev2_adam_ecc_conv_2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_0_kernel_v_read_readvariableop9
5savev2_adam_ecc_conv_fgn_0_bias_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_1_kernel_v_read_readvariableop9
5savev2_adam_ecc_conv_fgn_1_bias_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_2_kernel_v_read_readvariableop9
5savev2_adam_ecc_conv_fgn_2_bias_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_3_kernel_v_read_readvariableop9
5savev2_adam_ecc_conv_fgn_3_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_fgn_out_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_fgn_out_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_0_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_0_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_1_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_1_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_2_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_2_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_3_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_1_fgn_3_bias_v_read_readvariableop?
;savev2_adam_ecc_conv_1_fgn_out_kernel_v_read_readvariableop=
9savev2_adam_ecc_conv_1_fgn_out_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_0_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_0_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_1_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_1_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_2_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_2_bias_v_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_3_kernel_v_read_readvariableop;
7savev2_adam_ecc_conv_2_fgn_3_bias_v_read_readvariableop?
;savev2_adam_ecc_conv_2_fgn_out_kernel_v_read_readvariableop=
9savev2_adam_ecc_conv_2_fgn_out_bias_v_read_readvariableopQ
Msavev2_adam_global_attention_pool_features_layer_kernel_v_read_readvariableopO
Ksavev2_adam_global_attention_pool_features_layer_bias_v_read_readvariableopM
Isavev2_adam_global_attention_pool_attn_layer_kernel_v_read_readvariableopK
Gsavev2_adam_global_attention_pool_attn_layer_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?K
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?J
value?JB?J?B;layer_with_weights-0/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/root_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/root_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?B
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_ecc_conv_root_kernel_read_readvariableop(savev2_ecc_conv_bias_read_readvariableop1savev2_ecc_conv_1_root_kernel_read_readvariableop*savev2_ecc_conv_1_bias_read_readvariableop1savev2_ecc_conv_2_root_kernel_read_readvariableop*savev2_ecc_conv_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop0savev2_ecc_conv_fgn_0_kernel_read_readvariableop.savev2_ecc_conv_fgn_0_bias_read_readvariableop0savev2_ecc_conv_fgn_1_kernel_read_readvariableop.savev2_ecc_conv_fgn_1_bias_read_readvariableop0savev2_ecc_conv_fgn_2_kernel_read_readvariableop.savev2_ecc_conv_fgn_2_bias_read_readvariableop0savev2_ecc_conv_fgn_3_kernel_read_readvariableop.savev2_ecc_conv_fgn_3_bias_read_readvariableop2savev2_ecc_conv_fgn_out_kernel_read_readvariableop0savev2_ecc_conv_fgn_out_bias_read_readvariableop2savev2_ecc_conv_1_fgn_0_kernel_read_readvariableop0savev2_ecc_conv_1_fgn_0_bias_read_readvariableop2savev2_ecc_conv_1_fgn_1_kernel_read_readvariableop0savev2_ecc_conv_1_fgn_1_bias_read_readvariableop2savev2_ecc_conv_1_fgn_2_kernel_read_readvariableop0savev2_ecc_conv_1_fgn_2_bias_read_readvariableop2savev2_ecc_conv_1_fgn_3_kernel_read_readvariableop0savev2_ecc_conv_1_fgn_3_bias_read_readvariableop4savev2_ecc_conv_1_fgn_out_kernel_read_readvariableop2savev2_ecc_conv_1_fgn_out_bias_read_readvariableop2savev2_ecc_conv_2_fgn_0_kernel_read_readvariableop0savev2_ecc_conv_2_fgn_0_bias_read_readvariableop2savev2_ecc_conv_2_fgn_1_kernel_read_readvariableop0savev2_ecc_conv_2_fgn_1_bias_read_readvariableop2savev2_ecc_conv_2_fgn_2_kernel_read_readvariableop0savev2_ecc_conv_2_fgn_2_bias_read_readvariableop2savev2_ecc_conv_2_fgn_3_kernel_read_readvariableop0savev2_ecc_conv_2_fgn_3_bias_read_readvariableop4savev2_ecc_conv_2_fgn_out_kernel_read_readvariableop2savev2_ecc_conv_2_fgn_out_bias_read_readvariableopFsavev2_global_attention_pool_features_layer_kernel_read_readvariableopDsavev2_global_attention_pool_features_layer_bias_read_readvariableopBsavev2_global_attention_pool_attn_layer_kernel_read_readvariableop@savev2_global_attention_pool_attn_layer_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_ecc_conv_root_kernel_m_read_readvariableop/savev2_adam_ecc_conv_bias_m_read_readvariableop8savev2_adam_ecc_conv_1_root_kernel_m_read_readvariableop1savev2_adam_ecc_conv_1_bias_m_read_readvariableop8savev2_adam_ecc_conv_2_root_kernel_m_read_readvariableop1savev2_adam_ecc_conv_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop7savev2_adam_ecc_conv_fgn_0_kernel_m_read_readvariableop5savev2_adam_ecc_conv_fgn_0_bias_m_read_readvariableop7savev2_adam_ecc_conv_fgn_1_kernel_m_read_readvariableop5savev2_adam_ecc_conv_fgn_1_bias_m_read_readvariableop7savev2_adam_ecc_conv_fgn_2_kernel_m_read_readvariableop5savev2_adam_ecc_conv_fgn_2_bias_m_read_readvariableop7savev2_adam_ecc_conv_fgn_3_kernel_m_read_readvariableop5savev2_adam_ecc_conv_fgn_3_bias_m_read_readvariableop9savev2_adam_ecc_conv_fgn_out_kernel_m_read_readvariableop7savev2_adam_ecc_conv_fgn_out_bias_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_0_kernel_m_read_readvariableop7savev2_adam_ecc_conv_1_fgn_0_bias_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_1_kernel_m_read_readvariableop7savev2_adam_ecc_conv_1_fgn_1_bias_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_2_kernel_m_read_readvariableop7savev2_adam_ecc_conv_1_fgn_2_bias_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_3_kernel_m_read_readvariableop7savev2_adam_ecc_conv_1_fgn_3_bias_m_read_readvariableop;savev2_adam_ecc_conv_1_fgn_out_kernel_m_read_readvariableop9savev2_adam_ecc_conv_1_fgn_out_bias_m_read_readvariableop9savev2_adam_ecc_conv_2_fgn_0_kernel_m_read_readvariableop7savev2_adam_ecc_conv_2_fgn_0_bias_m_read_readvariableop9savev2_adam_ecc_conv_2_fgn_1_kernel_m_read_readvariableop7savev2_adam_ecc_conv_2_fgn_1_bias_m_read_readvariableop9savev2_adam_ecc_conv_2_fgn_2_kernel_m_read_readvariableop7savev2_adam_ecc_conv_2_fgn_2_bias_m_read_readvariableop9savev2_adam_ecc_conv_2_fgn_3_kernel_m_read_readvariableop7savev2_adam_ecc_conv_2_fgn_3_bias_m_read_readvariableop;savev2_adam_ecc_conv_2_fgn_out_kernel_m_read_readvariableop9savev2_adam_ecc_conv_2_fgn_out_bias_m_read_readvariableopMsavev2_adam_global_attention_pool_features_layer_kernel_m_read_readvariableopKsavev2_adam_global_attention_pool_features_layer_bias_m_read_readvariableopIsavev2_adam_global_attention_pool_attn_layer_kernel_m_read_readvariableopGsavev2_adam_global_attention_pool_attn_layer_bias_m_read_readvariableop6savev2_adam_ecc_conv_root_kernel_v_read_readvariableop/savev2_adam_ecc_conv_bias_v_read_readvariableop8savev2_adam_ecc_conv_1_root_kernel_v_read_readvariableop1savev2_adam_ecc_conv_1_bias_v_read_readvariableop8savev2_adam_ecc_conv_2_root_kernel_v_read_readvariableop1savev2_adam_ecc_conv_2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop7savev2_adam_ecc_conv_fgn_0_kernel_v_read_readvariableop5savev2_adam_ecc_conv_fgn_0_bias_v_read_readvariableop7savev2_adam_ecc_conv_fgn_1_kernel_v_read_readvariableop5savev2_adam_ecc_conv_fgn_1_bias_v_read_readvariableop7savev2_adam_ecc_conv_fgn_2_kernel_v_read_readvariableop5savev2_adam_ecc_conv_fgn_2_bias_v_read_readvariableop7savev2_adam_ecc_conv_fgn_3_kernel_v_read_readvariableop5savev2_adam_ecc_conv_fgn_3_bias_v_read_readvariableop9savev2_adam_ecc_conv_fgn_out_kernel_v_read_readvariableop7savev2_adam_ecc_conv_fgn_out_bias_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_0_kernel_v_read_readvariableop7savev2_adam_ecc_conv_1_fgn_0_bias_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_1_kernel_v_read_readvariableop7savev2_adam_ecc_conv_1_fgn_1_bias_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_2_kernel_v_read_readvariableop7savev2_adam_ecc_conv_1_fgn_2_bias_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_3_kernel_v_read_readvariableop7savev2_adam_ecc_conv_1_fgn_3_bias_v_read_readvariableop;savev2_adam_ecc_conv_1_fgn_out_kernel_v_read_readvariableop9savev2_adam_ecc_conv_1_fgn_out_bias_v_read_readvariableop9savev2_adam_ecc_conv_2_fgn_0_kernel_v_read_readvariableop7savev2_adam_ecc_conv_2_fgn_0_bias_v_read_readvariableop9savev2_adam_ecc_conv_2_fgn_1_kernel_v_read_readvariableop7savev2_adam_ecc_conv_2_fgn_1_bias_v_read_readvariableop9savev2_adam_ecc_conv_2_fgn_2_kernel_v_read_readvariableop7savev2_adam_ecc_conv_2_fgn_2_bias_v_read_readvariableop9savev2_adam_ecc_conv_2_fgn_3_kernel_v_read_readvariableop7savev2_adam_ecc_conv_2_fgn_3_bias_v_read_readvariableop;savev2_adam_ecc_conv_2_fgn_out_kernel_v_read_readvariableop9savev2_adam_ecc_conv_2_fgn_out_bias_v_read_readvariableopMsavev2_adam_global_attention_pool_features_layer_kernel_v_read_readvariableopKsavev2_adam_global_attention_pool_features_layer_bias_v_read_readvariableopIsavev2_adam_global_attention_pool_attn_layer_kernel_v_read_readvariableopGsavev2_adam_global_attention_pool_attn_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?

_input_shapes?	
?	: :	
?:?:
??:?:
??:?:
??:?:
??:?:
??:?:	?:: : : : : ::: : :  : : ::	?
:?
::: : :  : : ::
??:??::: : :  : : ::
??:??:
??:?:
??:?: : :	
?:?:
??:?:
??:?:
??:?:
??:?:
??:?:	?:::: : :  : : ::	?
:?
::: : :  : : ::
??:??::: : :  : : ::
??:??:
??:?:
??:?:	
?:?:
??:?:
??:?:
??:?:
??:?:
??:?:	?:::: : :  : : ::	?
:?
::: : :  : : ::
??:??::: : :  : : ::
??:??:
??:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?
:!

_output_shapes	
:?
:$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

: : !

_output_shapes
: :$" 

_output_shapes

:  : #

_output_shapes
: :$$ 

_output_shapes

: : %

_output_shapes
::&&"
 
_output_shapes
:
??:"'

_output_shapes

:??:$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

: : +

_output_shapes
: :$, 

_output_shapes

:  : -

_output_shapes
: :$. 

_output_shapes

: : /

_output_shapes
::&0"
 
_output_shapes
:
??:"1

_output_shapes

:??:&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:6

_output_shapes
: :7

_output_shapes
: :%8!

_output_shapes
:	
?:!9

_output_shapes	
:?:&:"
 
_output_shapes
:
??:!;

_output_shapes	
:?:&<"
 
_output_shapes
:
??:!=

_output_shapes	
:?:&>"
 
_output_shapes
:
??:!?

_output_shapes	
:?:&@"
 
_output_shapes
:
??:!A

_output_shapes	
:?:&B"
 
_output_shapes
:
??:!C

_output_shapes	
:?:%D!

_output_shapes
:	?: E

_output_shapes
::$F 

_output_shapes

:: G

_output_shapes
::$H 

_output_shapes

: : I

_output_shapes
: :$J 

_output_shapes

:  : K

_output_shapes
: :$L 

_output_shapes

: : M

_output_shapes
::%N!

_output_shapes
:	?
:!O

_output_shapes	
:?
:$P 

_output_shapes

:: Q

_output_shapes
::$R 

_output_shapes

: : S

_output_shapes
: :$T 

_output_shapes

:  : U

_output_shapes
: :$V 

_output_shapes

: : W

_output_shapes
::&X"
 
_output_shapes
:
??:"Y

_output_shapes

:??:$Z 

_output_shapes

:: [

_output_shapes
::$\ 

_output_shapes

: : ]

_output_shapes
: :$^ 

_output_shapes

:  : _

_output_shapes
: :$` 

_output_shapes

: : a

_output_shapes
::&b"
 
_output_shapes
:
??:"c

_output_shapes

:??:&d"
 
_output_shapes
:
??:!e

_output_shapes	
:?:&f"
 
_output_shapes
:
??:!g

_output_shapes	
:?:%h!

_output_shapes
:	
?:!i

_output_shapes	
:?:&j"
 
_output_shapes
:
??:!k

_output_shapes	
:?:&l"
 
_output_shapes
:
??:!m

_output_shapes	
:?:&n"
 
_output_shapes
:
??:!o

_output_shapes	
:?:&p"
 
_output_shapes
:
??:!q

_output_shapes	
:?:&r"
 
_output_shapes
:
??:!s

_output_shapes	
:?:%t!

_output_shapes
:	?: u

_output_shapes
::$v 

_output_shapes

:: w

_output_shapes
::$x 

_output_shapes

: : y

_output_shapes
: :$z 

_output_shapes

:  : {

_output_shapes
: :$| 

_output_shapes

: : }

_output_shapes
::%~!

_output_shapes
:	?
:!

_output_shapes	
:?
:%? 

_output_shapes

::!?

_output_shapes
::%? 

_output_shapes

: :!?

_output_shapes
: :%? 

_output_shapes

:  :!?

_output_shapes
: :%? 

_output_shapes

: :!?

_output_shapes
::'?"
 
_output_shapes
:
??:#?

_output_shapes

:??:%? 

_output_shapes

::!?

_output_shapes
::%? 

_output_shapes

: :!?

_output_shapes
: :%? 

_output_shapes

:  :!?

_output_shapes
: :%? 

_output_shapes

: :!?

_output_shapes
::'?"
 
_output_shapes
:
??:#?

_output_shapes

:??:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:?

_output_shapes
: 
?
?
&__inference_dense_layer_call_fn_121046

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1187972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?	
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_118621

inputs
inputs_1	
inputs_2
inputs_3	
inputs_46
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource::
&fgn_out_matmul_readvariableop_resource:
??7
'fgn_out_biasadd_readvariableop_resource:
??2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMulinputs_4#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputs_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputsstrided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_118769

inputs
inputs_1A
-features_layer_matmul_readvariableop_resource:
??=
.features_layer_biasadd_readvariableop_resource:	?=
)attn_layer_matmul_readvariableop_resource:
??9
*attn_layer_biasadd_readvariableop_resource:	?
identity??!attn_layer/BiasAdd/ReadVariableOp? attn_layer/MatMul/ReadVariableOp?%features_layer/BiasAdd/ReadVariableOp?$features_layer/MatMul/ReadVariableOp?
$features_layer/MatMul/ReadVariableOpReadVariableOp-features_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$features_layer/MatMul/ReadVariableOp?
features_layer/MatMulMatMulinputs,features_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
features_layer/MatMul?
%features_layer/BiasAdd/ReadVariableOpReadVariableOp.features_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%features_layer/BiasAdd/ReadVariableOp?
features_layer/BiasAddBiasAddfeatures_layer/MatMul:product:0-features_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
features_layer/BiasAdd?
 attn_layer/MatMul/ReadVariableOpReadVariableOp)attn_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 attn_layer/MatMul/ReadVariableOp?
attn_layer/MatMulMatMulinputs(attn_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
attn_layer/MatMul?
!attn_layer/BiasAdd/ReadVariableOpReadVariableOp*attn_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!attn_layer/BiasAdd/ReadVariableOp?
attn_layer/BiasAddBiasAddattn_layer/MatMul:product:0)attn_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
attn_layer/BiasAdd?
attn_layer/SigmoidSigmoidattn_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
attn_layer/Sigmoid}
mulMulfeatures_layer/BiasAdd:output:0attn_layer/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
mul|

SegmentSum
SegmentSummul:z:0inputs_1*
T0*
Tindices0*(
_output_shapes
:??????????2

SegmentSum?
IdentityIdentitySegmentSum:output:0"^attn_layer/BiasAdd/ReadVariableOp!^attn_layer/MatMul/ReadVariableOp&^features_layer/BiasAdd/ReadVariableOp%^features_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:??????????:?????????: : : : 2F
!attn_layer/BiasAdd/ReadVariableOp!attn_layer/BiasAdd/ReadVariableOp2D
 attn_layer/MatMul/ReadVariableOp attn_layer/MatMul/ReadVariableOp2N
%features_layer/BiasAdd/ReadVariableOp%features_layer/BiasAdd/ReadVariableOp2L
$features_layer/MatMul/ReadVariableOp$features_layer/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
A__inference_dense_layer_call_and_return_conditional_losses_118797

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
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
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_119013

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
6__inference_global_attention_pool_layer_call_fn_120999
inputs_0
inputs_1
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_1187692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:??????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
(__inference_dense_1_layer_call_fn_121066

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1188142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_121004

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_ecc_conv_layer_call_fn_120747
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:	?

	unknown_8:	?

	unknown_9:	
?

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_1185192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:?????????
:?????????:?????????::?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_121096

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_121057

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?	
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_120823
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_06
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource::
&fgn_out_matmul_readvariableop_resource:
??7
'fgn_out_biasadd_readvariableop_resource:
??2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceJ
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMul
inputs_2_0#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputs_0strided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpv
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?W
?	
D__inference_ecc_conv_layer_call_and_return_conditional_losses_118519

inputs
inputs_1	
inputs_2
inputs_3	
inputs_46
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource:9
&fgn_out_matmul_readvariableop_resource:	?
6
'fgn_out_biasadd_readvariableop_resource:	?
1
matmul_readvariableop_resource:	
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMulinputs_4#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputs_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputsstrided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:?????????
:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_ecc_conv_2_layer_call_fn_120965
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
??
	unknown_8:
??
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_1187232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
$__inference_signature_wrapper_119907

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4
args_0_5
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:	?

	unknown_8:	?

	unknown_9:	
?

unknown_10:	?

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15:  

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:
??

unknown_20:
??

unknown_21:
??

unknown_22:	?

unknown_23:

unknown_24:

unknown_25: 

unknown_26: 

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30:

unknown_31:
??

unknown_32:
??

unknown_33:
??

unknown_34:	?

unknown_35:
??

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:	?

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3args_0_4args_0_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_46*A
Tin:
826		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012345*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1184262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameargs_0:QM
'
_output_shapes
:?????????
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:?????????
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3:QM
'
_output_shapes
:?????????
"
_user_specified_name
args_0_4:MI
#
_output_shapes
:?????????
"
_user_specified_name
args_0_5
ł
?(
A__inference_model_layer_call_and_return_conditional_losses_120426
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
inputs_3?
-ecc_conv_fgn_0_matmul_readvariableop_resource:<
.ecc_conv_fgn_0_biasadd_readvariableop_resource:?
-ecc_conv_fgn_1_matmul_readvariableop_resource: <
.ecc_conv_fgn_1_biasadd_readvariableop_resource: ?
-ecc_conv_fgn_2_matmul_readvariableop_resource:  <
.ecc_conv_fgn_2_biasadd_readvariableop_resource: ?
-ecc_conv_fgn_3_matmul_readvariableop_resource: <
.ecc_conv_fgn_3_biasadd_readvariableop_resource:B
/ecc_conv_fgn_out_matmul_readvariableop_resource:	?
?
0ecc_conv_fgn_out_biasadd_readvariableop_resource:	?
:
'ecc_conv_matmul_readvariableop_resource:	
?7
(ecc_conv_biasadd_readvariableop_resource:	?A
/ecc_conv_1_fgn_0_matmul_readvariableop_resource:>
0ecc_conv_1_fgn_0_biasadd_readvariableop_resource:A
/ecc_conv_1_fgn_1_matmul_readvariableop_resource: >
0ecc_conv_1_fgn_1_biasadd_readvariableop_resource: A
/ecc_conv_1_fgn_2_matmul_readvariableop_resource:  >
0ecc_conv_1_fgn_2_biasadd_readvariableop_resource: A
/ecc_conv_1_fgn_3_matmul_readvariableop_resource: >
0ecc_conv_1_fgn_3_biasadd_readvariableop_resource:E
1ecc_conv_1_fgn_out_matmul_readvariableop_resource:
??B
2ecc_conv_1_fgn_out_biasadd_readvariableop_resource:
??=
)ecc_conv_1_matmul_readvariableop_resource:
??9
*ecc_conv_1_biasadd_readvariableop_resource:	?A
/ecc_conv_2_fgn_0_matmul_readvariableop_resource:>
0ecc_conv_2_fgn_0_biasadd_readvariableop_resource:A
/ecc_conv_2_fgn_1_matmul_readvariableop_resource: >
0ecc_conv_2_fgn_1_biasadd_readvariableop_resource: A
/ecc_conv_2_fgn_2_matmul_readvariableop_resource:  >
0ecc_conv_2_fgn_2_biasadd_readvariableop_resource: A
/ecc_conv_2_fgn_3_matmul_readvariableop_resource: >
0ecc_conv_2_fgn_3_biasadd_readvariableop_resource:E
1ecc_conv_2_fgn_out_matmul_readvariableop_resource:
??B
2ecc_conv_2_fgn_out_biasadd_readvariableop_resource:
??=
)ecc_conv_2_matmul_readvariableop_resource:
??9
*ecc_conv_2_biasadd_readvariableop_resource:	?W
Cglobal_attention_pool_features_layer_matmul_readvariableop_resource:
??S
Dglobal_attention_pool_features_layer_biasadd_readvariableop_resource:	?S
?global_attention_pool_attn_layer_matmul_readvariableop_resource:
??O
@global_attention_pool_attn_layer_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?ecc_conv/BiasAdd/ReadVariableOp?%ecc_conv/FGN_0/BiasAdd/ReadVariableOp?$ecc_conv/FGN_0/MatMul/ReadVariableOp?%ecc_conv/FGN_1/BiasAdd/ReadVariableOp?$ecc_conv/FGN_1/MatMul/ReadVariableOp?%ecc_conv/FGN_2/BiasAdd/ReadVariableOp?$ecc_conv/FGN_2/MatMul/ReadVariableOp?%ecc_conv/FGN_3/BiasAdd/ReadVariableOp?$ecc_conv/FGN_3/MatMul/ReadVariableOp?'ecc_conv/FGN_out/BiasAdd/ReadVariableOp?&ecc_conv/FGN_out/MatMul/ReadVariableOp?ecc_conv/MatMul/ReadVariableOp?!ecc_conv_1/BiasAdd/ReadVariableOp?'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_0/MatMul/ReadVariableOp?'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_1/MatMul/ReadVariableOp?'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_2/MatMul/ReadVariableOp?'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_3/MatMul/ReadVariableOp?)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?(ecc_conv_1/FGN_out/MatMul/ReadVariableOp? ecc_conv_1/MatMul/ReadVariableOp?!ecc_conv_2/BiasAdd/ReadVariableOp?'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_0/MatMul/ReadVariableOp?'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_1/MatMul/ReadVariableOp?'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_2/MatMul/ReadVariableOp?'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_3/MatMul/ReadVariableOp?)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?(ecc_conv_2/FGN_out/MatMul/ReadVariableOp? ecc_conv_2/MatMul/ReadVariableOp?7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?6global_attention_pool/attn_layer/MatMul/ReadVariableOp?;global_attention_pool/features_layer/BiasAdd/ReadVariableOp?:global_attention_pool/features_layer/MatMul/ReadVariableOpX
ecc_conv/ShapeShapeinputs_0*
T0*
_output_shapes
:2
ecc_conv/Shape?
ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ecc_conv/strided_slice/stack?
ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv/strided_slice/stack_1?
ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ecc_conv/strided_slice/stack_2?
ecc_conv/strided_sliceStridedSliceecc_conv/Shape:output:0%ecc_conv/strided_slice/stack:output:0'ecc_conv/strided_slice/stack_1:output:0'ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv/strided_slice\
ecc_conv/Shape_1Shapeinputs_0*
T0*
_output_shapes
:2
ecc_conv/Shape_1?
ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv/strided_slice_1/stack?
 ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 ecc_conv/strided_slice_1/stack_1?
 ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv/strided_slice_1/stack_2?
ecc_conv/strided_slice_1StridedSliceecc_conv/Shape_1:output:0'ecc_conv/strided_slice_1/stack:output:0)ecc_conv/strided_slice_1/stack_1:output:0)ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv/strided_slice_1?
$ecc_conv/FGN_0/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02&
$ecc_conv/FGN_0/MatMul/ReadVariableOp?
ecc_conv/FGN_0/MatMulMatMul
inputs_2_0,ecc_conv/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/MatMul?
%ecc_conv/FGN_0/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%ecc_conv/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv/FGN_0/BiasAddBiasAddecc_conv/FGN_0/MatMul:product:0-ecc_conv/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/BiasAdd?
ecc_conv/FGN_0/ReluReluecc_conv/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/Relu?
$ecc_conv/FGN_1/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02&
$ecc_conv/FGN_1/MatMul/ReadVariableOp?
ecc_conv/FGN_1/MatMulMatMul!ecc_conv/FGN_0/Relu:activations:0,ecc_conv/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/MatMul?
%ecc_conv/FGN_1/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%ecc_conv/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv/FGN_1/BiasAddBiasAddecc_conv/FGN_1/MatMul:product:0-ecc_conv/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/BiasAdd?
ecc_conv/FGN_1/ReluReluecc_conv/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/Relu?
$ecc_conv/FGN_2/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02&
$ecc_conv/FGN_2/MatMul/ReadVariableOp?
ecc_conv/FGN_2/MatMulMatMul!ecc_conv/FGN_1/Relu:activations:0,ecc_conv/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/MatMul?
%ecc_conv/FGN_2/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%ecc_conv/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv/FGN_2/BiasAddBiasAddecc_conv/FGN_2/MatMul:product:0-ecc_conv/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/BiasAdd?
ecc_conv/FGN_2/ReluReluecc_conv/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/Relu?
$ecc_conv/FGN_3/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02&
$ecc_conv/FGN_3/MatMul/ReadVariableOp?
ecc_conv/FGN_3/MatMulMatMul!ecc_conv/FGN_2/Relu:activations:0,ecc_conv/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/MatMul?
%ecc_conv/FGN_3/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%ecc_conv/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv/FGN_3/BiasAddBiasAddecc_conv/FGN_3/MatMul:product:0-ecc_conv/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/BiasAdd?
ecc_conv/FGN_3/ReluReluecc_conv/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/Relu?
&ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp/ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02(
&ecc_conv/FGN_out/MatMul/ReadVariableOp?
ecc_conv/FGN_out/MatMulMatMul!ecc_conv/FGN_3/Relu:activations:0.ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
ecc_conv/FGN_out/MatMul?
'ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02)
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv/FGN_out/BiasAddBiasAdd!ecc_conv/FGN_out/MatMul:product:0/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
ecc_conv/FGN_out/BiasAdd
ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv/Reshape/shape/0w
ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv/Reshape/shape/2?
ecc_conv/Reshape/shapePack!ecc_conv/Reshape/shape/0:output:0!ecc_conv/strided_slice_1:output:0!ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv/Reshape/shape?
ecc_conv/ReshapeReshape!ecc_conv/FGN_out/BiasAdd:output:0ecc_conv/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv/Reshape?
ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2 
ecc_conv/strided_slice_2/stack?
 ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv/strided_slice_2/stack_1?
 ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 ecc_conv/strided_slice_2/stack_2?
ecc_conv/strided_slice_2StridedSliceinputs'ecc_conv/strided_slice_2/stack:output:0)ecc_conv/strided_slice_2/stack_1:output:0)ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv/strided_slice_2?
ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
ecc_conv/strided_slice_3/stack?
 ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv/strided_slice_3/stack_1?
 ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 ecc_conv/strided_slice_3/stack_2?
ecc_conv/strided_slice_3StridedSliceinputs'ecc_conv/strided_slice_3/stack:output:0)ecc_conv/strided_slice_3/stack_1:output:0)ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv/strided_slice_3{
ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv/GatherV2/axis?
ecc_conv/GatherV2GatherV2inputs_0!ecc_conv/strided_slice_3:output:0ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
2
ecc_conv/GatherV2?
ecc_conv/einsum/EinsumEinsumecc_conv/GatherV2:output:0ecc_conv/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv/einsum/Einsum?
ecc_conv/UnsortedSegmentSumUnsortedSegmentSumecc_conv/einsum/Einsum:output:0!ecc_conv/strided_slice_2:output:0ecc_conv/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv/UnsortedSegmentSum?
ecc_conv/MatMul/ReadVariableOpReadVariableOp'ecc_conv_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02 
ecc_conv/MatMul/ReadVariableOp?
ecc_conv/MatMulMatMulinputs_0&ecc_conv/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv/MatMul?
ecc_conv/addAddV2$ecc_conv/UnsortedSegmentSum:output:0ecc_conv/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv/add?
ecc_conv/BiasAdd/ReadVariableOpReadVariableOp(ecc_conv_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
ecc_conv/BiasAdd/ReadVariableOp?
ecc_conv/BiasAddBiasAddecc_conv/add:z:0'ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv/BiasAddt
ecc_conv/ReluReluecc_conv/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv/Reluo
ecc_conv_1/ShapeShapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_1/Shape?
ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv_1/strided_slice/stack?
 ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_1/strided_slice/stack_1?
 ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv_1/strided_slice/stack_2?
ecc_conv_1/strided_sliceStridedSliceecc_conv_1/Shape:output:0'ecc_conv_1/strided_slice/stack:output:0)ecc_conv_1/strided_slice/stack_1:output:0)ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_1/strided_slices
ecc_conv_1/Shape_1Shapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_1/Shape_1?
 ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_1/strided_slice_1/stack?
"ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"ecc_conv_1/strided_slice_1/stack_1?
"ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ecc_conv_1/strided_slice_1/stack_2?
ecc_conv_1/strided_slice_1StridedSliceecc_conv_1/Shape_1:output:0)ecc_conv_1/strided_slice_1/stack:output:0+ecc_conv_1/strided_slice_1/stack_1:output:0+ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_1/strided_slice_1?
&ecc_conv_1/FGN_0/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&ecc_conv_1/FGN_0/MatMul/ReadVariableOp?
ecc_conv_1/FGN_0/MatMulMatMul
inputs_2_0.ecc_conv_1/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/MatMul?
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_0/BiasAddBiasAdd!ecc_conv_1/FGN_0/MatMul:product:0/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/BiasAdd?
ecc_conv_1/FGN_0/ReluRelu!ecc_conv_1/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/Relu?
&ecc_conv_1/FGN_1/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_1/FGN_1/MatMul/ReadVariableOp?
ecc_conv_1/FGN_1/MatMulMatMul#ecc_conv_1/FGN_0/Relu:activations:0.ecc_conv_1/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/MatMul?
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_1/BiasAddBiasAdd!ecc_conv_1/FGN_1/MatMul:product:0/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/BiasAdd?
ecc_conv_1/FGN_1/ReluRelu!ecc_conv_1/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/Relu?
&ecc_conv_1/FGN_2/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ecc_conv_1/FGN_2/MatMul/ReadVariableOp?
ecc_conv_1/FGN_2/MatMulMatMul#ecc_conv_1/FGN_1/Relu:activations:0.ecc_conv_1/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/MatMul?
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_2/BiasAddBiasAdd!ecc_conv_1/FGN_2/MatMul:product:0/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/BiasAdd?
ecc_conv_1/FGN_2/ReluRelu!ecc_conv_1/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/Relu?
&ecc_conv_1/FGN_3/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_1/FGN_3/MatMul/ReadVariableOp?
ecc_conv_1/FGN_3/MatMulMatMul#ecc_conv_1/FGN_2/Relu:activations:0.ecc_conv_1/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/MatMul?
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_3/BiasAddBiasAdd!ecc_conv_1/FGN_3/MatMul:product:0/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/BiasAdd?
ecc_conv_1/FGN_3/ReluRelu!ecc_conv_1/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/Relu?
(ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_1_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp?
ecc_conv_1/FGN_out/MatMulMatMul#ecc_conv_1/FGN_3/Relu:activations:00ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_1/FGN_out/MatMul?
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02+
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_out/BiasAddBiasAdd#ecc_conv_1/FGN_out/MatMul:product:01ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_1/FGN_out/BiasAdd?
ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_1/Reshape/shape/0{
ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv_1/Reshape/shape/2?
ecc_conv_1/Reshape/shapePack#ecc_conv_1/Reshape/shape/0:output:0#ecc_conv_1/strided_slice_1:output:0#ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv_1/Reshape/shape?
ecc_conv_1/ReshapeReshape#ecc_conv_1/FGN_out/BiasAdd:output:0!ecc_conv_1/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv_1/Reshape?
 ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv_1/strided_slice_2/stack?
"ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_1/strided_slice_2/stack_1?
"ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_1/strided_slice_2/stack_2?
ecc_conv_1/strided_slice_2StridedSliceinputs)ecc_conv_1/strided_slice_2/stack:output:0+ecc_conv_1/strided_slice_2/stack_1:output:0+ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_1/strided_slice_2?
 ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 ecc_conv_1/strided_slice_3/stack?
"ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_1/strided_slice_3/stack_1?
"ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_1/strided_slice_3/stack_2?
ecc_conv_1/strided_slice_3StridedSliceinputs)ecc_conv_1/strided_slice_3/stack:output:0+ecc_conv_1/strided_slice_3/stack_1:output:0+ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_1/strided_slice_3
ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_1/GatherV2/axis?
ecc_conv_1/GatherV2GatherV2ecc_conv/Relu:activations:0#ecc_conv_1/strided_slice_3:output:0!ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
ecc_conv_1/GatherV2?
ecc_conv_1/einsum/EinsumEinsumecc_conv_1/GatherV2:output:0ecc_conv_1/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv_1/einsum/Einsum?
ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_1/einsum/Einsum:output:0#ecc_conv_1/strided_slice_2:output:0!ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv_1/UnsortedSegmentSum?
 ecc_conv_1/MatMul/ReadVariableOpReadVariableOp)ecc_conv_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 ecc_conv_1/MatMul/ReadVariableOp?
ecc_conv_1/MatMulMatMulecc_conv/Relu:activations:0(ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/MatMul?
ecc_conv_1/addAddV2&ecc_conv_1/UnsortedSegmentSum:output:0ecc_conv_1/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/add?
!ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!ecc_conv_1/BiasAdd/ReadVariableOp?
ecc_conv_1/BiasAddBiasAddecc_conv_1/add:z:0)ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/BiasAddz
ecc_conv_1/ReluReluecc_conv_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/Reluq
ecc_conv_2/ShapeShapeecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_2/Shape?
ecc_conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv_2/strided_slice/stack?
 ecc_conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_2/strided_slice/stack_1?
 ecc_conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv_2/strided_slice/stack_2?
ecc_conv_2/strided_sliceStridedSliceecc_conv_2/Shape:output:0'ecc_conv_2/strided_slice/stack:output:0)ecc_conv_2/strided_slice/stack_1:output:0)ecc_conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_2/strided_sliceu
ecc_conv_2/Shape_1Shapeecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_2/Shape_1?
 ecc_conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_2/strided_slice_1/stack?
"ecc_conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"ecc_conv_2/strided_slice_1/stack_1?
"ecc_conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ecc_conv_2/strided_slice_1/stack_2?
ecc_conv_2/strided_slice_1StridedSliceecc_conv_2/Shape_1:output:0)ecc_conv_2/strided_slice_1/stack:output:0+ecc_conv_2/strided_slice_1/stack_1:output:0+ecc_conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_2/strided_slice_1?
&ecc_conv_2/FGN_0/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&ecc_conv_2/FGN_0/MatMul/ReadVariableOp?
ecc_conv_2/FGN_0/MatMulMatMul
inputs_2_0.ecc_conv_2/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/MatMul?
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_0/BiasAddBiasAdd!ecc_conv_2/FGN_0/MatMul:product:0/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/BiasAdd?
ecc_conv_2/FGN_0/ReluRelu!ecc_conv_2/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/Relu?
&ecc_conv_2/FGN_1/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_2/FGN_1/MatMul/ReadVariableOp?
ecc_conv_2/FGN_1/MatMulMatMul#ecc_conv_2/FGN_0/Relu:activations:0.ecc_conv_2/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/MatMul?
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_1/BiasAddBiasAdd!ecc_conv_2/FGN_1/MatMul:product:0/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/BiasAdd?
ecc_conv_2/FGN_1/ReluRelu!ecc_conv_2/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/Relu?
&ecc_conv_2/FGN_2/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ecc_conv_2/FGN_2/MatMul/ReadVariableOp?
ecc_conv_2/FGN_2/MatMulMatMul#ecc_conv_2/FGN_1/Relu:activations:0.ecc_conv_2/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/MatMul?
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_2/BiasAddBiasAdd!ecc_conv_2/FGN_2/MatMul:product:0/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/BiasAdd?
ecc_conv_2/FGN_2/ReluRelu!ecc_conv_2/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/Relu?
&ecc_conv_2/FGN_3/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_2/FGN_3/MatMul/ReadVariableOp?
ecc_conv_2/FGN_3/MatMulMatMul#ecc_conv_2/FGN_2/Relu:activations:0.ecc_conv_2/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/MatMul?
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_3/BiasAddBiasAdd!ecc_conv_2/FGN_3/MatMul:product:0/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/BiasAdd?
ecc_conv_2/FGN_3/ReluRelu!ecc_conv_2/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/Relu?
(ecc_conv_2/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_2_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(ecc_conv_2/FGN_out/MatMul/ReadVariableOp?
ecc_conv_2/FGN_out/MatMulMatMul#ecc_conv_2/FGN_3/Relu:activations:00ecc_conv_2/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_2/FGN_out/MatMul?
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_2_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02+
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_out/BiasAddBiasAdd#ecc_conv_2/FGN_out/MatMul:product:01ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_2/FGN_out/BiasAdd?
ecc_conv_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_2/Reshape/shape/0{
ecc_conv_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv_2/Reshape/shape/2?
ecc_conv_2/Reshape/shapePack#ecc_conv_2/Reshape/shape/0:output:0#ecc_conv_2/strided_slice_1:output:0#ecc_conv_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv_2/Reshape/shape?
ecc_conv_2/ReshapeReshape#ecc_conv_2/FGN_out/BiasAdd:output:0!ecc_conv_2/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv_2/Reshape?
 ecc_conv_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv_2/strided_slice_2/stack?
"ecc_conv_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_2/strided_slice_2/stack_1?
"ecc_conv_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_2/strided_slice_2/stack_2?
ecc_conv_2/strided_slice_2StridedSliceinputs)ecc_conv_2/strided_slice_2/stack:output:0+ecc_conv_2/strided_slice_2/stack_1:output:0+ecc_conv_2/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_2/strided_slice_2?
 ecc_conv_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 ecc_conv_2/strided_slice_3/stack?
"ecc_conv_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_2/strided_slice_3/stack_1?
"ecc_conv_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_2/strided_slice_3/stack_2?
ecc_conv_2/strided_slice_3StridedSliceinputs)ecc_conv_2/strided_slice_3/stack:output:0+ecc_conv_2/strided_slice_3/stack_1:output:0+ecc_conv_2/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_2/strided_slice_3
ecc_conv_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_2/GatherV2/axis?
ecc_conv_2/GatherV2GatherV2ecc_conv_1/Relu:activations:0#ecc_conv_2/strided_slice_3:output:0!ecc_conv_2/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
ecc_conv_2/GatherV2?
ecc_conv_2/einsum/EinsumEinsumecc_conv_2/GatherV2:output:0ecc_conv_2/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv_2/einsum/Einsum?
ecc_conv_2/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_2/einsum/Einsum:output:0#ecc_conv_2/strided_slice_2:output:0!ecc_conv_2/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv_2/UnsortedSegmentSum?
 ecc_conv_2/MatMul/ReadVariableOpReadVariableOp)ecc_conv_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 ecc_conv_2/MatMul/ReadVariableOp?
ecc_conv_2/MatMulMatMulecc_conv_1/Relu:activations:0(ecc_conv_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/MatMul?
ecc_conv_2/addAddV2&ecc_conv_2/UnsortedSegmentSum:output:0ecc_conv_2/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/add?
!ecc_conv_2/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!ecc_conv_2/BiasAdd/ReadVariableOp?
ecc_conv_2/BiasAddBiasAddecc_conv_2/add:z:0)ecc_conv_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/BiasAddz
ecc_conv_2/ReluReluecc_conv_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/Relu?
:global_attention_pool/features_layer/MatMul/ReadVariableOpReadVariableOpCglobal_attention_pool_features_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02<
:global_attention_pool/features_layer/MatMul/ReadVariableOp?
+global_attention_pool/features_layer/MatMulMatMulecc_conv_2/Relu:activations:0Bglobal_attention_pool/features_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+global_attention_pool/features_layer/MatMul?
;global_attention_pool/features_layer/BiasAdd/ReadVariableOpReadVariableOpDglobal_attention_pool_features_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;global_attention_pool/features_layer/BiasAdd/ReadVariableOp?
,global_attention_pool/features_layer/BiasAddBiasAdd5global_attention_pool/features_layer/MatMul:product:0Cglobal_attention_pool/features_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,global_attention_pool/features_layer/BiasAdd?
6global_attention_pool/attn_layer/MatMul/ReadVariableOpReadVariableOp?global_attention_pool_attn_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype028
6global_attention_pool/attn_layer/MatMul/ReadVariableOp?
'global_attention_pool/attn_layer/MatMulMatMulecc_conv_2/Relu:activations:0>global_attention_pool/attn_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'global_attention_pool/attn_layer/MatMul?
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOpReadVariableOp@global_attention_pool_attn_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?
(global_attention_pool/attn_layer/BiasAddBiasAdd1global_attention_pool/attn_layer/MatMul:product:0?global_attention_pool/attn_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(global_attention_pool/attn_layer/BiasAdd?
(global_attention_pool/attn_layer/SigmoidSigmoid1global_attention_pool/attn_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2*
(global_attention_pool/attn_layer/Sigmoid?
global_attention_pool/mulMul5global_attention_pool/features_layer/BiasAdd:output:0,global_attention_pool/attn_layer/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
global_attention_pool/mul?
 global_attention_pool/SegmentSum
SegmentSumglobal_attention_pool/mul:z:0inputs_3*
T0*
Tindices0*(
_output_shapes
:??????????2"
 global_attention_pool/SegmentSums
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/dropout/Const?
dropout/dropout/MulMul)global_attention_pool/SegmentSum:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul?
dropout/dropout/ShapeShape)global_attention_pool/SegmentSum:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^ecc_conv/BiasAdd/ReadVariableOp&^ecc_conv/FGN_0/BiasAdd/ReadVariableOp%^ecc_conv/FGN_0/MatMul/ReadVariableOp&^ecc_conv/FGN_1/BiasAdd/ReadVariableOp%^ecc_conv/FGN_1/MatMul/ReadVariableOp&^ecc_conv/FGN_2/BiasAdd/ReadVariableOp%^ecc_conv/FGN_2/MatMul/ReadVariableOp&^ecc_conv/FGN_3/BiasAdd/ReadVariableOp%^ecc_conv/FGN_3/MatMul/ReadVariableOp(^ecc_conv/FGN_out/BiasAdd/ReadVariableOp'^ecc_conv/FGN_out/MatMul/ReadVariableOp^ecc_conv/MatMul/ReadVariableOp"^ecc_conv_1/BiasAdd/ReadVariableOp(^ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_0/MatMul/ReadVariableOp(^ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_1/MatMul/ReadVariableOp(^ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_2/MatMul/ReadVariableOp(^ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_3/MatMul/ReadVariableOp*^ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_1/FGN_out/MatMul/ReadVariableOp!^ecc_conv_1/MatMul/ReadVariableOp"^ecc_conv_2/BiasAdd/ReadVariableOp(^ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_0/MatMul/ReadVariableOp(^ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_1/MatMul/ReadVariableOp(^ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_2/MatMul/ReadVariableOp(^ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_3/MatMul/ReadVariableOp*^ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_2/FGN_out/MatMul/ReadVariableOp!^ecc_conv_2/MatMul/ReadVariableOp8^global_attention_pool/attn_layer/BiasAdd/ReadVariableOp7^global_attention_pool/attn_layer/MatMul/ReadVariableOp<^global_attention_pool/features_layer/BiasAdd/ReadVariableOp;^global_attention_pool/features_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
ecc_conv/BiasAdd/ReadVariableOpecc_conv/BiasAdd/ReadVariableOp2N
%ecc_conv/FGN_0/BiasAdd/ReadVariableOp%ecc_conv/FGN_0/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_0/MatMul/ReadVariableOp$ecc_conv/FGN_0/MatMul/ReadVariableOp2N
%ecc_conv/FGN_1/BiasAdd/ReadVariableOp%ecc_conv/FGN_1/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_1/MatMul/ReadVariableOp$ecc_conv/FGN_1/MatMul/ReadVariableOp2N
%ecc_conv/FGN_2/BiasAdd/ReadVariableOp%ecc_conv/FGN_2/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_2/MatMul/ReadVariableOp$ecc_conv/FGN_2/MatMul/ReadVariableOp2N
%ecc_conv/FGN_3/BiasAdd/ReadVariableOp%ecc_conv/FGN_3/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_3/MatMul/ReadVariableOp$ecc_conv/FGN_3/MatMul/ReadVariableOp2R
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp'ecc_conv/FGN_out/BiasAdd/ReadVariableOp2P
&ecc_conv/FGN_out/MatMul/ReadVariableOp&ecc_conv/FGN_out/MatMul/ReadVariableOp2@
ecc_conv/MatMul/ReadVariableOpecc_conv/MatMul/ReadVariableOp2F
!ecc_conv_1/BiasAdd/ReadVariableOp!ecc_conv_1/BiasAdd/ReadVariableOp2R
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_0/MatMul/ReadVariableOp&ecc_conv_1/FGN_0/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_1/MatMul/ReadVariableOp&ecc_conv_1/FGN_1/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_2/MatMul/ReadVariableOp&ecc_conv_1/FGN_2/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_3/MatMul/ReadVariableOp&ecc_conv_1/FGN_3/MatMul/ReadVariableOp2V
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp(ecc_conv_1/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_1/MatMul/ReadVariableOp ecc_conv_1/MatMul/ReadVariableOp2F
!ecc_conv_2/BiasAdd/ReadVariableOp!ecc_conv_2/BiasAdd/ReadVariableOp2R
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_0/MatMul/ReadVariableOp&ecc_conv_2/FGN_0/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_1/MatMul/ReadVariableOp&ecc_conv_2/FGN_1/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_2/MatMul/ReadVariableOp&ecc_conv_2/FGN_2/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_3/MatMul/ReadVariableOp&ecc_conv_2/FGN_3/MatMul/ReadVariableOp2V
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_2/FGN_out/MatMul/ReadVariableOp(ecc_conv_2/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_2/MatMul/ReadVariableOp ecc_conv_2/MatMul/ReadVariableOp2r
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp2p
6global_attention_pool/attn_layer/MatMul/ReadVariableOp6global_attention_pool/attn_layer/MatMul/ReadVariableOp2z
;global_attention_pool/features_layer/BiasAdd/ReadVariableOp;global_attention_pool/features_layer/BiasAdd/ReadVariableOp2x
:global_attention_pool/features_layer/MatMul/ReadVariableOp:global_attention_pool/features_layer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?W
?	
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_118723

inputs
inputs_1	
inputs_2
inputs_3	
inputs_46
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource::
&fgn_out_matmul_readvariableop_resource:
??7
'fgn_out_biasadd_readvariableop_resource:
??2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMulinputs_4#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputs_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputsstrided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?	
D__inference_ecc_conv_layer_call_and_return_conditional_losses_120714
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_06
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource:9
&fgn_out_matmul_readvariableop_resource:	?
6
'fgn_out_biasadd_readvariableop_resource:	?
1
matmul_readvariableop_resource:	
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceJ
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMul
inputs_2_0#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputs_0strided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpv
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:?????????
:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
&__inference_model_layer_call_fn_120532
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
inputs_3
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:	?

	unknown_8:	?

	unknown_9:	
?

unknown_10:	?

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15:  

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:
??

unknown_20:
??

unknown_21:
??

unknown_22:	?

unknown_23:

unknown_24:

unknown_25: 

unknown_26: 

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30:

unknown_31:
??

unknown_32:
??

unknown_33:
??

unknown_34:	?

unknown_35:
??

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:	?

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_46*A
Tin:
826		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012345*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1188542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?

?
C__inference_dense_2_layer_call_and_return_conditional_losses_118831

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_model_layer_call_fn_120638
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
inputs_3
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:	?

	unknown_8:	?

	unknown_9:	
?

unknown_10:	?

unknown_11:

unknown_12:

unknown_13: 

unknown_14: 

unknown_15:  

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:
??

unknown_20:
??

unknown_21:
??

unknown_22:	?

unknown_23:

unknown_24:

unknown_25: 

unknown_26: 

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30:

unknown_31:
??

unknown_32:
??

unknown_33:
??

unknown_34:	?

unknown_35:
??

unknown_36:	?

unknown_37:
??

unknown_38:	?

unknown_39:
??

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:
??

unknown_44:	?

unknown_45:	?

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_46*A
Tin:
826		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./012345*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1193602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_120985
inputs_0
inputs_1A
-features_layer_matmul_readvariableop_resource:
??=
.features_layer_biasadd_readvariableop_resource:	?=
)attn_layer_matmul_readvariableop_resource:
??9
*attn_layer_biasadd_readvariableop_resource:	?
identity??!attn_layer/BiasAdd/ReadVariableOp? attn_layer/MatMul/ReadVariableOp?%features_layer/BiasAdd/ReadVariableOp?$features_layer/MatMul/ReadVariableOp?
$features_layer/MatMul/ReadVariableOpReadVariableOp-features_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$features_layer/MatMul/ReadVariableOp?
features_layer/MatMulMatMulinputs_0,features_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
features_layer/MatMul?
%features_layer/BiasAdd/ReadVariableOpReadVariableOp.features_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%features_layer/BiasAdd/ReadVariableOp?
features_layer/BiasAddBiasAddfeatures_layer/MatMul:product:0-features_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
features_layer/BiasAdd?
 attn_layer/MatMul/ReadVariableOpReadVariableOp)attn_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 attn_layer/MatMul/ReadVariableOp?
attn_layer/MatMulMatMulinputs_0(attn_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
attn_layer/MatMul?
!attn_layer/BiasAdd/ReadVariableOpReadVariableOp*attn_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!attn_layer/BiasAdd/ReadVariableOp?
attn_layer/BiasAddBiasAddattn_layer/MatMul:product:0)attn_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
attn_layer/BiasAdd?
attn_layer/SigmoidSigmoidattn_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
attn_layer/Sigmoid}
mulMulfeatures_layer/BiasAdd:output:0attn_layer/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
mul|

SegmentSum
SegmentSummul:z:0inputs_1*
T0*
Tindices0*(
_output_shapes
:??????????2

SegmentSum?
IdentityIdentitySegmentSum:output:0"^attn_layer/BiasAdd/ReadVariableOp!^attn_layer/MatMul/ReadVariableOp&^features_layer/BiasAdd/ReadVariableOp%^features_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:??????????:?????????: : : : 2F
!attn_layer/BiasAdd/ReadVariableOp!attn_layer/BiasAdd/ReadVariableOp2D
 attn_layer/MatMul/ReadVariableOp attn_layer/MatMul/ReadVariableOp2N
%features_layer/BiasAdd/ReadVariableOp%features_layer/BiasAdd/ReadVariableOp2L
$features_layer/MatMul/ReadVariableOp$features_layer/MatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
??
?(
A__inference_model_layer_call_and_return_conditional_losses_120163
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
inputs_3?
-ecc_conv_fgn_0_matmul_readvariableop_resource:<
.ecc_conv_fgn_0_biasadd_readvariableop_resource:?
-ecc_conv_fgn_1_matmul_readvariableop_resource: <
.ecc_conv_fgn_1_biasadd_readvariableop_resource: ?
-ecc_conv_fgn_2_matmul_readvariableop_resource:  <
.ecc_conv_fgn_2_biasadd_readvariableop_resource: ?
-ecc_conv_fgn_3_matmul_readvariableop_resource: <
.ecc_conv_fgn_3_biasadd_readvariableop_resource:B
/ecc_conv_fgn_out_matmul_readvariableop_resource:	?
?
0ecc_conv_fgn_out_biasadd_readvariableop_resource:	?
:
'ecc_conv_matmul_readvariableop_resource:	
?7
(ecc_conv_biasadd_readvariableop_resource:	?A
/ecc_conv_1_fgn_0_matmul_readvariableop_resource:>
0ecc_conv_1_fgn_0_biasadd_readvariableop_resource:A
/ecc_conv_1_fgn_1_matmul_readvariableop_resource: >
0ecc_conv_1_fgn_1_biasadd_readvariableop_resource: A
/ecc_conv_1_fgn_2_matmul_readvariableop_resource:  >
0ecc_conv_1_fgn_2_biasadd_readvariableop_resource: A
/ecc_conv_1_fgn_3_matmul_readvariableop_resource: >
0ecc_conv_1_fgn_3_biasadd_readvariableop_resource:E
1ecc_conv_1_fgn_out_matmul_readvariableop_resource:
??B
2ecc_conv_1_fgn_out_biasadd_readvariableop_resource:
??=
)ecc_conv_1_matmul_readvariableop_resource:
??9
*ecc_conv_1_biasadd_readvariableop_resource:	?A
/ecc_conv_2_fgn_0_matmul_readvariableop_resource:>
0ecc_conv_2_fgn_0_biasadd_readvariableop_resource:A
/ecc_conv_2_fgn_1_matmul_readvariableop_resource: >
0ecc_conv_2_fgn_1_biasadd_readvariableop_resource: A
/ecc_conv_2_fgn_2_matmul_readvariableop_resource:  >
0ecc_conv_2_fgn_2_biasadd_readvariableop_resource: A
/ecc_conv_2_fgn_3_matmul_readvariableop_resource: >
0ecc_conv_2_fgn_3_biasadd_readvariableop_resource:E
1ecc_conv_2_fgn_out_matmul_readvariableop_resource:
??B
2ecc_conv_2_fgn_out_biasadd_readvariableop_resource:
??=
)ecc_conv_2_matmul_readvariableop_resource:
??9
*ecc_conv_2_biasadd_readvariableop_resource:	?W
Cglobal_attention_pool_features_layer_matmul_readvariableop_resource:
??S
Dglobal_attention_pool_features_layer_biasadd_readvariableop_resource:	?S
?global_attention_pool_attn_layer_matmul_readvariableop_resource:
??O
@global_attention_pool_attn_layer_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?ecc_conv/BiasAdd/ReadVariableOp?%ecc_conv/FGN_0/BiasAdd/ReadVariableOp?$ecc_conv/FGN_0/MatMul/ReadVariableOp?%ecc_conv/FGN_1/BiasAdd/ReadVariableOp?$ecc_conv/FGN_1/MatMul/ReadVariableOp?%ecc_conv/FGN_2/BiasAdd/ReadVariableOp?$ecc_conv/FGN_2/MatMul/ReadVariableOp?%ecc_conv/FGN_3/BiasAdd/ReadVariableOp?$ecc_conv/FGN_3/MatMul/ReadVariableOp?'ecc_conv/FGN_out/BiasAdd/ReadVariableOp?&ecc_conv/FGN_out/MatMul/ReadVariableOp?ecc_conv/MatMul/ReadVariableOp?!ecc_conv_1/BiasAdd/ReadVariableOp?'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_0/MatMul/ReadVariableOp?'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_1/MatMul/ReadVariableOp?'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_2/MatMul/ReadVariableOp?'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?&ecc_conv_1/FGN_3/MatMul/ReadVariableOp?)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?(ecc_conv_1/FGN_out/MatMul/ReadVariableOp? ecc_conv_1/MatMul/ReadVariableOp?!ecc_conv_2/BiasAdd/ReadVariableOp?'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_0/MatMul/ReadVariableOp?'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_1/MatMul/ReadVariableOp?'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_2/MatMul/ReadVariableOp?'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?&ecc_conv_2/FGN_3/MatMul/ReadVariableOp?)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?(ecc_conv_2/FGN_out/MatMul/ReadVariableOp? ecc_conv_2/MatMul/ReadVariableOp?7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?6global_attention_pool/attn_layer/MatMul/ReadVariableOp?;global_attention_pool/features_layer/BiasAdd/ReadVariableOp?:global_attention_pool/features_layer/MatMul/ReadVariableOpX
ecc_conv/ShapeShapeinputs_0*
T0*
_output_shapes
:2
ecc_conv/Shape?
ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ecc_conv/strided_slice/stack?
ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv/strided_slice/stack_1?
ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ecc_conv/strided_slice/stack_2?
ecc_conv/strided_sliceStridedSliceecc_conv/Shape:output:0%ecc_conv/strided_slice/stack:output:0'ecc_conv/strided_slice/stack_1:output:0'ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv/strided_slice\
ecc_conv/Shape_1Shapeinputs_0*
T0*
_output_shapes
:2
ecc_conv/Shape_1?
ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv/strided_slice_1/stack?
 ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 ecc_conv/strided_slice_1/stack_1?
 ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv/strided_slice_1/stack_2?
ecc_conv/strided_slice_1StridedSliceecc_conv/Shape_1:output:0'ecc_conv/strided_slice_1/stack:output:0)ecc_conv/strided_slice_1/stack_1:output:0)ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv/strided_slice_1?
$ecc_conv/FGN_0/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02&
$ecc_conv/FGN_0/MatMul/ReadVariableOp?
ecc_conv/FGN_0/MatMulMatMul
inputs_2_0,ecc_conv/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/MatMul?
%ecc_conv/FGN_0/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%ecc_conv/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv/FGN_0/BiasAddBiasAddecc_conv/FGN_0/MatMul:product:0-ecc_conv/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/BiasAdd?
ecc_conv/FGN_0/ReluReluecc_conv/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_0/Relu?
$ecc_conv/FGN_1/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02&
$ecc_conv/FGN_1/MatMul/ReadVariableOp?
ecc_conv/FGN_1/MatMulMatMul!ecc_conv/FGN_0/Relu:activations:0,ecc_conv/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/MatMul?
%ecc_conv/FGN_1/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%ecc_conv/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv/FGN_1/BiasAddBiasAddecc_conv/FGN_1/MatMul:product:0-ecc_conv/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/BiasAdd?
ecc_conv/FGN_1/ReluReluecc_conv/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_1/Relu?
$ecc_conv/FGN_2/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02&
$ecc_conv/FGN_2/MatMul/ReadVariableOp?
ecc_conv/FGN_2/MatMulMatMul!ecc_conv/FGN_1/Relu:activations:0,ecc_conv/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/MatMul?
%ecc_conv/FGN_2/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%ecc_conv/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv/FGN_2/BiasAddBiasAddecc_conv/FGN_2/MatMul:product:0-ecc_conv/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/BiasAdd?
ecc_conv/FGN_2/ReluReluecc_conv/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv/FGN_2/Relu?
$ecc_conv/FGN_3/MatMul/ReadVariableOpReadVariableOp-ecc_conv_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02&
$ecc_conv/FGN_3/MatMul/ReadVariableOp?
ecc_conv/FGN_3/MatMulMatMul!ecc_conv/FGN_2/Relu:activations:0,ecc_conv/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/MatMul?
%ecc_conv/FGN_3/BiasAdd/ReadVariableOpReadVariableOp.ecc_conv_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%ecc_conv/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv/FGN_3/BiasAddBiasAddecc_conv/FGN_3/MatMul:product:0-ecc_conv/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/BiasAdd?
ecc_conv/FGN_3/ReluReluecc_conv/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv/FGN_3/Relu?
&ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp/ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02(
&ecc_conv/FGN_out/MatMul/ReadVariableOp?
ecc_conv/FGN_out/MatMulMatMul!ecc_conv/FGN_3/Relu:activations:0.ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
ecc_conv/FGN_out/MatMul?
'ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02)
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv/FGN_out/BiasAddBiasAdd!ecc_conv/FGN_out/MatMul:product:0/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
ecc_conv/FGN_out/BiasAdd
ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv/Reshape/shape/0w
ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv/Reshape/shape/2?
ecc_conv/Reshape/shapePack!ecc_conv/Reshape/shape/0:output:0!ecc_conv/strided_slice_1:output:0!ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv/Reshape/shape?
ecc_conv/ReshapeReshape!ecc_conv/FGN_out/BiasAdd:output:0ecc_conv/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv/Reshape?
ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2 
ecc_conv/strided_slice_2/stack?
 ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv/strided_slice_2/stack_1?
 ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 ecc_conv/strided_slice_2/stack_2?
ecc_conv/strided_slice_2StridedSliceinputs'ecc_conv/strided_slice_2/stack:output:0)ecc_conv/strided_slice_2/stack_1:output:0)ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv/strided_slice_2?
ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
ecc_conv/strided_slice_3/stack?
 ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv/strided_slice_3/stack_1?
 ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 ecc_conv/strided_slice_3/stack_2?
ecc_conv/strided_slice_3StridedSliceinputs'ecc_conv/strided_slice_3/stack:output:0)ecc_conv/strided_slice_3/stack_1:output:0)ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv/strided_slice_3{
ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv/GatherV2/axis?
ecc_conv/GatherV2GatherV2inputs_0!ecc_conv/strided_slice_3:output:0ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
2
ecc_conv/GatherV2?
ecc_conv/einsum/EinsumEinsumecc_conv/GatherV2:output:0ecc_conv/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv/einsum/Einsum?
ecc_conv/UnsortedSegmentSumUnsortedSegmentSumecc_conv/einsum/Einsum:output:0!ecc_conv/strided_slice_2:output:0ecc_conv/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv/UnsortedSegmentSum?
ecc_conv/MatMul/ReadVariableOpReadVariableOp'ecc_conv_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02 
ecc_conv/MatMul/ReadVariableOp?
ecc_conv/MatMulMatMulinputs_0&ecc_conv/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv/MatMul?
ecc_conv/addAddV2$ecc_conv/UnsortedSegmentSum:output:0ecc_conv/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv/add?
ecc_conv/BiasAdd/ReadVariableOpReadVariableOp(ecc_conv_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
ecc_conv/BiasAdd/ReadVariableOp?
ecc_conv/BiasAddBiasAddecc_conv/add:z:0'ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv/BiasAddt
ecc_conv/ReluReluecc_conv/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv/Reluo
ecc_conv_1/ShapeShapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_1/Shape?
ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv_1/strided_slice/stack?
 ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_1/strided_slice/stack_1?
 ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv_1/strided_slice/stack_2?
ecc_conv_1/strided_sliceStridedSliceecc_conv_1/Shape:output:0'ecc_conv_1/strided_slice/stack:output:0)ecc_conv_1/strided_slice/stack_1:output:0)ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_1/strided_slices
ecc_conv_1/Shape_1Shapeecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_1/Shape_1?
 ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_1/strided_slice_1/stack?
"ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"ecc_conv_1/strided_slice_1/stack_1?
"ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ecc_conv_1/strided_slice_1/stack_2?
ecc_conv_1/strided_slice_1StridedSliceecc_conv_1/Shape_1:output:0)ecc_conv_1/strided_slice_1/stack:output:0+ecc_conv_1/strided_slice_1/stack_1:output:0+ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_1/strided_slice_1?
&ecc_conv_1/FGN_0/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&ecc_conv_1/FGN_0/MatMul/ReadVariableOp?
ecc_conv_1/FGN_0/MatMulMatMul
inputs_2_0.ecc_conv_1/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/MatMul?
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_0/BiasAddBiasAdd!ecc_conv_1/FGN_0/MatMul:product:0/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/BiasAdd?
ecc_conv_1/FGN_0/ReluRelu!ecc_conv_1/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_0/Relu?
&ecc_conv_1/FGN_1/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_1/FGN_1/MatMul/ReadVariableOp?
ecc_conv_1/FGN_1/MatMulMatMul#ecc_conv_1/FGN_0/Relu:activations:0.ecc_conv_1/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/MatMul?
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_1/BiasAddBiasAdd!ecc_conv_1/FGN_1/MatMul:product:0/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/BiasAdd?
ecc_conv_1/FGN_1/ReluRelu!ecc_conv_1/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_1/Relu?
&ecc_conv_1/FGN_2/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ecc_conv_1/FGN_2/MatMul/ReadVariableOp?
ecc_conv_1/FGN_2/MatMulMatMul#ecc_conv_1/FGN_1/Relu:activations:0.ecc_conv_1/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/MatMul?
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_2/BiasAddBiasAdd!ecc_conv_1/FGN_2/MatMul:product:0/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/BiasAdd?
ecc_conv_1/FGN_2/ReluRelu!ecc_conv_1/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_1/FGN_2/Relu?
&ecc_conv_1/FGN_3/MatMul/ReadVariableOpReadVariableOp/ecc_conv_1_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_1/FGN_3/MatMul/ReadVariableOp?
ecc_conv_1/FGN_3/MatMulMatMul#ecc_conv_1/FGN_2/Relu:activations:0.ecc_conv_1/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/MatMul?
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_1_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_3/BiasAddBiasAdd!ecc_conv_1/FGN_3/MatMul:product:0/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/BiasAdd?
ecc_conv_1/FGN_3/ReluRelu!ecc_conv_1/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_1/FGN_3/Relu?
(ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_1_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp?
ecc_conv_1/FGN_out/MatMulMatMul#ecc_conv_1/FGN_3/Relu:activations:00ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_1/FGN_out/MatMul?
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02+
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv_1/FGN_out/BiasAddBiasAdd#ecc_conv_1/FGN_out/MatMul:product:01ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_1/FGN_out/BiasAdd?
ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_1/Reshape/shape/0{
ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv_1/Reshape/shape/2?
ecc_conv_1/Reshape/shapePack#ecc_conv_1/Reshape/shape/0:output:0#ecc_conv_1/strided_slice_1:output:0#ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv_1/Reshape/shape?
ecc_conv_1/ReshapeReshape#ecc_conv_1/FGN_out/BiasAdd:output:0!ecc_conv_1/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv_1/Reshape?
 ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv_1/strided_slice_2/stack?
"ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_1/strided_slice_2/stack_1?
"ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_1/strided_slice_2/stack_2?
ecc_conv_1/strided_slice_2StridedSliceinputs)ecc_conv_1/strided_slice_2/stack:output:0+ecc_conv_1/strided_slice_2/stack_1:output:0+ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_1/strided_slice_2?
 ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 ecc_conv_1/strided_slice_3/stack?
"ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_1/strided_slice_3/stack_1?
"ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_1/strided_slice_3/stack_2?
ecc_conv_1/strided_slice_3StridedSliceinputs)ecc_conv_1/strided_slice_3/stack:output:0+ecc_conv_1/strided_slice_3/stack_1:output:0+ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_1/strided_slice_3
ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_1/GatherV2/axis?
ecc_conv_1/GatherV2GatherV2ecc_conv/Relu:activations:0#ecc_conv_1/strided_slice_3:output:0!ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
ecc_conv_1/GatherV2?
ecc_conv_1/einsum/EinsumEinsumecc_conv_1/GatherV2:output:0ecc_conv_1/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv_1/einsum/Einsum?
ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_1/einsum/Einsum:output:0#ecc_conv_1/strided_slice_2:output:0!ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv_1/UnsortedSegmentSum?
 ecc_conv_1/MatMul/ReadVariableOpReadVariableOp)ecc_conv_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 ecc_conv_1/MatMul/ReadVariableOp?
ecc_conv_1/MatMulMatMulecc_conv/Relu:activations:0(ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/MatMul?
ecc_conv_1/addAddV2&ecc_conv_1/UnsortedSegmentSum:output:0ecc_conv_1/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/add?
!ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!ecc_conv_1/BiasAdd/ReadVariableOp?
ecc_conv_1/BiasAddBiasAddecc_conv_1/add:z:0)ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/BiasAddz
ecc_conv_1/ReluReluecc_conv_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv_1/Reluq
ecc_conv_2/ShapeShapeecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_2/Shape?
ecc_conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
ecc_conv_2/strided_slice/stack?
 ecc_conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_2/strided_slice/stack_1?
 ecc_conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ecc_conv_2/strided_slice/stack_2?
ecc_conv_2/strided_sliceStridedSliceecc_conv_2/Shape:output:0'ecc_conv_2/strided_slice/stack:output:0)ecc_conv_2/strided_slice/stack_1:output:0)ecc_conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_2/strided_sliceu
ecc_conv_2/Shape_1Shapeecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
ecc_conv_2/Shape_1?
 ecc_conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 ecc_conv_2/strided_slice_1/stack?
"ecc_conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"ecc_conv_2/strided_slice_1/stack_1?
"ecc_conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ecc_conv_2/strided_slice_1/stack_2?
ecc_conv_2/strided_slice_1StridedSliceecc_conv_2/Shape_1:output:0)ecc_conv_2/strided_slice_1/stack:output:0+ecc_conv_2/strided_slice_1/stack_1:output:0+ecc_conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ecc_conv_2/strided_slice_1?
&ecc_conv_2/FGN_0/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&ecc_conv_2/FGN_0/MatMul/ReadVariableOp?
ecc_conv_2/FGN_0/MatMulMatMul
inputs_2_0.ecc_conv_2/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/MatMul?
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_0/BiasAddBiasAdd!ecc_conv_2/FGN_0/MatMul:product:0/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/BiasAdd?
ecc_conv_2/FGN_0/ReluRelu!ecc_conv_2/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_0/Relu?
&ecc_conv_2/FGN_1/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_2/FGN_1/MatMul/ReadVariableOp?
ecc_conv_2/FGN_1/MatMulMatMul#ecc_conv_2/FGN_0/Relu:activations:0.ecc_conv_2/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/MatMul?
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_1/BiasAddBiasAdd!ecc_conv_2/FGN_1/MatMul:product:0/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/BiasAdd?
ecc_conv_2/FGN_1/ReluRelu!ecc_conv_2/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_1/Relu?
&ecc_conv_2/FGN_2/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ecc_conv_2/FGN_2/MatMul/ReadVariableOp?
ecc_conv_2/FGN_2/MatMulMatMul#ecc_conv_2/FGN_1/Relu:activations:0.ecc_conv_2/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/MatMul?
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_2/BiasAddBiasAdd!ecc_conv_2/FGN_2/MatMul:product:0/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/BiasAdd?
ecc_conv_2/FGN_2/ReluRelu!ecc_conv_2/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ecc_conv_2/FGN_2/Relu?
&ecc_conv_2/FGN_3/MatMul/ReadVariableOpReadVariableOp/ecc_conv_2_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ecc_conv_2/FGN_3/MatMul/ReadVariableOp?
ecc_conv_2/FGN_3/MatMulMatMul#ecc_conv_2/FGN_2/Relu:activations:0.ecc_conv_2/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/MatMul?
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOpReadVariableOp0ecc_conv_2_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_3/BiasAddBiasAdd!ecc_conv_2/FGN_3/MatMul:product:0/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/BiasAdd?
ecc_conv_2/FGN_3/ReluRelu!ecc_conv_2/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ecc_conv_2/FGN_3/Relu?
(ecc_conv_2/FGN_out/MatMul/ReadVariableOpReadVariableOp1ecc_conv_2_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(ecc_conv_2/FGN_out/MatMul/ReadVariableOp?
ecc_conv_2/FGN_out/MatMulMatMul#ecc_conv_2/FGN_3/Relu:activations:00ecc_conv_2/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_2/FGN_out/MatMul?
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOpReadVariableOp2ecc_conv_2_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02+
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?
ecc_conv_2/FGN_out/BiasAddBiasAdd#ecc_conv_2/FGN_out/MatMul:product:01ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
ecc_conv_2/FGN_out/BiasAdd?
ecc_conv_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_2/Reshape/shape/0{
ecc_conv_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
ecc_conv_2/Reshape/shape/2?
ecc_conv_2/Reshape/shapePack#ecc_conv_2/Reshape/shape/0:output:0#ecc_conv_2/strided_slice_1:output:0#ecc_conv_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ecc_conv_2/Reshape/shape?
ecc_conv_2/ReshapeReshape#ecc_conv_2/FGN_out/BiasAdd:output:0!ecc_conv_2/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
ecc_conv_2/Reshape?
 ecc_conv_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 ecc_conv_2/strided_slice_2/stack?
"ecc_conv_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_2/strided_slice_2/stack_1?
"ecc_conv_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_2/strided_slice_2/stack_2?
ecc_conv_2/strided_slice_2StridedSliceinputs)ecc_conv_2/strided_slice_2/stack:output:0+ecc_conv_2/strided_slice_2/stack_1:output:0+ecc_conv_2/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_2/strided_slice_2?
 ecc_conv_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 ecc_conv_2/strided_slice_3/stack?
"ecc_conv_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"ecc_conv_2/strided_slice_3/stack_1?
"ecc_conv_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"ecc_conv_2/strided_slice_3/stack_2?
ecc_conv_2/strided_slice_3StridedSliceinputs)ecc_conv_2/strided_slice_3/stack:output:0+ecc_conv_2/strided_slice_3/stack_1:output:0+ecc_conv_2/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
ecc_conv_2/strided_slice_3
ecc_conv_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ecc_conv_2/GatherV2/axis?
ecc_conv_2/GatherV2GatherV2ecc_conv_1/Relu:activations:0#ecc_conv_2/strided_slice_3:output:0!ecc_conv_2/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
ecc_conv_2/GatherV2?
ecc_conv_2/einsum/EinsumEinsumecc_conv_2/GatherV2:output:0ecc_conv_2/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
ecc_conv_2/einsum/Einsum?
ecc_conv_2/UnsortedSegmentSumUnsortedSegmentSum!ecc_conv_2/einsum/Einsum:output:0#ecc_conv_2/strided_slice_2:output:0!ecc_conv_2/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
ecc_conv_2/UnsortedSegmentSum?
 ecc_conv_2/MatMul/ReadVariableOpReadVariableOp)ecc_conv_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 ecc_conv_2/MatMul/ReadVariableOp?
ecc_conv_2/MatMulMatMulecc_conv_1/Relu:activations:0(ecc_conv_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/MatMul?
ecc_conv_2/addAddV2&ecc_conv_2/UnsortedSegmentSum:output:0ecc_conv_2/MatMul:product:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/add?
!ecc_conv_2/BiasAdd/ReadVariableOpReadVariableOp*ecc_conv_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!ecc_conv_2/BiasAdd/ReadVariableOp?
ecc_conv_2/BiasAddBiasAddecc_conv_2/add:z:0)ecc_conv_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/BiasAddz
ecc_conv_2/ReluReluecc_conv_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
ecc_conv_2/Relu?
:global_attention_pool/features_layer/MatMul/ReadVariableOpReadVariableOpCglobal_attention_pool_features_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02<
:global_attention_pool/features_layer/MatMul/ReadVariableOp?
+global_attention_pool/features_layer/MatMulMatMulecc_conv_2/Relu:activations:0Bglobal_attention_pool/features_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+global_attention_pool/features_layer/MatMul?
;global_attention_pool/features_layer/BiasAdd/ReadVariableOpReadVariableOpDglobal_attention_pool_features_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;global_attention_pool/features_layer/BiasAdd/ReadVariableOp?
,global_attention_pool/features_layer/BiasAddBiasAdd5global_attention_pool/features_layer/MatMul:product:0Cglobal_attention_pool/features_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,global_attention_pool/features_layer/BiasAdd?
6global_attention_pool/attn_layer/MatMul/ReadVariableOpReadVariableOp?global_attention_pool_attn_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype028
6global_attention_pool/attn_layer/MatMul/ReadVariableOp?
'global_attention_pool/attn_layer/MatMulMatMulecc_conv_2/Relu:activations:0>global_attention_pool/attn_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'global_attention_pool/attn_layer/MatMul?
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOpReadVariableOp@global_attention_pool_attn_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?
(global_attention_pool/attn_layer/BiasAddBiasAdd1global_attention_pool/attn_layer/MatMul:product:0?global_attention_pool/attn_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(global_attention_pool/attn_layer/BiasAdd?
(global_attention_pool/attn_layer/SigmoidSigmoid1global_attention_pool/attn_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2*
(global_attention_pool/attn_layer/Sigmoid?
global_attention_pool/mulMul5global_attention_pool/features_layer/BiasAdd:output:0,global_attention_pool/attn_layer/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
global_attention_pool/mul?
 global_attention_pool/SegmentSum
SegmentSumglobal_attention_pool/mul:z:0inputs_3*
T0*
Tindices0*(
_output_shapes
:??????????2"
 global_attention_pool/SegmentSum?
dropout/IdentityIdentity)global_attention_pool/SegmentSum:output:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^ecc_conv/BiasAdd/ReadVariableOp&^ecc_conv/FGN_0/BiasAdd/ReadVariableOp%^ecc_conv/FGN_0/MatMul/ReadVariableOp&^ecc_conv/FGN_1/BiasAdd/ReadVariableOp%^ecc_conv/FGN_1/MatMul/ReadVariableOp&^ecc_conv/FGN_2/BiasAdd/ReadVariableOp%^ecc_conv/FGN_2/MatMul/ReadVariableOp&^ecc_conv/FGN_3/BiasAdd/ReadVariableOp%^ecc_conv/FGN_3/MatMul/ReadVariableOp(^ecc_conv/FGN_out/BiasAdd/ReadVariableOp'^ecc_conv/FGN_out/MatMul/ReadVariableOp^ecc_conv/MatMul/ReadVariableOp"^ecc_conv_1/BiasAdd/ReadVariableOp(^ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_0/MatMul/ReadVariableOp(^ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_1/MatMul/ReadVariableOp(^ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_2/MatMul/ReadVariableOp(^ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp'^ecc_conv_1/FGN_3/MatMul/ReadVariableOp*^ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_1/FGN_out/MatMul/ReadVariableOp!^ecc_conv_1/MatMul/ReadVariableOp"^ecc_conv_2/BiasAdd/ReadVariableOp(^ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_0/MatMul/ReadVariableOp(^ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_1/MatMul/ReadVariableOp(^ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_2/MatMul/ReadVariableOp(^ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp'^ecc_conv_2/FGN_3/MatMul/ReadVariableOp*^ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp)^ecc_conv_2/FGN_out/MatMul/ReadVariableOp!^ecc_conv_2/MatMul/ReadVariableOp8^global_attention_pool/attn_layer/BiasAdd/ReadVariableOp7^global_attention_pool/attn_layer/MatMul/ReadVariableOp<^global_attention_pool/features_layer/BiasAdd/ReadVariableOp;^global_attention_pool/features_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
ecc_conv/BiasAdd/ReadVariableOpecc_conv/BiasAdd/ReadVariableOp2N
%ecc_conv/FGN_0/BiasAdd/ReadVariableOp%ecc_conv/FGN_0/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_0/MatMul/ReadVariableOp$ecc_conv/FGN_0/MatMul/ReadVariableOp2N
%ecc_conv/FGN_1/BiasAdd/ReadVariableOp%ecc_conv/FGN_1/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_1/MatMul/ReadVariableOp$ecc_conv/FGN_1/MatMul/ReadVariableOp2N
%ecc_conv/FGN_2/BiasAdd/ReadVariableOp%ecc_conv/FGN_2/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_2/MatMul/ReadVariableOp$ecc_conv/FGN_2/MatMul/ReadVariableOp2N
%ecc_conv/FGN_3/BiasAdd/ReadVariableOp%ecc_conv/FGN_3/BiasAdd/ReadVariableOp2L
$ecc_conv/FGN_3/MatMul/ReadVariableOp$ecc_conv/FGN_3/MatMul/ReadVariableOp2R
'ecc_conv/FGN_out/BiasAdd/ReadVariableOp'ecc_conv/FGN_out/BiasAdd/ReadVariableOp2P
&ecc_conv/FGN_out/MatMul/ReadVariableOp&ecc_conv/FGN_out/MatMul/ReadVariableOp2@
ecc_conv/MatMul/ReadVariableOpecc_conv/MatMul/ReadVariableOp2F
!ecc_conv_1/BiasAdd/ReadVariableOp!ecc_conv_1/BiasAdd/ReadVariableOp2R
'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_0/MatMul/ReadVariableOp&ecc_conv_1/FGN_0/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_1/MatMul/ReadVariableOp&ecc_conv_1/FGN_1/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_2/MatMul/ReadVariableOp&ecc_conv_1/FGN_2/MatMul/ReadVariableOp2R
'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp'ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp2P
&ecc_conv_1/FGN_3/MatMul/ReadVariableOp&ecc_conv_1/FGN_3/MatMul/ReadVariableOp2V
)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_1/FGN_out/MatMul/ReadVariableOp(ecc_conv_1/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_1/MatMul/ReadVariableOp ecc_conv_1/MatMul/ReadVariableOp2F
!ecc_conv_2/BiasAdd/ReadVariableOp!ecc_conv_2/BiasAdd/ReadVariableOp2R
'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_0/MatMul/ReadVariableOp&ecc_conv_2/FGN_0/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_1/MatMul/ReadVariableOp&ecc_conv_2/FGN_1/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_2/MatMul/ReadVariableOp&ecc_conv_2/FGN_2/MatMul/ReadVariableOp2R
'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp'ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp2P
&ecc_conv_2/FGN_3/MatMul/ReadVariableOp&ecc_conv_2/FGN_3/MatMul/ReadVariableOp2V
)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp)ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp2T
(ecc_conv_2/FGN_out/MatMul/ReadVariableOp(ecc_conv_2/FGN_out/MatMul/ReadVariableOp2D
 ecc_conv_2/MatMul/ReadVariableOp ecc_conv_2/MatMul/ReadVariableOp2r
7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp7global_attention_pool/attn_layer/BiasAdd/ReadVariableOp2p
6global_attention_pool/attn_layer/MatMul/ReadVariableOp6global_attention_pool/attn_layer/MatMul/ReadVariableOp2z
;global_attention_pool/features_layer/BiasAdd/ReadVariableOp;global_attention_pool/features_layer/BiasAdd/ReadVariableOp2x
:global_attention_pool/features_layer/MatMul/ReadVariableOp:global_attention_pool/features_layer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_121016

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_1_layer_call_and_return_conditional_losses_118814

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?-
!__inference__wrapped_model_118426

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4
args_0_5E
3model_ecc_conv_fgn_0_matmul_readvariableop_resource:B
4model_ecc_conv_fgn_0_biasadd_readvariableop_resource:E
3model_ecc_conv_fgn_1_matmul_readvariableop_resource: B
4model_ecc_conv_fgn_1_biasadd_readvariableop_resource: E
3model_ecc_conv_fgn_2_matmul_readvariableop_resource:  B
4model_ecc_conv_fgn_2_biasadd_readvariableop_resource: E
3model_ecc_conv_fgn_3_matmul_readvariableop_resource: B
4model_ecc_conv_fgn_3_biasadd_readvariableop_resource:H
5model_ecc_conv_fgn_out_matmul_readvariableop_resource:	?
E
6model_ecc_conv_fgn_out_biasadd_readvariableop_resource:	?
@
-model_ecc_conv_matmul_readvariableop_resource:	
?=
.model_ecc_conv_biasadd_readvariableop_resource:	?G
5model_ecc_conv_1_fgn_0_matmul_readvariableop_resource:D
6model_ecc_conv_1_fgn_0_biasadd_readvariableop_resource:G
5model_ecc_conv_1_fgn_1_matmul_readvariableop_resource: D
6model_ecc_conv_1_fgn_1_biasadd_readvariableop_resource: G
5model_ecc_conv_1_fgn_2_matmul_readvariableop_resource:  D
6model_ecc_conv_1_fgn_2_biasadd_readvariableop_resource: G
5model_ecc_conv_1_fgn_3_matmul_readvariableop_resource: D
6model_ecc_conv_1_fgn_3_biasadd_readvariableop_resource:K
7model_ecc_conv_1_fgn_out_matmul_readvariableop_resource:
??H
8model_ecc_conv_1_fgn_out_biasadd_readvariableop_resource:
??C
/model_ecc_conv_1_matmul_readvariableop_resource:
???
0model_ecc_conv_1_biasadd_readvariableop_resource:	?G
5model_ecc_conv_2_fgn_0_matmul_readvariableop_resource:D
6model_ecc_conv_2_fgn_0_biasadd_readvariableop_resource:G
5model_ecc_conv_2_fgn_1_matmul_readvariableop_resource: D
6model_ecc_conv_2_fgn_1_biasadd_readvariableop_resource: G
5model_ecc_conv_2_fgn_2_matmul_readvariableop_resource:  D
6model_ecc_conv_2_fgn_2_biasadd_readvariableop_resource: G
5model_ecc_conv_2_fgn_3_matmul_readvariableop_resource: D
6model_ecc_conv_2_fgn_3_biasadd_readvariableop_resource:K
7model_ecc_conv_2_fgn_out_matmul_readvariableop_resource:
??H
8model_ecc_conv_2_fgn_out_biasadd_readvariableop_resource:
??C
/model_ecc_conv_2_matmul_readvariableop_resource:
???
0model_ecc_conv_2_biasadd_readvariableop_resource:	?]
Imodel_global_attention_pool_features_layer_matmul_readvariableop_resource:
??Y
Jmodel_global_attention_pool_features_layer_biasadd_readvariableop_resource:	?Y
Emodel_global_attention_pool_attn_layer_matmul_readvariableop_resource:
??U
Fmodel_global_attention_pool_attn_layer_biasadd_readvariableop_resource:	?>
*model_dense_matmul_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	?@
,model_dense_1_matmul_readvariableop_resource:
??<
-model_dense_1_biasadd_readvariableop_resource:	?@
,model_dense_2_matmul_readvariableop_resource:
??<
-model_dense_2_biasadd_readvariableop_resource:	??
,model_dense_3_matmul_readvariableop_resource:	?;
-model_dense_3_biasadd_readvariableop_resource:
identity??"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?$model/dense_3/BiasAdd/ReadVariableOp?#model/dense_3/MatMul/ReadVariableOp?%model/ecc_conv/BiasAdd/ReadVariableOp?+model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp?*model/ecc_conv/FGN_0/MatMul/ReadVariableOp?+model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp?*model/ecc_conv/FGN_1/MatMul/ReadVariableOp?+model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp?*model/ecc_conv/FGN_2/MatMul/ReadVariableOp?+model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp?*model/ecc_conv/FGN_3/MatMul/ReadVariableOp?-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp?,model/ecc_conv/FGN_out/MatMul/ReadVariableOp?$model/ecc_conv/MatMul/ReadVariableOp?'model/ecc_conv_1/BiasAdd/ReadVariableOp?-model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?,model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp?-model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?,model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp?-model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?,model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp?-model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?,model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp?/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp?&model/ecc_conv_1/MatMul/ReadVariableOp?'model/ecc_conv_2/BiasAdd/ReadVariableOp?-model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?,model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp?-model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?,model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp?-model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?,model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp?-model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?,model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp?/model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?.model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp?&model/ecc_conv_2/MatMul/ReadVariableOp?=model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?<model/global_attention_pool/attn_layer/MatMul/ReadVariableOp?Amodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOp?@model/global_attention_pool/features_layer/MatMul/ReadVariableOpb
model/ecc_conv/ShapeShapeargs_0*
T0*
_output_shapes
:2
model/ecc_conv/Shape?
"model/ecc_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"model/ecc_conv/strided_slice/stack?
$model/ecc_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$model/ecc_conv/strided_slice/stack_1?
$model/ecc_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model/ecc_conv/strided_slice/stack_2?
model/ecc_conv/strided_sliceStridedSlicemodel/ecc_conv/Shape:output:0+model/ecc_conv/strided_slice/stack:output:0-model/ecc_conv/strided_slice/stack_1:output:0-model/ecc_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/ecc_conv/strided_slicef
model/ecc_conv/Shape_1Shapeargs_0*
T0*
_output_shapes
:2
model/ecc_conv/Shape_1?
$model/ecc_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$model/ecc_conv/strided_slice_1/stack?
&model/ecc_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&model/ecc_conv/strided_slice_1/stack_1?
&model/ecc_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model/ecc_conv/strided_slice_1/stack_2?
model/ecc_conv/strided_slice_1StridedSlicemodel/ecc_conv/Shape_1:output:0-model/ecc_conv/strided_slice_1/stack:output:0/model/ecc_conv/strided_slice_1/stack_1:output:0/model/ecc_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model/ecc_conv/strided_slice_1?
*model/ecc_conv/FGN_0/MatMul/ReadVariableOpReadVariableOp3model_ecc_conv_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*model/ecc_conv/FGN_0/MatMul/ReadVariableOp?
model/ecc_conv/FGN_0/MatMulMatMulargs_0_42model/ecc_conv/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_0/MatMul?
+model/ecc_conv/FGN_0/BiasAdd/ReadVariableOpReadVariableOp4model_ecc_conv_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp?
model/ecc_conv/FGN_0/BiasAddBiasAdd%model/ecc_conv/FGN_0/MatMul:product:03model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_0/BiasAdd?
model/ecc_conv/FGN_0/ReluRelu%model/ecc_conv/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_0/Relu?
*model/ecc_conv/FGN_1/MatMul/ReadVariableOpReadVariableOp3model_ecc_conv_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*model/ecc_conv/FGN_1/MatMul/ReadVariableOp?
model/ecc_conv/FGN_1/MatMulMatMul'model/ecc_conv/FGN_0/Relu:activations:02model/ecc_conv/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_1/MatMul?
+model/ecc_conv/FGN_1/BiasAdd/ReadVariableOpReadVariableOp4model_ecc_conv_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp?
model/ecc_conv/FGN_1/BiasAddBiasAdd%model/ecc_conv/FGN_1/MatMul:product:03model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_1/BiasAdd?
model/ecc_conv/FGN_1/ReluRelu%model/ecc_conv/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_1/Relu?
*model/ecc_conv/FGN_2/MatMul/ReadVariableOpReadVariableOp3model_ecc_conv_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02,
*model/ecc_conv/FGN_2/MatMul/ReadVariableOp?
model/ecc_conv/FGN_2/MatMulMatMul'model/ecc_conv/FGN_1/Relu:activations:02model/ecc_conv/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_2/MatMul?
+model/ecc_conv/FGN_2/BiasAdd/ReadVariableOpReadVariableOp4model_ecc_conv_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp?
model/ecc_conv/FGN_2/BiasAddBiasAdd%model/ecc_conv/FGN_2/MatMul:product:03model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_2/BiasAdd?
model/ecc_conv/FGN_2/ReluRelu%model/ecc_conv/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv/FGN_2/Relu?
*model/ecc_conv/FGN_3/MatMul/ReadVariableOpReadVariableOp3model_ecc_conv_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*model/ecc_conv/FGN_3/MatMul/ReadVariableOp?
model/ecc_conv/FGN_3/MatMulMatMul'model/ecc_conv/FGN_2/Relu:activations:02model/ecc_conv/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_3/MatMul?
+model/ecc_conv/FGN_3/BiasAdd/ReadVariableOpReadVariableOp4model_ecc_conv_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp?
model/ecc_conv/FGN_3/BiasAddBiasAdd%model/ecc_conv/FGN_3/MatMul:product:03model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_3/BiasAdd?
model/ecc_conv/FGN_3/ReluRelu%model/ecc_conv/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv/FGN_3/Relu?
,model/ecc_conv/FGN_out/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_fgn_out_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02.
,model/ecc_conv/FGN_out/MatMul/ReadVariableOp?
model/ecc_conv/FGN_out/MatMulMatMul'model/ecc_conv/FGN_3/Relu:activations:04model/ecc_conv/FGN_out/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
model/ecc_conv/FGN_out/MatMul?
-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_fgn_out_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02/
-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp?
model/ecc_conv/FGN_out/BiasAddBiasAdd'model/ecc_conv/FGN_out/MatMul:product:05model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2 
model/ecc_conv/FGN_out/BiasAdd?
model/ecc_conv/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/ecc_conv/Reshape/shape/0?
model/ecc_conv/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2 
model/ecc_conv/Reshape/shape/2?
model/ecc_conv/Reshape/shapePack'model/ecc_conv/Reshape/shape/0:output:0'model/ecc_conv/strided_slice_1:output:0'model/ecc_conv/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
model/ecc_conv/Reshape/shape?
model/ecc_conv/ReshapeReshape'model/ecc_conv/FGN_out/BiasAdd:output:0%model/ecc_conv/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
model/ecc_conv/Reshape?
$model/ecc_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$model/ecc_conv/strided_slice_2/stack?
&model/ecc_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&model/ecc_conv/strided_slice_2/stack_1?
&model/ecc_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/ecc_conv/strided_slice_2/stack_2?
model/ecc_conv/strided_slice_2StridedSliceargs_0_1-model/ecc_conv/strided_slice_2/stack:output:0/model/ecc_conv/strided_slice_2/stack_1:output:0/model/ecc_conv/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
model/ecc_conv/strided_slice_2?
$model/ecc_conv/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$model/ecc_conv/strided_slice_3/stack?
&model/ecc_conv/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&model/ecc_conv/strided_slice_3/stack_1?
&model/ecc_conv/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&model/ecc_conv/strided_slice_3/stack_2?
model/ecc_conv/strided_slice_3StridedSliceargs_0_1-model/ecc_conv/strided_slice_3/stack:output:0/model/ecc_conv/strided_slice_3/stack_1:output:0/model/ecc_conv/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
model/ecc_conv/strided_slice_3?
model/ecc_conv/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
model/ecc_conv/GatherV2/axis?
model/ecc_conv/GatherV2GatherV2args_0'model/ecc_conv/strided_slice_3:output:0%model/ecc_conv/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:?????????
2
model/ecc_conv/GatherV2?
model/ecc_conv/einsum/EinsumEinsum model/ecc_conv/GatherV2:output:0model/ecc_conv/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
model/ecc_conv/einsum/Einsum?
!model/ecc_conv/UnsortedSegmentSumUnsortedSegmentSum%model/ecc_conv/einsum/Einsum:output:0'model/ecc_conv/strided_slice_2:output:0%model/ecc_conv/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2#
!model/ecc_conv/UnsortedSegmentSum?
$model/ecc_conv/MatMul/ReadVariableOpReadVariableOp-model_ecc_conv_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02&
$model/ecc_conv/MatMul/ReadVariableOp?
model/ecc_conv/MatMulMatMulargs_0,model/ecc_conv/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv/MatMul?
model/ecc_conv/addAddV2*model/ecc_conv/UnsortedSegmentSum:output:0model/ecc_conv/MatMul:product:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv/add?
%model/ecc_conv/BiasAdd/ReadVariableOpReadVariableOp.model_ecc_conv_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%model/ecc_conv/BiasAdd/ReadVariableOp?
model/ecc_conv/BiasAddBiasAddmodel/ecc_conv/add:z:0-model/ecc_conv/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv/BiasAdd?
model/ecc_conv/ReluRelumodel/ecc_conv/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv/Relu?
model/ecc_conv_1/ShapeShape!model/ecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
model/ecc_conv_1/Shape?
$model/ecc_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$model/ecc_conv_1/strided_slice/stack?
&model/ecc_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&model/ecc_conv_1/strided_slice/stack_1?
&model/ecc_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model/ecc_conv_1/strided_slice/stack_2?
model/ecc_conv_1/strided_sliceStridedSlicemodel/ecc_conv_1/Shape:output:0-model/ecc_conv_1/strided_slice/stack:output:0/model/ecc_conv_1/strided_slice/stack_1:output:0/model/ecc_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model/ecc_conv_1/strided_slice?
model/ecc_conv_1/Shape_1Shape!model/ecc_conv/Relu:activations:0*
T0*
_output_shapes
:2
model/ecc_conv_1/Shape_1?
&model/ecc_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&model/ecc_conv_1/strided_slice_1/stack?
(model/ecc_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(model/ecc_conv_1/strided_slice_1/stack_1?
(model/ecc_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ecc_conv_1/strided_slice_1/stack_2?
 model/ecc_conv_1/strided_slice_1StridedSlice!model/ecc_conv_1/Shape_1:output:0/model/ecc_conv_1/strided_slice_1/stack:output:01model/ecc_conv_1/strided_slice_1/stack_1:output:01model/ecc_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/ecc_conv_1/strided_slice_1?
,model/ecc_conv_1/FGN_0/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_1_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp?
model/ecc_conv_1/FGN_0/MatMulMatMulargs_0_44model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_1/FGN_0/MatMul?
-model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_1_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp?
model/ecc_conv_1/FGN_0/BiasAddBiasAdd'model/ecc_conv_1/FGN_0/MatMul:product:05model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
model/ecc_conv_1/FGN_0/BiasAdd?
model/ecc_conv_1/FGN_0/ReluRelu'model/ecc_conv_1/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_1/FGN_0/Relu?
,model/ecc_conv_1/FGN_1/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_1_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp?
model/ecc_conv_1/FGN_1/MatMulMatMul)model/ecc_conv_1/FGN_0/Relu:activations:04model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_1/FGN_1/MatMul?
-model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_1_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp?
model/ecc_conv_1/FGN_1/BiasAddBiasAdd'model/ecc_conv_1/FGN_1/MatMul:product:05model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
model/ecc_conv_1/FGN_1/BiasAdd?
model/ecc_conv_1/FGN_1/ReluRelu'model/ecc_conv_1/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_1/FGN_1/Relu?
,model/ecc_conv_1/FGN_2/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_1_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp?
model/ecc_conv_1/FGN_2/MatMulMatMul)model/ecc_conv_1/FGN_1/Relu:activations:04model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_1/FGN_2/MatMul?
-model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_1_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp?
model/ecc_conv_1/FGN_2/BiasAddBiasAdd'model/ecc_conv_1/FGN_2/MatMul:product:05model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
model/ecc_conv_1/FGN_2/BiasAdd?
model/ecc_conv_1/FGN_2/ReluRelu'model/ecc_conv_1/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_1/FGN_2/Relu?
,model/ecc_conv_1/FGN_3/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_1_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp?
model/ecc_conv_1/FGN_3/MatMulMatMul)model/ecc_conv_1/FGN_2/Relu:activations:04model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_1/FGN_3/MatMul?
-model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_1_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp?
model/ecc_conv_1/FGN_3/BiasAddBiasAdd'model/ecc_conv_1/FGN_3/MatMul:product:05model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
model/ecc_conv_1/FGN_3/BiasAdd?
model/ecc_conv_1/FGN_3/ReluRelu'model/ecc_conv_1/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_1/FGN_3/Relu?
.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOpReadVariableOp7model_ecc_conv_1_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp?
model/ecc_conv_1/FGN_out/MatMulMatMul)model/ecc_conv_1/FGN_3/Relu:activations:06model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2!
model/ecc_conv_1/FGN_out/MatMul?
/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOpReadVariableOp8model_ecc_conv_1_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype021
/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp?
 model/ecc_conv_1/FGN_out/BiasAddBiasAdd)model/ecc_conv_1/FGN_out/MatMul:product:07model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2"
 model/ecc_conv_1/FGN_out/BiasAdd?
 model/ecc_conv_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 model/ecc_conv_1/Reshape/shape/0?
 model/ecc_conv_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2"
 model/ecc_conv_1/Reshape/shape/2?
model/ecc_conv_1/Reshape/shapePack)model/ecc_conv_1/Reshape/shape/0:output:0)model/ecc_conv_1/strided_slice_1:output:0)model/ecc_conv_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2 
model/ecc_conv_1/Reshape/shape?
model/ecc_conv_1/ReshapeReshape)model/ecc_conv_1/FGN_out/BiasAdd:output:0'model/ecc_conv_1/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
model/ecc_conv_1/Reshape?
&model/ecc_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/ecc_conv_1/strided_slice_2/stack?
(model/ecc_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(model/ecc_conv_1/strided_slice_2/stack_1?
(model/ecc_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/ecc_conv_1/strided_slice_2/stack_2?
 model/ecc_conv_1/strided_slice_2StridedSliceargs_0_1/model/ecc_conv_1/strided_slice_2/stack:output:01model/ecc_conv_1/strided_slice_2/stack_1:output:01model/ecc_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 model/ecc_conv_1/strided_slice_2?
&model/ecc_conv_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&model/ecc_conv_1/strided_slice_3/stack?
(model/ecc_conv_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(model/ecc_conv_1/strided_slice_3/stack_1?
(model/ecc_conv_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/ecc_conv_1/strided_slice_3/stack_2?
 model/ecc_conv_1/strided_slice_3StridedSliceargs_0_1/model/ecc_conv_1/strided_slice_3/stack:output:01model/ecc_conv_1/strided_slice_3/stack_1:output:01model/ecc_conv_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 model/ecc_conv_1/strided_slice_3?
model/ecc_conv_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/ecc_conv_1/GatherV2/axis?
model/ecc_conv_1/GatherV2GatherV2!model/ecc_conv/Relu:activations:0)model/ecc_conv_1/strided_slice_3:output:0'model/ecc_conv_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
model/ecc_conv_1/GatherV2?
model/ecc_conv_1/einsum/EinsumEinsum"model/ecc_conv_1/GatherV2:output:0!model/ecc_conv_1/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2 
model/ecc_conv_1/einsum/Einsum?
#model/ecc_conv_1/UnsortedSegmentSumUnsortedSegmentSum'model/ecc_conv_1/einsum/Einsum:output:0)model/ecc_conv_1/strided_slice_2:output:0'model/ecc_conv_1/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2%
#model/ecc_conv_1/UnsortedSegmentSum?
&model/ecc_conv_1/MatMul/ReadVariableOpReadVariableOp/model_ecc_conv_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model/ecc_conv_1/MatMul/ReadVariableOp?
model/ecc_conv_1/MatMulMatMul!model/ecc_conv/Relu:activations:0.model/ecc_conv_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_1/MatMul?
model/ecc_conv_1/addAddV2,model/ecc_conv_1/UnsortedSegmentSum:output:0!model/ecc_conv_1/MatMul:product:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_1/add?
'model/ecc_conv_1/BiasAdd/ReadVariableOpReadVariableOp0model_ecc_conv_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model/ecc_conv_1/BiasAdd/ReadVariableOp?
model/ecc_conv_1/BiasAddBiasAddmodel/ecc_conv_1/add:z:0/model/ecc_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_1/BiasAdd?
model/ecc_conv_1/ReluRelu!model/ecc_conv_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_1/Relu?
model/ecc_conv_2/ShapeShape#model/ecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
model/ecc_conv_2/Shape?
$model/ecc_conv_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$model/ecc_conv_2/strided_slice/stack?
&model/ecc_conv_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&model/ecc_conv_2/strided_slice/stack_1?
&model/ecc_conv_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model/ecc_conv_2/strided_slice/stack_2?
model/ecc_conv_2/strided_sliceStridedSlicemodel/ecc_conv_2/Shape:output:0-model/ecc_conv_2/strided_slice/stack:output:0/model/ecc_conv_2/strided_slice/stack_1:output:0/model/ecc_conv_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model/ecc_conv_2/strided_slice?
model/ecc_conv_2/Shape_1Shape#model/ecc_conv_1/Relu:activations:0*
T0*
_output_shapes
:2
model/ecc_conv_2/Shape_1?
&model/ecc_conv_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2(
&model/ecc_conv_2/strided_slice_1/stack?
(model/ecc_conv_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(model/ecc_conv_2/strided_slice_1/stack_1?
(model/ecc_conv_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ecc_conv_2/strided_slice_1/stack_2?
 model/ecc_conv_2/strided_slice_1StridedSlice!model/ecc_conv_2/Shape_1:output:0/model/ecc_conv_2/strided_slice_1/stack:output:01model/ecc_conv_2/strided_slice_1/stack_1:output:01model/ecc_conv_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/ecc_conv_2/strided_slice_1?
,model/ecc_conv_2/FGN_0/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_2_fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp?
model/ecc_conv_2/FGN_0/MatMulMatMulargs_0_44model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_2/FGN_0/MatMul?
-model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_2_fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp?
model/ecc_conv_2/FGN_0/BiasAddBiasAdd'model/ecc_conv_2/FGN_0/MatMul:product:05model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
model/ecc_conv_2/FGN_0/BiasAdd?
model/ecc_conv_2/FGN_0/ReluRelu'model/ecc_conv_2/FGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_2/FGN_0/Relu?
,model/ecc_conv_2/FGN_1/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_2_fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp?
model/ecc_conv_2/FGN_1/MatMulMatMul)model/ecc_conv_2/FGN_0/Relu:activations:04model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_2/FGN_1/MatMul?
-model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_2_fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp?
model/ecc_conv_2/FGN_1/BiasAddBiasAdd'model/ecc_conv_2/FGN_1/MatMul:product:05model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
model/ecc_conv_2/FGN_1/BiasAdd?
model/ecc_conv_2/FGN_1/ReluRelu'model/ecc_conv_2/FGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_2/FGN_1/Relu?
,model/ecc_conv_2/FGN_2/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_2_fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp?
model/ecc_conv_2/FGN_2/MatMulMatMul)model/ecc_conv_2/FGN_1/Relu:activations:04model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_2/FGN_2/MatMul?
-model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_2_fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp?
model/ecc_conv_2/FGN_2/BiasAddBiasAdd'model/ecc_conv_2/FGN_2/MatMul:product:05model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
model/ecc_conv_2/FGN_2/BiasAdd?
model/ecc_conv_2/FGN_2/ReluRelu'model/ecc_conv_2/FGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/ecc_conv_2/FGN_2/Relu?
,model/ecc_conv_2/FGN_3/MatMul/ReadVariableOpReadVariableOp5model_ecc_conv_2_fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp?
model/ecc_conv_2/FGN_3/MatMulMatMul)model/ecc_conv_2/FGN_2/Relu:activations:04model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_2/FGN_3/MatMul?
-model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOpReadVariableOp6model_ecc_conv_2_fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp?
model/ecc_conv_2/FGN_3/BiasAddBiasAdd'model/ecc_conv_2/FGN_3/MatMul:product:05model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
model/ecc_conv_2/FGN_3/BiasAdd?
model/ecc_conv_2/FGN_3/ReluRelu'model/ecc_conv_2/FGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/ecc_conv_2/FGN_3/Relu?
.model/ecc_conv_2/FGN_out/MatMul/ReadVariableOpReadVariableOp7model_ecc_conv_2_fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp?
model/ecc_conv_2/FGN_out/MatMulMatMul)model/ecc_conv_2/FGN_3/Relu:activations:06model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2!
model/ecc_conv_2/FGN_out/MatMul?
/model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOpReadVariableOp8model_ecc_conv_2_fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype021
/model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp?
 model/ecc_conv_2/FGN_out/BiasAddBiasAdd)model/ecc_conv_2/FGN_out/MatMul:product:07model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2"
 model/ecc_conv_2/FGN_out/BiasAdd?
 model/ecc_conv_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 model/ecc_conv_2/Reshape/shape/0?
 model/ecc_conv_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2"
 model/ecc_conv_2/Reshape/shape/2?
model/ecc_conv_2/Reshape/shapePack)model/ecc_conv_2/Reshape/shape/0:output:0)model/ecc_conv_2/strided_slice_1:output:0)model/ecc_conv_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2 
model/ecc_conv_2/Reshape/shape?
model/ecc_conv_2/ReshapeReshape)model/ecc_conv_2/FGN_out/BiasAdd:output:0'model/ecc_conv_2/Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
model/ecc_conv_2/Reshape?
&model/ecc_conv_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/ecc_conv_2/strided_slice_2/stack?
(model/ecc_conv_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(model/ecc_conv_2/strided_slice_2/stack_1?
(model/ecc_conv_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/ecc_conv_2/strided_slice_2/stack_2?
 model/ecc_conv_2/strided_slice_2StridedSliceargs_0_1/model/ecc_conv_2/strided_slice_2/stack:output:01model/ecc_conv_2/strided_slice_2/stack_1:output:01model/ecc_conv_2/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 model/ecc_conv_2/strided_slice_2?
&model/ecc_conv_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&model/ecc_conv_2/strided_slice_3/stack?
(model/ecc_conv_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(model/ecc_conv_2/strided_slice_3/stack_1?
(model/ecc_conv_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(model/ecc_conv_2/strided_slice_3/stack_2?
 model/ecc_conv_2/strided_slice_3StridedSliceargs_0_1/model/ecc_conv_2/strided_slice_3/stack:output:01model/ecc_conv_2/strided_slice_3/stack_1:output:01model/ecc_conv_2/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 model/ecc_conv_2/strided_slice_3?
model/ecc_conv_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
model/ecc_conv_2/GatherV2/axis?
model/ecc_conv_2/GatherV2GatherV2#model/ecc_conv_1/Relu:activations:0)model/ecc_conv_2/strided_slice_3:output:0'model/ecc_conv_2/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2
model/ecc_conv_2/GatherV2?
model/ecc_conv_2/einsum/EinsumEinsum"model/ecc_conv_2/GatherV2:output:0!model/ecc_conv_2/Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2 
model/ecc_conv_2/einsum/Einsum?
#model/ecc_conv_2/UnsortedSegmentSumUnsortedSegmentSum'model/ecc_conv_2/einsum/Einsum:output:0)model/ecc_conv_2/strided_slice_2:output:0'model/ecc_conv_2/strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2%
#model/ecc_conv_2/UnsortedSegmentSum?
&model/ecc_conv_2/MatMul/ReadVariableOpReadVariableOp/model_ecc_conv_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model/ecc_conv_2/MatMul/ReadVariableOp?
model/ecc_conv_2/MatMulMatMul#model/ecc_conv_1/Relu:activations:0.model/ecc_conv_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_2/MatMul?
model/ecc_conv_2/addAddV2,model/ecc_conv_2/UnsortedSegmentSum:output:0!model/ecc_conv_2/MatMul:product:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_2/add?
'model/ecc_conv_2/BiasAdd/ReadVariableOpReadVariableOp0model_ecc_conv_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model/ecc_conv_2/BiasAdd/ReadVariableOp?
model/ecc_conv_2/BiasAddBiasAddmodel/ecc_conv_2/add:z:0/model/ecc_conv_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_2/BiasAdd?
model/ecc_conv_2/ReluRelu!model/ecc_conv_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/ecc_conv_2/Relu?
@model/global_attention_pool/features_layer/MatMul/ReadVariableOpReadVariableOpImodel_global_attention_pool_features_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02B
@model/global_attention_pool/features_layer/MatMul/ReadVariableOp?
1model/global_attention_pool/features_layer/MatMulMatMul#model/ecc_conv_2/Relu:activations:0Hmodel/global_attention_pool/features_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1model/global_attention_pool/features_layer/MatMul?
Amodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOpReadVariableOpJmodel_global_attention_pool_features_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOp?
2model/global_attention_pool/features_layer/BiasAddBiasAdd;model/global_attention_pool/features_layer/MatMul:product:0Imodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2model/global_attention_pool/features_layer/BiasAdd?
<model/global_attention_pool/attn_layer/MatMul/ReadVariableOpReadVariableOpEmodel_global_attention_pool_attn_layer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02>
<model/global_attention_pool/attn_layer/MatMul/ReadVariableOp?
-model/global_attention_pool/attn_layer/MatMulMatMul#model/ecc_conv_2/Relu:activations:0Dmodel/global_attention_pool/attn_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-model/global_attention_pool/attn_layer/MatMul?
=model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOpReadVariableOpFmodel_global_attention_pool_attn_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp?
.model/global_attention_pool/attn_layer/BiasAddBiasAdd7model/global_attention_pool/attn_layer/MatMul:product:0Emodel/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.model/global_attention_pool/attn_layer/BiasAdd?
.model/global_attention_pool/attn_layer/SigmoidSigmoid7model/global_attention_pool/attn_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????20
.model/global_attention_pool/attn_layer/Sigmoid?
model/global_attention_pool/mulMul;model/global_attention_pool/features_layer/BiasAdd:output:02model/global_attention_pool/attn_layer/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2!
model/global_attention_pool/mul?
&model/global_attention_pool/SegmentSum
SegmentSum#model/global_attention_pool/mul:z:0args_0_5*
T0*
Tindices0*(
_output_shapes
:??????????2(
&model/global_attention_pool/SegmentSum?
model/dropout/IdentityIdentity/model/global_attention_pool/SegmentSum:output:0*
T0*(
_output_shapes
:??????????2
model/dropout/Identity?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMulmodel/dropout/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense/BiasAdd}
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/dense/Relu?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#model/dense_1/MatMul/ReadVariableOp?
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense_1/MatMul?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense_1/BiasAdd?
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/dense_1/Relu?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#model/dense_2/MatMul/ReadVariableOp?
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense_2/MatMul?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense_2/BiasAdd?
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/dense_2/Relu?
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#model/dense_3/MatMul/ReadVariableOp?
model/dense_3/MatMulMatMul model/dense_2/Relu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_3/MatMul?
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp?
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_3/BiasAdd?
IdentityIdentitymodel/dense_3/BiasAdd:output:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp&^model/ecc_conv/BiasAdd/ReadVariableOp,^model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp+^model/ecc_conv/FGN_0/MatMul/ReadVariableOp,^model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp+^model/ecc_conv/FGN_1/MatMul/ReadVariableOp,^model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp+^model/ecc_conv/FGN_2/MatMul/ReadVariableOp,^model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp+^model/ecc_conv/FGN_3/MatMul/ReadVariableOp.^model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp-^model/ecc_conv/FGN_out/MatMul/ReadVariableOp%^model/ecc_conv/MatMul/ReadVariableOp(^model/ecc_conv_1/BiasAdd/ReadVariableOp.^model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp-^model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp.^model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp-^model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp.^model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp-^model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp.^model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp-^model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp0^model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp/^model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp'^model/ecc_conv_1/MatMul/ReadVariableOp(^model/ecc_conv_2/BiasAdd/ReadVariableOp.^model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp-^model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp.^model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp-^model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp.^model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp-^model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp.^model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp-^model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp0^model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp/^model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp'^model/ecc_conv_2/MatMul/ReadVariableOp>^model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp=^model/global_attention_pool/attn_layer/MatMul/ReadVariableOpB^model/global_attention_pool/features_layer/BiasAdd/ReadVariableOpA^model/global_attention_pool/features_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2N
%model/ecc_conv/BiasAdd/ReadVariableOp%model/ecc_conv/BiasAdd/ReadVariableOp2Z
+model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp+model/ecc_conv/FGN_0/BiasAdd/ReadVariableOp2X
*model/ecc_conv/FGN_0/MatMul/ReadVariableOp*model/ecc_conv/FGN_0/MatMul/ReadVariableOp2Z
+model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp+model/ecc_conv/FGN_1/BiasAdd/ReadVariableOp2X
*model/ecc_conv/FGN_1/MatMul/ReadVariableOp*model/ecc_conv/FGN_1/MatMul/ReadVariableOp2Z
+model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp+model/ecc_conv/FGN_2/BiasAdd/ReadVariableOp2X
*model/ecc_conv/FGN_2/MatMul/ReadVariableOp*model/ecc_conv/FGN_2/MatMul/ReadVariableOp2Z
+model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp+model/ecc_conv/FGN_3/BiasAdd/ReadVariableOp2X
*model/ecc_conv/FGN_3/MatMul/ReadVariableOp*model/ecc_conv/FGN_3/MatMul/ReadVariableOp2^
-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp-model/ecc_conv/FGN_out/BiasAdd/ReadVariableOp2\
,model/ecc_conv/FGN_out/MatMul/ReadVariableOp,model/ecc_conv/FGN_out/MatMul/ReadVariableOp2L
$model/ecc_conv/MatMul/ReadVariableOp$model/ecc_conv/MatMul/ReadVariableOp2R
'model/ecc_conv_1/BiasAdd/ReadVariableOp'model/ecc_conv_1/BiasAdd/ReadVariableOp2^
-model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp-model/ecc_conv_1/FGN_0/BiasAdd/ReadVariableOp2\
,model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp,model/ecc_conv_1/FGN_0/MatMul/ReadVariableOp2^
-model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp-model/ecc_conv_1/FGN_1/BiasAdd/ReadVariableOp2\
,model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp,model/ecc_conv_1/FGN_1/MatMul/ReadVariableOp2^
-model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp-model/ecc_conv_1/FGN_2/BiasAdd/ReadVariableOp2\
,model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp,model/ecc_conv_1/FGN_2/MatMul/ReadVariableOp2^
-model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp-model/ecc_conv_1/FGN_3/BiasAdd/ReadVariableOp2\
,model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp,model/ecc_conv_1/FGN_3/MatMul/ReadVariableOp2b
/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp/model/ecc_conv_1/FGN_out/BiasAdd/ReadVariableOp2`
.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp.model/ecc_conv_1/FGN_out/MatMul/ReadVariableOp2P
&model/ecc_conv_1/MatMul/ReadVariableOp&model/ecc_conv_1/MatMul/ReadVariableOp2R
'model/ecc_conv_2/BiasAdd/ReadVariableOp'model/ecc_conv_2/BiasAdd/ReadVariableOp2^
-model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp-model/ecc_conv_2/FGN_0/BiasAdd/ReadVariableOp2\
,model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp,model/ecc_conv_2/FGN_0/MatMul/ReadVariableOp2^
-model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp-model/ecc_conv_2/FGN_1/BiasAdd/ReadVariableOp2\
,model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp,model/ecc_conv_2/FGN_1/MatMul/ReadVariableOp2^
-model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp-model/ecc_conv_2/FGN_2/BiasAdd/ReadVariableOp2\
,model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp,model/ecc_conv_2/FGN_2/MatMul/ReadVariableOp2^
-model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp-model/ecc_conv_2/FGN_3/BiasAdd/ReadVariableOp2\
,model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp,model/ecc_conv_2/FGN_3/MatMul/ReadVariableOp2b
/model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp/model/ecc_conv_2/FGN_out/BiasAdd/ReadVariableOp2`
.model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp.model/ecc_conv_2/FGN_out/MatMul/ReadVariableOp2P
&model/ecc_conv_2/MatMul/ReadVariableOp&model/ecc_conv_2/MatMul/ReadVariableOp2~
=model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp=model/global_attention_pool/attn_layer/BiasAdd/ReadVariableOp2|
<model/global_attention_pool/attn_layer/MatMul/ReadVariableOp<model/global_attention_pool/attn_layer/MatMul/ReadVariableOp2?
Amodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOpAmodel/global_attention_pool/features_layer/BiasAdd/ReadVariableOp2?
@model/global_attention_pool/features_layer/MatMul/ReadVariableOp@model/global_attention_pool/features_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameargs_0:OK
'
_output_shapes
:?????????
 
_user_specified_nameargs_0:KG
#
_output_shapes
:?????????
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0:OK
'
_output_shapes
:?????????
 
_user_specified_nameargs_0:KG
#
_output_shapes
:?????????
 
_user_specified_nameargs_0
?W
?	
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_120932
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_06
$fgn_0_matmul_readvariableop_resource:3
%fgn_0_biasadd_readvariableop_resource:6
$fgn_1_matmul_readvariableop_resource: 3
%fgn_1_biasadd_readvariableop_resource: 6
$fgn_2_matmul_readvariableop_resource:  3
%fgn_2_biasadd_readvariableop_resource: 6
$fgn_3_matmul_readvariableop_resource: 3
%fgn_3_biasadd_readvariableop_resource::
&fgn_out_matmul_readvariableop_resource:
??7
'fgn_out_biasadd_readvariableop_resource:
??2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?FGN_0/BiasAdd/ReadVariableOp?FGN_0/MatMul/ReadVariableOp?FGN_1/BiasAdd/ReadVariableOp?FGN_1/MatMul/ReadVariableOp?FGN_2/BiasAdd/ReadVariableOp?FGN_2/MatMul/ReadVariableOp?FGN_3/BiasAdd/ReadVariableOp?FGN_3/MatMul/ReadVariableOp?FGN_out/BiasAdd/ReadVariableOp?FGN_out/MatMul/ReadVariableOp?MatMul/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceJ
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
FGN_0/MatMul/ReadVariableOpReadVariableOp$fgn_0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
FGN_0/MatMul/ReadVariableOp?
FGN_0/MatMulMatMul
inputs_2_0#FGN_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/MatMul?
FGN_0/BiasAdd/ReadVariableOpReadVariableOp%fgn_0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_0/BiasAdd/ReadVariableOp?
FGN_0/BiasAddBiasAddFGN_0/MatMul:product:0$FGN_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_0/BiasAddj

FGN_0/ReluReluFGN_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_0/Relu?
FGN_1/MatMul/ReadVariableOpReadVariableOp$fgn_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_1/MatMul/ReadVariableOp?
FGN_1/MatMulMatMulFGN_0/Relu:activations:0#FGN_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/MatMul?
FGN_1/BiasAdd/ReadVariableOpReadVariableOp%fgn_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_1/BiasAdd/ReadVariableOp?
FGN_1/BiasAddBiasAddFGN_1/MatMul:product:0$FGN_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_1/BiasAddj

FGN_1/ReluReluFGN_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_1/Relu?
FGN_2/MatMul/ReadVariableOpReadVariableOp$fgn_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
FGN_2/MatMul/ReadVariableOp?
FGN_2/MatMulMatMulFGN_1/Relu:activations:0#FGN_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/MatMul?
FGN_2/BiasAdd/ReadVariableOpReadVariableOp%fgn_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
FGN_2/BiasAdd/ReadVariableOp?
FGN_2/BiasAddBiasAddFGN_2/MatMul:product:0$FGN_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
FGN_2/BiasAddj

FGN_2/ReluReluFGN_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

FGN_2/Relu?
FGN_3/MatMul/ReadVariableOpReadVariableOp$fgn_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
FGN_3/MatMul/ReadVariableOp?
FGN_3/MatMulMatMulFGN_2/Relu:activations:0#FGN_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/MatMul?
FGN_3/BiasAdd/ReadVariableOpReadVariableOp%fgn_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
FGN_3/BiasAdd/ReadVariableOp?
FGN_3/BiasAddBiasAddFGN_3/MatMul:product:0$FGN_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
FGN_3/BiasAddj

FGN_3/ReluReluFGN_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

FGN_3/Relu?
FGN_out/MatMul/ReadVariableOpReadVariableOp&fgn_out_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
FGN_out/MatMul/ReadVariableOp?
FGN_out/MatMulMatMulFGN_3/Relu:activations:0%FGN_out/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/MatMul?
FGN_out/BiasAdd/ReadVariableOpReadVariableOp'fgn_out_biasadd_readvariableop_resource*
_output_shapes

:??*
dtype02 
FGN_out/BiasAdd/ReadVariableOp?
FGN_out/BiasAddBiasAddFGN_out/MatMul:product:0&FGN_out/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
FGN_out/BiasAddm
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/0e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeFGN_out/BiasAdd:output:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2	
Reshape
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3i
GatherV2/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
GatherV2/axis?
GatherV2GatherV2inputs_0strided_slice_3:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*(
_output_shapes
:??????????2

GatherV2?
einsum/EinsumEinsumGatherV2:output:0Reshape:output:0*
N*
T0*(
_output_shapes
:??????????*!
equation...ab,...abc->...ac2
einsum/Einsum?
UnsortedSegmentSumUnsortedSegmentSumeinsum/Einsum:output:0strided_slice_2:output:0strided_slice:output:0*
T0*
Tindices0	*(
_output_shapes
:??????????2
UnsortedSegmentSum?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpv
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMulu
addAddV2UnsortedSegmentSum:output:0MatMul:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^FGN_0/BiasAdd/ReadVariableOp^FGN_0/MatMul/ReadVariableOp^FGN_1/BiasAdd/ReadVariableOp^FGN_1/MatMul/ReadVariableOp^FGN_2/BiasAdd/ReadVariableOp^FGN_2/MatMul/ReadVariableOp^FGN_3/BiasAdd/ReadVariableOp^FGN_3/MatMul/ReadVariableOp^FGN_out/BiasAdd/ReadVariableOp^FGN_out/MatMul/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
FGN_0/BiasAdd/ReadVariableOpFGN_0/BiasAdd/ReadVariableOp2:
FGN_0/MatMul/ReadVariableOpFGN_0/MatMul/ReadVariableOp2<
FGN_1/BiasAdd/ReadVariableOpFGN_1/BiasAdd/ReadVariableOp2:
FGN_1/MatMul/ReadVariableOpFGN_1/MatMul/ReadVariableOp2<
FGN_2/BiasAdd/ReadVariableOpFGN_2/BiasAdd/ReadVariableOp2:
FGN_2/MatMul/ReadVariableOpFGN_2/MatMul/ReadVariableOp2<
FGN_3/BiasAdd/ReadVariableOpFGN_3/BiasAdd/ReadVariableOp2:
FGN_3/MatMul/ReadVariableOpFGN_3/MatMul/ReadVariableOp2@
FGN_out/BiasAdd/ReadVariableOpFGN_out/BiasAdd/ReadVariableOp2>
FGN_out/MatMul/ReadVariableOpFGN_out/MatMul/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
+__inference_ecc_conv_1_layer_call_fn_120856
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
??
	unknown_8:
??
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_1186212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:??????????:?????????:?????????::?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?

?
C__inference_dense_2_layer_call_and_return_conditional_losses_121077

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_118847

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_2_layer_call_fn_121086

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1188312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?
A__inference_model_layer_call_and_return_conditional_losses_118854

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4
inputs_5!
ecc_conv_118520:
ecc_conv_118522:!
ecc_conv_118524: 
ecc_conv_118526: !
ecc_conv_118528:  
ecc_conv_118530: !
ecc_conv_118532: 
ecc_conv_118534:"
ecc_conv_118536:	?

ecc_conv_118538:	?
"
ecc_conv_118540:	
?
ecc_conv_118542:	?#
ecc_conv_1_118622:
ecc_conv_1_118624:#
ecc_conv_1_118626: 
ecc_conv_1_118628: #
ecc_conv_1_118630:  
ecc_conv_1_118632: #
ecc_conv_1_118634: 
ecc_conv_1_118636:%
ecc_conv_1_118638:
??!
ecc_conv_1_118640:
??%
ecc_conv_1_118642:
?? 
ecc_conv_1_118644:	?#
ecc_conv_2_118724:
ecc_conv_2_118726:#
ecc_conv_2_118728: 
ecc_conv_2_118730: #
ecc_conv_2_118732:  
ecc_conv_2_118734: #
ecc_conv_2_118736: 
ecc_conv_2_118738:%
ecc_conv_2_118740:
??!
ecc_conv_2_118742:
??%
ecc_conv_2_118744:
?? 
ecc_conv_2_118746:	?0
global_attention_pool_118770:
??+
global_attention_pool_118772:	?0
global_attention_pool_118774:
??+
global_attention_pool_118776:	? 
dense_118798:
??
dense_118800:	?"
dense_1_118815:
??
dense_1_118817:	?"
dense_2_118832:
??
dense_2_118834:	?!
dense_3_118848:	?
dense_3_118850:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall? ecc_conv/StatefulPartitionedCall?"ecc_conv_1/StatefulPartitionedCall?"ecc_conv_2/StatefulPartitionedCall?-global_attention_pool/StatefulPartitionedCall?
 ecc_conv/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4ecc_conv_118520ecc_conv_118522ecc_conv_118524ecc_conv_118526ecc_conv_118528ecc_conv_118530ecc_conv_118532ecc_conv_118534ecc_conv_118536ecc_conv_118538ecc_conv_118540ecc_conv_118542*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_ecc_conv_layer_call_and_return_conditional_losses_1185192"
 ecc_conv/StatefulPartitionedCall?
"ecc_conv_1/StatefulPartitionedCallStatefulPartitionedCall)ecc_conv/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_1_118622ecc_conv_1_118624ecc_conv_1_118626ecc_conv_1_118628ecc_conv_1_118630ecc_conv_1_118632ecc_conv_1_118634ecc_conv_1_118636ecc_conv_1_118638ecc_conv_1_118640ecc_conv_1_118642ecc_conv_1_118644*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_1186212$
"ecc_conv_1/StatefulPartitionedCall?
"ecc_conv_2/StatefulPartitionedCallStatefulPartitionedCall+ecc_conv_1/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3inputs_4ecc_conv_2_118724ecc_conv_2_118726ecc_conv_2_118728ecc_conv_2_118730ecc_conv_2_118732ecc_conv_2_118734ecc_conv_2_118736ecc_conv_2_118738ecc_conv_2_118740ecc_conv_2_118742ecc_conv_2_118744ecc_conv_2_118746*
Tin
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_1187232$
"ecc_conv_2/StatefulPartitionedCall?
-global_attention_pool/StatefulPartitionedCallStatefulPartitionedCall+ecc_conv_2/StatefulPartitionedCall:output:0inputs_5global_attention_pool_118770global_attention_pool_118772global_attention_pool_118774global_attention_pool_118776*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_1187692/
-global_attention_pool/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall6global_attention_pool/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1187842
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_118798dense_118800*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1187972
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_118815dense_1_118817*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1188142!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_118832dense_2_118834*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1188312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_118848dense_3_118850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1188472!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall!^ecc_conv/StatefulPartitionedCall#^ecc_conv_1/StatefulPartitionedCall#^ecc_conv_2/StatefulPartitionedCall.^global_attention_pool/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????
:?????????:?????????::?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2D
 ecc_conv/StatefulPartitionedCall ecc_conv/StatefulPartitionedCall2H
"ecc_conv_1/StatefulPartitionedCall"ecc_conv_1/StatefulPartitionedCall2H
"ecc_conv_2/StatefulPartitionedCall"ecc_conv_2/StatefulPartitionedCall2^
-global_attention_pool/StatefulPartitionedCall-global_attention_pool/StatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
9
args_0/
serving_default_args_0:0?????????

=
args_0_11
serving_default_args_0_1:0	?????????
9
args_0_2-
serving_default_args_0_2:0?????????
0
args_0_3$
serving_default_args_0_3:0	
=
args_0_41
serving_default_args_0_4:0?????????
9
args_0_5-
serving_default_args_0_5:0?????????;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?q
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?m
_tf_keras_network?m{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": true, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "ECCConv", "config": {"name": "ecc_conv", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv", "inbound_nodes": [[["input_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]]}, {"class_name": "ECCConv", "config": {"name": "ecc_conv_1", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv_1", "inbound_nodes": [[["ecc_conv", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]]}, {"class_name": "ECCConv", "config": {"name": "ecc_conv_2", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv_2", "inbound_nodes": [[["ecc_conv_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "GlobalAttentionPool", "config": {"name": "global_attention_pool", "trainable": true, "dtype": "float32", "channels": 256, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "__passive_serialization__": true}, "bias_initializer": {"class_name": "Zeros", "config": {}, "__passive_serialization__": true}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "global_attention_pool", "inbound_nodes": [[["ecc_conv_2", 0, 0, {}], ["input_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_attention_pool", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0], ["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "shared_object_id": 29, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 4]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null]}, "ndim": 1, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, 4]}, {"class_name": "TensorShape", "items": [null]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 10]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.SparseTensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null]}, "float32"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4]}, "float32", "input_3"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null]}, "int32", "input_4"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": true, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 2}, {"class_name": "ECCConv", "config": {"name": "ecc_conv", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv", "inbound_nodes": [[["input_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "ECCConv", "config": {"name": "ecc_conv_1", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv_1", "inbound_nodes": [[["ecc_conv", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "ECCConv", "config": {"name": "ecc_conv_2", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "name": "ecc_conv_2", "inbound_nodes": [[["ecc_conv_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 12}, {"class_name": "GlobalAttentionPool", "config": {"name": "global_attention_pool", "trainable": true, "dtype": "float32", "channels": 256, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "__passive_serialization__": true, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "__passive_serialization__": true, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "global_attention_pool", "inbound_nodes": [[["ecc_conv_2", 0, 0, {}], ["input_4", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_attention_pool", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 28}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0], ["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 34}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.00015394508955068886, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": true, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": true, "ragged": false, "name": "input_2"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
?	
kwargs_keys
kernel_network
kernel_network_layers
root_kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "ecc_conv", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ECCConv", "config": {"name": "ecc_conv", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "inbound_nodes": [[["input_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 5, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, 4]}]}
?	
kwargs_keys
kernel_network
kernel_network_layers
 root_kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "ecc_conv_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ECCConv", "config": {"name": "ecc_conv_1", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "inbound_nodes": [[["ecc_conv", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, 4]}]}
?	
&kwargs_keys
'kernel_network
(kernel_network_layers
)root_kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "ecc_conv_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ECCConv", "config": {"name": "ecc_conv_2", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 128, "kernel_network": [8, 32, 32, 8], "root": true}, "inbound_nodes": [[["ecc_conv_1", 0, 0, {}], ["input_2", 0, 0, {}], ["input_3", 0, 0, {}]]], "shared_object_id": 11, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, 4]}]}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_4", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_4"}}
?
/features_layer
0attention_layer
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "global_attention_pool", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAttentionPool", "config": {"name": "global_attention_pool", "trainable": true, "dtype": "float32", "channels": 256, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "__passive_serialization__": true, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "__passive_serialization__": true, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["ecc_conv_2", 0, 0, {}], ["input_4", 0, 0, {}]]], "shared_object_id": 15, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128]}, {"class_name": "TensorShape", "items": [null]}]}
?
5regularization_losses
6	variables
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "inbound_nodes": [[["global_attention_pool", 0, 0, {}]]], "shared_object_id": 16}
?

9kernel
:bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	

Ekernel
Fbias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?	

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_rate
Uiterm?m? m?!m?)m?*m?9m?:m??m?@m?Em?Fm?Km?Lm?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?hm?im?jm?km?lm?mm?nm?om?pm?qm?rm?sm?tm?um?vm?wm?v?v? v?!v?)v?*v?9v?:v??v?@v?Ev?Fv?Kv?Lv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?ov?pv?qv?rv?sv?tv?uv?vv?wv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
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
 12
!13
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
)24
*25
j26
k27
l28
m29
n30
o31
p32
q33
r34
s35
t36
u37
v38
w39
940
:41
?42
@43
E44
F45
K46
L47"
trackable_list_wrapper
?
0
1
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
 12
!13
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
)24
*25
j26
k27
l28
m29
n30
o31
p32
q33
r34
s35
t36
u37
v38
w39
940
:41
?42
@43
E44
F45
K46
L47"
trackable_list_wrapper
?
xlayer_metrics
regularization_losses
ynon_trainable_variables

zlayers
	variables
{metrics
trainable_variables
|layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
E
}0
~1
2
?3
?4"
trackable_list_wrapper
':%	
?2ecc_conv/root_kernel
:?2ecc_conv/bias
 "
trackable_list_wrapper
v
0
1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11"
trackable_list_wrapper
v
0
1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11"
trackable_list_wrapper
?
?layer_metrics
regularization_losses
?non_trainable_variables
?layers
	variables
?metrics
trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
*:(
??2ecc_conv_1/root_kernel
:?2ecc_conv_1/bias
 "
trackable_list_wrapper
v
 0
!1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11"
trackable_list_wrapper
v
 0
!1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11"
trackable_list_wrapper
?
?layer_metrics
"regularization_losses
?non_trainable_variables
?layers
#	variables
?metrics
$trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
*:(
??2ecc_conv_2/root_kernel
:?2ecc_conv_2/bias
 "
trackable_list_wrapper
v
)0
*1
j2
k3
l4
m5
n6
o7
p8
q9
r10
s11"
trackable_list_wrapper
v
)0
*1
j2
k3
l4
m5
n6
o7
p8
q9
r10
s11"
trackable_list_wrapper
?
?layer_metrics
+regularization_losses
?non_trainable_variables
?layers
,	variables
?metrics
-trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

tkernel
ubias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "features_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "features_layer", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "__passive_serialization__": true, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "__passive_serialization__": true, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	

vkernel
wbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "attn_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "attn_layer", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "__passive_serialization__": true, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "__passive_serialization__": true, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
 "
trackable_list_wrapper
<
t0
u1
v2
w3"
trackable_list_wrapper
<
t0
u1
v2
w3"
trackable_list_wrapper
?
?layer_metrics
1regularization_losses
?non_trainable_variables
?layers
2	variables
?metrics
3trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
5regularization_losses
?non_trainable_variables
?layers
6	variables
?metrics
7trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:?2
dense/bias
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
?layer_metrics
;regularization_losses
?non_trainable_variables
?layers
<	variables
?metrics
=trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_1/kernel
:?2dense_1/bias
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
?
?layer_metrics
Aregularization_losses
?non_trainable_variables
?layers
B	variables
?metrics
Ctrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_2/kernel
:?2dense_2/bias
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
?
?layer_metrics
Gregularization_losses
?non_trainable_variables
?layers
H	variables
?metrics
Itrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
?layer_metrics
Mregularization_losses
?non_trainable_variables
?layers
N	variables
?metrics
Otrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
':%2ecc_conv/FGN_0/kernel
!:2ecc_conv/FGN_0/bias
':% 2ecc_conv/FGN_1/kernel
!: 2ecc_conv/FGN_1/bias
':%  2ecc_conv/FGN_2/kernel
!: 2ecc_conv/FGN_2/bias
':% 2ecc_conv/FGN_3/kernel
!:2ecc_conv/FGN_3/bias
*:(	?
2ecc_conv/FGN_out/kernel
$:"?
2ecc_conv/FGN_out/bias
):'2ecc_conv_1/FGN_0/kernel
#:!2ecc_conv_1/FGN_0/bias
):' 2ecc_conv_1/FGN_1/kernel
#:! 2ecc_conv_1/FGN_1/bias
):'  2ecc_conv_1/FGN_2/kernel
#:! 2ecc_conv_1/FGN_2/bias
):' 2ecc_conv_1/FGN_3/kernel
#:!2ecc_conv_1/FGN_3/bias
-:+
??2ecc_conv_1/FGN_out/kernel
':%??2ecc_conv_1/FGN_out/bias
):'2ecc_conv_2/FGN_0/kernel
#:!2ecc_conv_2/FGN_0/bias
):' 2ecc_conv_2/FGN_1/kernel
#:! 2ecc_conv_2/FGN_1/bias
):'  2ecc_conv_2/FGN_2/kernel
#:! 2ecc_conv_2/FGN_2/bias
):' 2ecc_conv_2/FGN_3/kernel
#:!2ecc_conv_2/FGN_3/bias
-:+
??2ecc_conv_2/FGN_out/kernel
':%??2ecc_conv_2/FGN_out/bias
?:=
??2+global_attention_pool/features_layer/kernel
8:6?2)global_attention_pool/features_layer/bias
;:9
??2'global_attention_pool/attn_layer/kernel
4:2?2%global_attention_pool/attn_layer/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Vkernel
Wbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_0", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?

Xkernel
Ybias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
?

Zkernel
[bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 47, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

\kernel
]bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_3", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

^kernel
_bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_out", "trainable": true, "dtype": "float32", "units": 1280, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
E
}0
~1
2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

`kernel
abias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_0", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?

bkernel
cbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
?

dkernel
ebias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

fkernel
gbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_3", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 61, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 62}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

hkernel
ibias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_out", "trainable": true, "dtype": "float32", "units": 16384, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 65, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

jkernel
kbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_0", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 67, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 68}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?

lkernel
mbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
?

nkernel
obias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 72}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

pkernel
qbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_3", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 73, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

rkernel
sbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "FGN_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "FGN_out", "trainable": true, "dtype": "float32", "units": 16384, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 75}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 76}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 77, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
/0
01"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 79}
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?layer_metrics
?regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
,:*	
?2Adam/ecc_conv/root_kernel/m
!:?2Adam/ecc_conv/bias/m
/:-
??2Adam/ecc_conv_1/root_kernel/m
#:!?2Adam/ecc_conv_1/bias/m
/:-
??2Adam/ecc_conv_2/root_kernel/m
#:!?2Adam/ecc_conv_2/bias/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
':%
??2Adam/dense_1/kernel/m
 :?2Adam/dense_1/bias/m
':%
??2Adam/dense_2/kernel/m
 :?2Adam/dense_2/bias/m
&:$	?2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
,:*2Adam/ecc_conv/FGN_0/kernel/m
&:$2Adam/ecc_conv/FGN_0/bias/m
,:* 2Adam/ecc_conv/FGN_1/kernel/m
&:$ 2Adam/ecc_conv/FGN_1/bias/m
,:*  2Adam/ecc_conv/FGN_2/kernel/m
&:$ 2Adam/ecc_conv/FGN_2/bias/m
,:* 2Adam/ecc_conv/FGN_3/kernel/m
&:$2Adam/ecc_conv/FGN_3/bias/m
/:-	?
2Adam/ecc_conv/FGN_out/kernel/m
):'?
2Adam/ecc_conv/FGN_out/bias/m
.:,2Adam/ecc_conv_1/FGN_0/kernel/m
(:&2Adam/ecc_conv_1/FGN_0/bias/m
.:, 2Adam/ecc_conv_1/FGN_1/kernel/m
(:& 2Adam/ecc_conv_1/FGN_1/bias/m
.:,  2Adam/ecc_conv_1/FGN_2/kernel/m
(:& 2Adam/ecc_conv_1/FGN_2/bias/m
.:, 2Adam/ecc_conv_1/FGN_3/kernel/m
(:&2Adam/ecc_conv_1/FGN_3/bias/m
2:0
??2 Adam/ecc_conv_1/FGN_out/kernel/m
,:*??2Adam/ecc_conv_1/FGN_out/bias/m
.:,2Adam/ecc_conv_2/FGN_0/kernel/m
(:&2Adam/ecc_conv_2/FGN_0/bias/m
.:, 2Adam/ecc_conv_2/FGN_1/kernel/m
(:& 2Adam/ecc_conv_2/FGN_1/bias/m
.:,  2Adam/ecc_conv_2/FGN_2/kernel/m
(:& 2Adam/ecc_conv_2/FGN_2/bias/m
.:, 2Adam/ecc_conv_2/FGN_3/kernel/m
(:&2Adam/ecc_conv_2/FGN_3/bias/m
2:0
??2 Adam/ecc_conv_2/FGN_out/kernel/m
,:*??2Adam/ecc_conv_2/FGN_out/bias/m
D:B
??22Adam/global_attention_pool/features_layer/kernel/m
=:;?20Adam/global_attention_pool/features_layer/bias/m
@:>
??2.Adam/global_attention_pool/attn_layer/kernel/m
9:7?2,Adam/global_attention_pool/attn_layer/bias/m
,:*	
?2Adam/ecc_conv/root_kernel/v
!:?2Adam/ecc_conv/bias/v
/:-
??2Adam/ecc_conv_1/root_kernel/v
#:!?2Adam/ecc_conv_1/bias/v
/:-
??2Adam/ecc_conv_2/root_kernel/v
#:!?2Adam/ecc_conv_2/bias/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
':%
??2Adam/dense_1/kernel/v
 :?2Adam/dense_1/bias/v
':%
??2Adam/dense_2/kernel/v
 :?2Adam/dense_2/bias/v
&:$	?2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
,:*2Adam/ecc_conv/FGN_0/kernel/v
&:$2Adam/ecc_conv/FGN_0/bias/v
,:* 2Adam/ecc_conv/FGN_1/kernel/v
&:$ 2Adam/ecc_conv/FGN_1/bias/v
,:*  2Adam/ecc_conv/FGN_2/kernel/v
&:$ 2Adam/ecc_conv/FGN_2/bias/v
,:* 2Adam/ecc_conv/FGN_3/kernel/v
&:$2Adam/ecc_conv/FGN_3/bias/v
/:-	?
2Adam/ecc_conv/FGN_out/kernel/v
):'?
2Adam/ecc_conv/FGN_out/bias/v
.:,2Adam/ecc_conv_1/FGN_0/kernel/v
(:&2Adam/ecc_conv_1/FGN_0/bias/v
.:, 2Adam/ecc_conv_1/FGN_1/kernel/v
(:& 2Adam/ecc_conv_1/FGN_1/bias/v
.:,  2Adam/ecc_conv_1/FGN_2/kernel/v
(:& 2Adam/ecc_conv_1/FGN_2/bias/v
.:, 2Adam/ecc_conv_1/FGN_3/kernel/v
(:&2Adam/ecc_conv_1/FGN_3/bias/v
2:0
??2 Adam/ecc_conv_1/FGN_out/kernel/v
,:*??2Adam/ecc_conv_1/FGN_out/bias/v
.:,2Adam/ecc_conv_2/FGN_0/kernel/v
(:&2Adam/ecc_conv_2/FGN_0/bias/v
.:, 2Adam/ecc_conv_2/FGN_1/kernel/v
(:& 2Adam/ecc_conv_2/FGN_1/bias/v
.:,  2Adam/ecc_conv_2/FGN_2/kernel/v
(:& 2Adam/ecc_conv_2/FGN_2/bias/v
.:, 2Adam/ecc_conv_2/FGN_3/kernel/v
(:&2Adam/ecc_conv_2/FGN_3/bias/v
2:0
??2 Adam/ecc_conv_2/FGN_out/kernel/v
,:*??2Adam/ecc_conv_2/FGN_out/bias/v
D:B
??22Adam/global_attention_pool/features_layer/kernel/v
=:;?20Adam/global_attention_pool/features_layer/bias/v
@:>
??2.Adam/global_attention_pool/attn_layer/kernel/v
9:7?2,Adam/global_attention_pool/attn_layer/bias/v
?2?
!__inference__wrapped_model_118426?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
??????????

@?='?$
???????????????????
?SparseTensorSpec
??????????
??????????
?2?
A__inference_model_layer_call_and_return_conditional_losses_120163
A__inference_model_layer_call_and_return_conditional_losses_120426?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_model_layer_call_fn_120532
&__inference_model_layer_call_fn_120638?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_ecc_conv_layer_call_and_return_conditional_losses_120714?
???
FullArgSpec
args?

jinputs
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
?2?
)__inference_ecc_conv_layer_call_fn_120747?
???
FullArgSpec
args?

jinputs
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
?2?
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_120823?
???
FullArgSpec
args?

jinputs
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
?2?
+__inference_ecc_conv_1_layer_call_fn_120856?
???
FullArgSpec
args?

jinputs
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
?2?
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_120932?
???
FullArgSpec
args?

jinputs
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
?2?
+__inference_ecc_conv_2_layer_call_fn_120965?
???
FullArgSpec
args?

jinputs
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
?2?
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_120985?
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
?2?
6__inference_global_attention_pool_layer_call_fn_120999?
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
?2?
C__inference_dropout_layer_call_and_return_conditional_losses_121004
C__inference_dropout_layer_call_and_return_conditional_losses_121016?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dropout_layer_call_fn_121021
(__inference_dropout_layer_call_fn_121026?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_121037?
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
?2?
&__inference_dense_layer_call_fn_121046?
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
?2?
C__inference_dense_1_layer_call_and_return_conditional_losses_121057?
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
?2?
(__inference_dense_1_layer_call_fn_121066?
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
?2?
C__inference_dense_2_layer_call_and_return_conditional_losses_121077?
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
?2?
(__inference_dense_2_layer_call_fn_121086?
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
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_121096?
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
?2?
(__inference_dense_3_layer_call_fn_121105?
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
$__inference_signature_wrapper_119907args_0args_0_1args_0_2args_0_3args_0_4args_0_5"?
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
 ?
!__inference__wrapped_model_118426?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
???
???
"?
args_0/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
args_0/2?????????
?
args_0/3?????????
? "1?.
,
dense_3!?
dense_3??????????
C__inference_dense_1_layer_call_and_return_conditional_losses_121057^?@0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_1_layer_call_fn_121066Q?@0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_2_layer_call_and_return_conditional_losses_121077^EF0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_2_layer_call_fn_121086QEF0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_3_layer_call_and_return_conditional_losses_121096]KL0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_3_layer_call_fn_121105PKL0?-
&?#
!?
inputs??????????
? "???????????
A__inference_dense_layer_call_and_return_conditional_losses_121037^9:0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_layer_call_fn_121046Q9:0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dropout_layer_call_and_return_conditional_losses_121004^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_121016^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_dropout_layer_call_fn_121021Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_dropout_layer_call_fn_121026Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_ecc_conv_1_layer_call_and_return_conditional_losses_120823?`abcdefghi !???
???
???
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "&?#
?
0??????????
? ?
+__inference_ecc_conv_1_layer_call_fn_120856?`abcdefghi !???
???
???
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "????????????
F__inference_ecc_conv_2_layer_call_and_return_conditional_losses_120932?jklmnopqrs)*???
???
???
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "&?#
?
0??????????
? ?
+__inference_ecc_conv_2_layer_call_fn_120965?jklmnopqrs)*???
???
???
#? 
inputs/0??????????
@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "????????????
D__inference_ecc_conv_layer_call_and_return_conditional_losses_120714?VWXYZ[\]^_???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "&?#
?
0??????????
? ?
)__inference_ecc_conv_layer_call_fn_120747?VWXYZ[\]^_???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
? "????????????
Q__inference_global_attention_pool_layer_call_and_return_conditional_losses_120985?tuvwW?T
M?J
H?E
#? 
inputs/0??????????
?
inputs/1?????????
? "&?#
?
0??????????
? ?
6__inference_global_attention_pool_layer_call_fn_120999ztuvwW?T
M?J
H?E
#? 
inputs/0??????????
?
inputs/1?????????
? "????????????
A__inference_model_layer_call_and_return_conditional_losses_120163?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
?
inputs/3?????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_120426?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
?
inputs/3?????????
p

 
? "%?"
?
0?????????
? ?
&__inference_model_layer_call_fn_120532?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
?
inputs/3?????????
p 

 
? "???????????
&__inference_model_layer_call_fn_120638?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
???
???
"?
inputs/0?????????

@?='?$
???????????????????
?SparseTensorSpec
"?
inputs/2?????????
?
inputs/3?????????
p

 
? "???????????
$__inference_signature_wrapper_119907?0VWXYZ[\]^_`abcdefghi !jklmnopqrs)*tuvw9:?@EFKL???
? 
???
*
args_0 ?
args_0?????????

.
args_0_1"?
args_0_1?????????	
*
args_0_2?
args_0_2?????????
!
args_0_3?
args_0_3	
.
args_0_4"?
args_0_4?????????
*
args_0_5?
args_0_5?????????"1?.
,
dense_3!?
dense_3?????????