import numpy as np
cimport numpy as cnp

cdef extern from "c_add.h":
    double sum_array_c(double *array, int n)
    
def sum_array(cnp.ndarray[double, ndim=1, mode="c"] array):
    cdef int n = array.shape[0]
    cdef double *c_array
    c_array = <double*> array.data
    cdef double res
    res = sum_array_c(c_array, n)
    return res