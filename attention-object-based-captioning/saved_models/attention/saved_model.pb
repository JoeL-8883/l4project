°
ÕØ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
®
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.12v2.10.0-76-gfdfc646704c8ö
Ä
6image_captioning_model/bahdanau_attention/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86image_captioning_model/bahdanau_attention/dense_5/bias
½
Jimage_captioning_model/bahdanau_attention/dense_5/bias/Read/ReadVariableOpReadVariableOp6image_captioning_model/bahdanau_attention/dense_5/bias*
_output_shapes
:*
dtype0
Ķ
8image_captioning_model/bahdanau_attention/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*I
shared_name:8image_captioning_model/bahdanau_attention/dense_5/kernel
Ę
Limage_captioning_model/bahdanau_attention/dense_5/kernel/Read/ReadVariableOpReadVariableOp8image_captioning_model/bahdanau_attention/dense_5/kernel*
_output_shapes
:	*
dtype0
Å
6image_captioning_model/bahdanau_attention/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86image_captioning_model/bahdanau_attention/dense_4/bias
¾
Jimage_captioning_model/bahdanau_attention/dense_4/bias/Read/ReadVariableOpReadVariableOp6image_captioning_model/bahdanau_attention/dense_4/bias*
_output_shapes	
:*
dtype0
Ī
8image_captioning_model/bahdanau_attention/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8image_captioning_model/bahdanau_attention/dense_4/kernel
Ē
Limage_captioning_model/bahdanau_attention/dense_4/kernel/Read/ReadVariableOpReadVariableOp8image_captioning_model/bahdanau_attention/dense_4/kernel* 
_output_shapes
:
*
dtype0
Å
6image_captioning_model/bahdanau_attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86image_captioning_model/bahdanau_attention/dense_3/bias
¾
Jimage_captioning_model/bahdanau_attention/dense_3/bias/Read/ReadVariableOpReadVariableOp6image_captioning_model/bahdanau_attention/dense_3/bias*
_output_shapes	
:*
dtype0
Ī
8image_captioning_model/bahdanau_attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8image_captioning_model/bahdanau_attention/dense_3/kernel
Ē
Limage_captioning_model/bahdanau_attention/dense_3/kernel/Read/ReadVariableOpReadVariableOp8image_captioning_model/bahdanau_attention/dense_3/kernel* 
_output_shapes
:
*
dtype0

