use orion::operators::tensor::{Tensor, TensorTrait};
use orion::operators::tensor::{U32Tensor, I32Tensor, I8Tensor, FP8x23Tensor, FP16x16Tensor, FP32x32Tensor, BoolTensor};
use orion::numbers::{FP8x23, FP16x16, FP32x32};
use orion::operators::matrix::{MutMatrix, MutMatrixImpl};
use orion::operators::nn::{NNTrait, FP16x16NN};
use orion::operators::ml;

use node_sequential_1_1_dense_1_1_add_readvariableop_0::get_node_sequential_1_1_dense_1_1_add_readvariableop_0;
use node_sequential_1_1_dense_1_1_cast_readvariableop_0::get_node_sequential_1_1_dense_1_1_cast_readvariableop_0;


fn main(node_input: Tensor<FP16x16>) -> Tensor<FP16x16> {
let node_sequential_1_1_dense_1_1_matmul_0 = TensorTrait::matmul(@node_input, @get_node_sequential_1_1_dense_1_1_cast_readvariableop_0());
let node_sequential_1_1_dense_1_1_add_0 = TensorTrait::add(node_sequential_1_1_dense_1_1_matmul_0, get_node_sequential_1_1_dense_1_1_add_readvariableop_0());
let node_output = NNTrait::sigmoid(@node_sequential_1_1_dense_1_1_add_0);

        node_output
    }