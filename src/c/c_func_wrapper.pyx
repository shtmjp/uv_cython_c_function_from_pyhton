import numpy as np
cimport numpy as cnp
cimport c_func_wrapper

def sum_array(cnp.ndarray[double, ndim=1, mode="c"] array):
    cdef int n = array.shape[0]
    cdef double *c_array
    c_array = <double*> array.data
    cdef double res
    res = c_func_wrapper.sum_array_c(c_array, n)
    return res