serving_default_args_0Placeholder*,
_output_shapes
:’’’’’’’’’%*
dtype0*!
shape:’’’’’’’’’%
{
serving_default_args_1Placeholder*(
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
±
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_18image_captioning_model/bahdanau_attention/dense_3/kernel6image_captioning_model/bahdanau_attention/dense_3/bias8image_captioning_model/bahdanau_attention/dense_4/kernel6image_captioning_model/bahdanau_attention/dense_4/bias8image_captioning_model/bahdanau_attention/dense_5/kernel6image_captioning_model/bahdanau_attention/dense_5/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1928909

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*É
valueæB¼ Bµ
Ō
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
W1
	W2

V

signatures*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias*
¦
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias*

+serving_default* 
xr
VARIABLE_VALUE8image_captioning_model/bahdanau_attention/dense_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6image_captioning_model/bahdanau_attention/dense_3/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8image_captioning_model/bahdanau_attention/dense_4/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6image_captioning_model/bahdanau_attention/dense_4/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8image_captioning_model/bahdanau_attention/dense_5/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6image_captioning_model/bahdanau_attention/dense_5/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

1trace_0* 

2trace_0* 

0
1*

0
1*
* 

3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

8trace_0* 

9trace_0* 

0
1*

0
1*
* 

:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

?trace_0* 

@trace_0* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ó
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameLimage_captioning_model/bahdanau_attention/dense_3/kernel/Read/ReadVariableOpJimage_captioning_model/bahdanau_attention/dense_3/bias/Read/ReadVariableOpLimage_captioning_model/bahdanau_attention/dense_4/kernel/Read/ReadVariableOpJimage_captioning_model/bahdanau_attention/dense_4/bias/Read/ReadVariableOpLimage_captioning_model/bahdanau_attention/dense_5/kernel/Read/ReadVariableOpJimage_captioning_model/bahdanau_attention/dense_5/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1929207
ö
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename8image_captioning_model/bahdanau_attention/dense_3/kernel6image_captioning_model/bahdanau_attention/dense_3/bias8image_captioning_model/bahdanau_attention/dense_4/kernel6image_captioning_model/bahdanau_attention/dense_4/bias8image_captioning_model/bahdanau_attention/dense_5/kernel6image_captioning_model/bahdanau_attention/dense_5/bias*
Tin
	2*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1929235ķŚ
Ü

)__inference_dense_4_layer_call_fn_1929096

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallį
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1928765t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ł
ž
D__inference_dense_4_layer_call_and_return_conditional_losses_1928765

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ł
ž
D__inference_dense_4_layer_call_and_return_conditional_losses_1929126

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ł
ž
D__inference_dense_3_layer_call_and_return_conditional_losses_1928729

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’%s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’%d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’%z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs
Š
ü
D__inference_dense_5_layer_call_and_return_conditional_losses_1929165

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’%c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’%z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs


¢
4__inference_bahdanau_attention_layer_call_fn_1928927
features

hidden
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallfeatureshiddenunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1928844p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:’’’’’’’’’%:’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:’’’’’’’’’%
"
_user_specified_name
features:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namehidden
Ü

)__inference_dense_3_layer_call_fn_1929057

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallį
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1928729t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs
Ģw
«
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1929048
features

hidden=
)dense_3_tensordot_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	=
)dense_4_tensordot_readvariableop_resource:
6
'dense_4_biasadd_readvariableop_resource:	<
)dense_5_tensordot_readvariableop_resource:	5
'dense_5_biasadd_readvariableop_resource:
identity¢dense_3/BiasAdd/ReadVariableOp¢ dense_3/Tensordot/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢ dense_4/Tensordot/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢ dense_5/Tensordot/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :p

ExpandDims
ExpandDimshiddenExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_3/Tensordot/ShapeShapefeatures*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ū
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transposefeatures!dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%¢
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’£
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ē
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’%
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’%
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Z
dense_4/Tensordot/ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ū
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/transpose	TransposeExpandDims:output:0!dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’¢
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’£
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ē
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’w
addAddV2dense_3/BiasAdd:output:0dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’%L
TanhTanhadd:z:0*
T0*,
_output_shapes
:’’’’’’’’’%
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_5/Tensordot/ShapeShapeTanh:y:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ū
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/transpose	TransposeTanh:y:0!dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%¢
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’¢
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ē
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’%F
RankConst*
_output_shapes
: *
dtype0*
value	B :H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :G
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :L
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/limitConst*
_output_shapes
: *
dtype0*
value	B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :l
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: N
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:Y
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¬
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
	transpose	Transposedense_5/BiasAdd:output:0concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’%W
SoftmaxSoftmaxtranspose:y:0*
T0*+
_output_shapes
:’’’’’’’’’%I
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :P
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: R
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:[
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¶
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:t
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%\
mulMultranspose_1:y:0features*
T0*,
_output_shapes
:’’’’’’’’’%W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :f
SumSummul:z:0Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
IdentityIdentitySum:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:’’’’’’’’’%:’’’’’’’’’: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:V R
,
_output_shapes
:’’’’’’’’’%
"
_user_specified_name
features:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namehidden
 
ņ
#__inference__traced_restore_1929235
file_prefix]
Iassignvariableop_image_captioning_model_bahdanau_attention_dense_3_kernel:
X
Iassignvariableop_1_image_captioning_model_bahdanau_attention_dense_3_bias:	_
Kassignvariableop_2_image_captioning_model_bahdanau_attention_dense_4_kernel:
X
Iassignvariableop_3_image_captioning_model_bahdanau_attention_dense_4_bias:	^
Kassignvariableop_4_image_captioning_model_bahdanau_attention_dense_5_kernel:	W
Iassignvariableop_5_image_captioning_model_bahdanau_attention_dense_5_bias:

