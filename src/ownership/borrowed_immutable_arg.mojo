from tensor import Tensor, TensorShape


def print_shape(borrowed tensor: Tensor[DType.float32]):
    shape = tensor.shape()
    print(shape.__str__())


def main():
    var tensor = Tensor[DType.float32](256, 256)
    print_shape(tensor)
