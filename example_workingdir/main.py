import torch
import tensorflow as tf

if torch.cuda.is_available():
    print("CUDA available for pytorch")
else:
    print("CUDA is NOT available for pytorch")

if tf.test.is_gpu_available():
    print("CUDA available for tensorflow")
else:
    print("CUDA is NOT available for tensorflow")