identity_7¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5ż
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B Į
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOpAssignVariableOpIassignvariableop_image_captioning_model_bahdanau_attention_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_1AssignVariableOpIassignvariableop_1_image_captioning_model_bahdanau_attention_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_2AssignVariableOpKassignvariableop_2_image_captioning_model_bahdanau_attention_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_3AssignVariableOpIassignvariableop_3_image_captioning_model_bahdanau_attention_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_4AssignVariableOpKassignvariableop_4_image_captioning_model_bahdanau_attention_dense_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_5AssignVariableOpIassignvariableop_5_image_captioning_model_bahdanau_attention_dense_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ö

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: Ä
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ų

)__inference_dense_5_layer_call_fn_1929135

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallą
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1928803s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs
Õ	

%__inference_signature_wrapper_1928909

args_0

args_1
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCallų
StatefulPartitionedCallStatefulPartitionedCallargs_0args_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1928688p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:’’’’’’’’’%:’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameargs_0:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameargs_1
³
ż
 __inference__traced_save_1929207
file_prefixW
Ssavev2_image_captioning_model_bahdanau_attention_dense_3_kernel_read_readvariableopU
Qsavev2_image_captioning_model_bahdanau_attention_dense_3_bias_read_readvariableopW
Ssavev2_image_captioning_model_bahdanau_attention_dense_4_kernel_read_readvariableopU
Qsavev2_image_captioning_model_bahdanau_attention_dense_4_bias_read_readvariableopW
Ssavev2_image_captioning_model_bahdanau_attention_dense_5_kernel_read_readvariableopU
Qsavev2_image_captioning_model_bahdanau_attention_dense_5_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ś
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ®
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ssavev2_image_captioning_model_bahdanau_attention_dense_3_kernel_read_readvariableopQsavev2_image_captioning_model_bahdanau_attention_dense_3_bias_read_readvariableopSsavev2_image_captioning_model_bahdanau_attention_dense_4_kernel_read_readvariableopQsavev2_image_captioning_model_bahdanau_attention_dense_4_bias_read_readvariableopSsavev2_image_captioning_model_bahdanau_attention_dense_5_kernel_read_readvariableopQsavev2_image_captioning_model_bahdanau_attention_dense_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*N
_input_shapes=
;: :
::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 
Ł
ž
D__inference_dense_3_layer_call_and_return_conditional_losses_1929087

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’%s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’%d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’%z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs
ė.
Æ
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1928844
features

hidden#
dense_3_1928730:

dense_3_1928732:	#
dense_4_1928766:

dense_4_1928768:	"
dense_5_1928804:	
dense_5_1928806:
identity¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :p

