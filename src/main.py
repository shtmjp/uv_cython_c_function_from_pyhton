import c_func_wrapper
import numpy as np

print(c_func_wrapper.sum_array(np.array([1, 2, 3], dtype=np.float64)))