ExpandDims
ExpandDimshiddenExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’ł
dense_3/StatefulPartitionedCallStatefulPartitionedCallfeaturesdense_3_1928730dense_3_1928732*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1928729
dense_4/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0dense_4_1928766dense_4_1928768*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1928765
addAddV2(dense_3/StatefulPartitionedCall:output:0(dense_4/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:’’’’’’’’’%L
TanhTanhadd:z:0*
T0*,
_output_shapes
:’’’’’’’’’%ų
dense_5/StatefulPartitionedCallStatefulPartitionedCallTanh:y:0dense_5_1928804dense_5_1928806*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1928803F
RankConst*
_output_shapes
: *
dtype0*
value	B :H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :G
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :L
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/limitConst*
_output_shapes
: *
dtype0*
value	B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :l
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: N
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:Y
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¬
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:
	transpose	Transpose(dense_5/StatefulPartitionedCall:output:0concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’%W
SoftmaxSoftmaxtranspose:y:0*
T0*+
_output_shapes
:’’’’’’’’’%I
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :P
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: R
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:[
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¶
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:t
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%\
mulMultranspose_1:y:0features*
T0*,
_output_shapes
:’’’’’’’’’%W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :f
SumSummul:z:0Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
IdentityIdentitySum:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¬
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:’’’’’’’’’%:’’’’’’’’’: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:V R
,
_output_shapes
:’’’’’’’’’%
"
_user_specified_name
features:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namehidden
Ņ
ą
"__inference__wrapped_model_1928688

args_0

args_1P
<bahdanau_attention_dense_3_tensordot_readvariableop_resource:
I
:bahdanau_attention_dense_3_biasadd_readvariableop_resource:	P
<bahdanau_attention_dense_4_tensordot_readvariableop_resource:
I
:bahdanau_attention_dense_4_biasadd_readvariableop_resource:	O
<bahdanau_attention_dense_5_tensordot_readvariableop_resource:	H
:bahdanau_attention_dense_5_biasadd_readvariableop_resource:
identity¢1bahdanau_attention/dense_3/BiasAdd/ReadVariableOp¢3bahdanau_attention/dense_3/Tensordot/ReadVariableOp¢1bahdanau_attention/dense_4/BiasAdd/ReadVariableOp¢3bahdanau_attention/dense_4/Tensordot/ReadVariableOp¢1bahdanau_attention/dense_5/BiasAdd/ReadVariableOp¢3bahdanau_attention/dense_5/Tensordot/ReadVariableOpc
!bahdanau_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
bahdanau_attention/ExpandDims
ExpandDimsargs_1*bahdanau_attention/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’²
3bahdanau_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp<bahdanau_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0s
)bahdanau_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)bahdanau_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       `
*bahdanau_attention/dense_3/Tensordot/ShapeShapeargs_0*
T0*
_output_shapes
:t
2bahdanau_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : §
-bahdanau_attention/dense_3/Tensordot/GatherV2GatherV23bahdanau_attention/dense_3/Tensordot/Shape:output:02bahdanau_attention/dense_3/Tensordot/free:output:0;bahdanau_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4bahdanau_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
/bahdanau_attention/dense_3/Tensordot/GatherV2_1GatherV23bahdanau_attention/dense_3/Tensordot/Shape:output:02bahdanau_attention/dense_3/Tensordot/axes:output:0=bahdanau_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*bahdanau_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
)bahdanau_attention/dense_3/Tensordot/ProdProd6bahdanau_attention/dense_3/Tensordot/GatherV2:output:03bahdanau_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,bahdanau_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Å
+bahdanau_attention/dense_3/Tensordot/Prod_1Prod8bahdanau_attention/dense_3/Tensordot/GatherV2_1:output:05bahdanau_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0bahdanau_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+bahdanau_attention/dense_3/Tensordot/concatConcatV22bahdanau_attention/dense_3/Tensordot/free:output:02bahdanau_attention/dense_3/Tensordot/axes:output:09bahdanau_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ź
*bahdanau_attention/dense_3/Tensordot/stackPack2bahdanau_attention/dense_3/Tensordot/Prod:output:04bahdanau_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:°
.bahdanau_attention/dense_3/Tensordot/transpose	Transposeargs_04bahdanau_attention/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%Ū
,bahdanau_attention/dense_3/Tensordot/ReshapeReshape2bahdanau_attention/dense_3/Tensordot/transpose:y:03bahdanau_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’Ü
+bahdanau_attention/dense_3/Tensordot/MatMulMatMul5bahdanau_attention/dense_3/Tensordot/Reshape:output:0;bahdanau_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’w
,bahdanau_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:t
2bahdanau_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
-bahdanau_attention/dense_3/Tensordot/concat_1ConcatV26bahdanau_attention/dense_3/Tensordot/GatherV2:output:05bahdanau_attention/dense_3/Tensordot/Const_2:output:0;bahdanau_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Õ
$bahdanau_attention/dense_3/TensordotReshape5bahdanau_attention/dense_3/Tensordot/MatMul:product:06bahdanau_attention/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’%©
1bahdanau_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp:bahdanau_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ī
"bahdanau_attention/dense_3/BiasAddBiasAdd-bahdanau_attention/dense_3/Tensordot:output:09bahdanau_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’%²
3bahdanau_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp<bahdanau_attention_dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0s
)bahdanau_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)bahdanau_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
*bahdanau_attention/dense_4/Tensordot/ShapeShape&bahdanau_attention/ExpandDims:output:0*
T0*
_output_shapes
:t
2bahdanau_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : §
-bahdanau_attention/dense_4/Tensordot/GatherV2GatherV23bahdanau_attention/dense_4/Tensordot/Shape:output:02bahdanau_attention/dense_4/Tensordot/free:output:0;bahdanau_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4bahdanau_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
/bahdanau_attention/dense_4/Tensordot/GatherV2_1GatherV23bahdanau_attention/dense_4/Tensordot/Shape:output:02bahdanau_attention/dense_4/Tensordot/axes:output:0=bahdanau_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*bahdanau_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
)bahdanau_attention/dense_4/Tensordot/ProdProd6bahdanau_attention/dense_4/Tensordot/GatherV2:output:03bahdanau_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,bahdanau_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Å
+bahdanau_attention/dense_4/Tensordot/Prod_1Prod8bahdanau_attention/dense_4/Tensordot/GatherV2_1:output:05bahdanau_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0bahdanau_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+bahdanau_attention/dense_4/Tensordot/concatConcatV22bahdanau_attention/dense_4/Tensordot/free:output:02bahdanau_attention/dense_4/Tensordot/axes:output:09bahdanau_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ź
*bahdanau_attention/dense_4/Tensordot/stackPack2bahdanau_attention/dense_4/Tensordot/Prod:output:04bahdanau_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Š
.bahdanau_attention/dense_4/Tensordot/transpose	Transpose&bahdanau_attention/ExpandDims:output:04bahdanau_attention/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’Ū
,bahdanau_attention/dense_4/Tensordot/ReshapeReshape2bahdanau_attention/dense_4/Tensordot/transpose:y:03bahdanau_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’Ü
+bahdanau_attention/dense_4/Tensordot/MatMulMatMul5bahdanau_attention/dense_4/Tensordot/Reshape:output:0;bahdanau_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’w
,bahdanau_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:t
2bahdanau_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
-bahdanau_attention/dense_4/Tensordot/concat_1ConcatV26bahdanau_attention/dense_4/Tensordot/GatherV2:output:05bahdanau_attention/dense_4/Tensordot/Const_2:output:0;bahdanau_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Õ
$bahdanau_attention/dense_4/TensordotReshape5bahdanau_attention/dense_4/Tensordot/MatMul:product:06bahdanau_attention/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’©
1bahdanau_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOp:bahdanau_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ī
"bahdanau_attention/dense_4/BiasAddBiasAdd-bahdanau_attention/dense_4/Tensordot:output:09bahdanau_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’°
bahdanau_attention/addAddV2+bahdanau_attention/dense_3/BiasAdd:output:0+bahdanau_attention/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’%r
bahdanau_attention/TanhTanhbahdanau_attention/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’%±
3bahdanau_attention/dense_5/Tensordot/ReadVariableOpReadVariableOp<bahdanau_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0s
)bahdanau_attention/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)bahdanau_attention/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
*bahdanau_attention/dense_5/Tensordot/ShapeShapebahdanau_attention/Tanh:y:0*
T0*
_output_shapes
:t
2bahdanau_attention/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : §
-bahdanau_attention/dense_5/Tensordot/GatherV2GatherV23bahdanau_attention/dense_5/Tensordot/Shape:output:02bahdanau_attention/dense_5/Tensordot/free:output:0;bahdanau_attention/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4bahdanau_attention/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
/bahdanau_attention/dense_5/Tensordot/GatherV2_1GatherV23bahdanau_attention/dense_5/Tensordot/Shape:output:02bahdanau_attention/dense_5/Tensordot/axes:output:0=bahdanau_attention/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*bahdanau_attention/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
)bahdanau_attention/dense_5/Tensordot/ProdProd6bahdanau_attention/dense_5/Tensordot/GatherV2:output:03bahdanau_attention/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,bahdanau_attention/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Å
+bahdanau_attention/dense_5/Tensordot/Prod_1Prod8bahdanau_attention/dense_5/Tensordot/GatherV2_1:output:05bahdanau_attention/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0bahdanau_attention/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+bahdanau_attention/dense_5/Tensordot/concatConcatV22bahdanau_attention/dense_5/Tensordot/free:output:02bahdanau_attention/dense_5/Tensordot/axes:output:09bahdanau_attention/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ź
*bahdanau_attention/dense_5/Tensordot/stackPack2bahdanau_attention/dense_5/Tensordot/Prod:output:04bahdanau_attention/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Å
.bahdanau_attention/dense_5/Tensordot/transpose	Transposebahdanau_attention/Tanh:y:04bahdanau_attention/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%Ū
,bahdanau_attention/dense_5/Tensordot/ReshapeReshape2bahdanau_attention/dense_5/Tensordot/transpose:y:03bahdanau_attention/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’Ū
+bahdanau_attention/dense_5/Tensordot/MatMulMatMul5bahdanau_attention/dense_5/Tensordot/Reshape:output:0;bahdanau_attention/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’v
,bahdanau_attention/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:t
2bahdanau_attention/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
-bahdanau_attention/dense_5/Tensordot/concat_1ConcatV26bahdanau_attention/dense_5/Tensordot/GatherV2:output:05bahdanau_attention/dense_5/Tensordot/Const_2:output:0;bahdanau_attention/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ō
$bahdanau_attention/dense_5/TensordotReshape5bahdanau_attention/dense_5/Tensordot/MatMul:product:06bahdanau_attention/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%Ø
1bahdanau_attention/dense_5/BiasAdd/ReadVariableOpReadVariableOp:bahdanau_attention_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ķ
"bahdanau_attention/dense_5/BiasAddBiasAdd-bahdanau_attention/dense_5/Tensordot:output:09bahdanau_attention/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’%Y
bahdanau_attention/RankConst*
_output_shapes
: *
dtype0*
value	B :[
bahdanau_attention/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :Z
bahdanau_attention/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
bahdanau_attention/SubSub"bahdanau_attention/Rank_1:output:0!bahdanau_attention/Sub/y:output:0*
T0*
_output_shapes
: `
bahdanau_attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : `
bahdanau_attention/range/limitConst*
_output_shapes
: *
dtype0*
value	B :`
bahdanau_attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ø
bahdanau_attention/rangeRange'bahdanau_attention/range/start:output:0'bahdanau_attention/range/limit:output:0'bahdanau_attention/range/delta:output:0*
_output_shapes
:b
 bahdanau_attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :b
 bahdanau_attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :Æ
bahdanau_attention/range_1Range)bahdanau_attention/range_1/start:output:0bahdanau_attention/Sub:z:0)bahdanau_attention/range_1/delta:output:0*
_output_shapes
: t
"bahdanau_attention/concat/values_1Packbahdanau_attention/Sub:z:0*
N*
T0*
_output_shapes
:l
"bahdanau_attention/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:`
bahdanau_attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
bahdanau_attention/concatConcatV2!bahdanau_attention/range:output:0+bahdanau_attention/concat/values_1:output:0#bahdanau_attention/range_1:output:0+bahdanau_attention/concat/values_3:output:0'bahdanau_attention/concat/axis:output:0*
N*
T0*
_output_shapes
:°
bahdanau_attention/transpose	Transpose+bahdanau_attention/dense_5/BiasAdd:output:0"bahdanau_attention/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’%}
bahdanau_attention/SoftmaxSoftmax bahdanau_attention/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’%\
bahdanau_attention/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
bahdanau_attention/Sub_1Sub"bahdanau_attention/Rank_1:output:0#bahdanau_attention/Sub_1/y:output:0*
T0*
_output_shapes
: b
 bahdanau_attention/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : b
 bahdanau_attention/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :b
 bahdanau_attention/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ą
bahdanau_attention/range_2Range)bahdanau_attention/range_2/start:output:0)bahdanau_attention/range_2/limit:output:0)bahdanau_attention/range_2/delta:output:0*
_output_shapes
:b
 bahdanau_attention/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :b
 bahdanau_attention/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :±
bahdanau_attention/range_3Range)bahdanau_attention/range_3/start:output:0bahdanau_attention/Sub_1:z:0)bahdanau_attention/range_3/delta:output:0*
_output_shapes
: x
$bahdanau_attention/concat_1/values_1Packbahdanau_attention/Sub_1:z:0*
N*
T0*
_output_shapes
:n
$bahdanau_attention/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:b
 bahdanau_attention/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
bahdanau_attention/concat_1ConcatV2#bahdanau_attention/range_2:output:0-bahdanau_attention/concat_1/values_1:output:0#bahdanau_attention/range_3:output:0-bahdanau_attention/concat_1/values_3:output:0)bahdanau_attention/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
bahdanau_attention/transpose_1	Transpose$bahdanau_attention/Softmax:softmax:0$bahdanau_attention/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%
bahdanau_attention/mulMul"bahdanau_attention/transpose_1:y:0args_0*
T0*,
_output_shapes
:’’’’’’’’’%j
(bahdanau_attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
bahdanau_attention/SumSumbahdanau_attention/mul:z:01bahdanau_attention/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’o
IdentityIdentitybahdanau_attention/Sum:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp2^bahdanau_attention/dense_3/BiasAdd/ReadVariableOp4^bahdanau_attention/dense_3/Tensordot/ReadVariableOp2^bahdanau_attention/dense_4/BiasAdd/ReadVariableOp4^bahdanau_attention/dense_4/Tensordot/ReadVariableOp2^bahdanau_attention/dense_5/BiasAdd/ReadVariableOp4^bahdanau_attention/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:’’’’’’’’’%:’’’’’’’’’: : : : : : 2f
1bahdanau_attention/dense_3/BiasAdd/ReadVariableOp1bahdanau_attention/dense_3/BiasAdd/ReadVariableOp2j
3bahdanau_attention/dense_3/Tensordot/ReadVariableOp3bahdanau_attention/dense_3/Tensordot/ReadVariableOp2f
1bahdanau_attention/dense_4/BiasAdd/ReadVariableOp1bahdanau_attention/dense_4/BiasAdd/ReadVariableOp2j
3bahdanau_attention/dense_4/Tensordot/ReadVariableOp3bahdanau_attention/dense_4/Tensordot/ReadVariableOp2f
1bahdanau_attention/dense_5/BiasAdd/ReadVariableOp1bahdanau_attention/dense_5/BiasAdd/ReadVariableOp2j
3bahdanau_attention/dense_5/Tensordot/ReadVariableOp3bahdanau_attention/dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameargs_0:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameargs_1
Š
ü
D__inference_dense_5_layer_call_and_return_conditional_losses_1928803

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’%
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’%r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’%c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’%z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’%
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ė
serving_default×
>
args_04
serving_default_args_0:0’’’’’’’’’%
:
args_10
serving_default_args_1:0’’’’’’’’’=
output_11
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:¾N
é
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
W1
	W2

V

signatures"
_tf_keras_model
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ź
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

trace_02ē
4__inference_bahdanau_attention_layer_call_fn_1928927®
„²”
FullArgSpec)
args!
jself

jfeatures
jhidden
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0

trace_02
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1929048®
„²”
FullArgSpec)
args!
jself

jfeatures
jhidden
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0
ŌBŃ
"__inference__wrapped_model_1928688args_0args_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
,
+serving_default"
signature_map
L:J
28image_captioning_model/bahdanau_attention/dense_3/kernel
E:C26image_captioning_model/bahdanau_attention/dense_3/bias
L:J
28image_captioning_model/bahdanau_attention/dense_4/kernel
E:C26image_captioning_model/bahdanau_attention/dense_4/bias
K:I	28image_captioning_model/bahdanau_attention/dense_5/kernel
D:B26image_captioning_model/bahdanau_attention/dense_5/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
žBū
4__inference_bahdanau_attention_layer_call_fn_1928927featureshidden"®
„²”
FullArgSpec)
args!
jself

jfeatures
jhidden
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1929048featureshidden"®
„²”
FullArgSpec)
args!
jself

jfeatures
jhidden
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ķ
1trace_02Š
)__inference_dense_3_layer_call_fn_1929057¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z1trace_0

2trace_02ė
D__inference_dense_3_layer_call_and_return_conditional_losses_1929087¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z2trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ķ
8trace_02Š
)__inference_dense_4_layer_call_fn_1929096¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z8trace_0

9trace_02ė
D__inference_dense_4_layer_call_and_return_conditional_losses_1929126¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z9trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ķ
?trace_02Š
)__inference_dense_5_layer_call_fn_1929135¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z?trace_0

@trace_02ė
D__inference_dense_5_layer_call_and_return_conditional_losses_1929165¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z@trace_0
ŃBĪ
%__inference_signature_wrapper_1928909args_0args_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
ŻBŚ
)__inference_dense_3_layer_call_fn_1929057inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ųBõ
D__inference_dense_3_layer_call_and_return_conditional_losses_1929087inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
ŻBŚ
)__inference_dense_4_layer_call_fn_1929096inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ųBõ
D__inference_dense_4_layer_call_and_return_conditional_losses_1929126inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
ŻBŚ
)__inference_dense_5_layer_call_fn_1929135inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ųBõ
D__inference_dense_5_layer_call_and_return_conditional_losses_1929165inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ¾
"__inference__wrapped_model_1928688W¢T
M¢J
%"
args_0’’’’’’’’’%
!
args_1’’’’’’’’’
Ŗ "4Ŗ1
/
output_1# 
output_1’’’’’’’’’ß
O__inference_bahdanau_attention_layer_call_and_return_conditional_losses_1929048Y¢V
O¢L
'$
features’’’’’’’’’%
!
hidden’’’’’’’’’
Ŗ "&¢#

0’’’’’’’’’
 ¶
4__inference_bahdanau_attention_layer_call_fn_1928927~Y¢V
O¢L
'$
features’’’’’’’’’%
!
hidden’’’’’’’’’
Ŗ "’’’’’’’’’®
D__inference_dense_3_layer_call_and_return_conditional_losses_1929087f4¢1
*¢'
%"
inputs’’’’’’’’’%
Ŗ "*¢'
 
0’’’’’’’’’%
 
)__inference_dense_3_layer_call_fn_1929057Y4¢1
*¢'
%"
inputs’’’’’’’’’%
Ŗ "’’’’’’’’’%®
D__inference_dense_4_layer_call_and_return_conditional_losses_1929126f4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "*¢'
 
0’’’’’’’’’
 
)__inference_dense_4_layer_call_fn_1929096Y4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "’’’’’’’’’­
D__inference_dense_5_layer_call_and_return_conditional_losses_1929165e4¢1
*¢'
%"
inputs’’’’’’’’’%
Ŗ ")¢&

0’’’’’’’’’%
 
)__inference_dense_5_layer_call_fn_1929135X4¢1
*¢'
%"
inputs’’’’’’’’’%
Ŗ "’’’’’’’’’%Õ
%__inference_signature_wrapper_1928909«k¢h
¢ 
aŖ^
/
args_0%"
args_0’’’’’’’’’%
+
args_1!
args_1’’’’’’’’’"4Ŗ1
/
output_1# 
output_1’’’’’’’’’