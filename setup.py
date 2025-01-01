import numpy as np
from Cython.Build import cythonize
from setuptools import Extension, setup

# Extension configuration for Cython
ext = Extension(
    name="c_func_wrapper",
    sources=[
        "src/c/c_add.c",
        "src/c/c_func_wrapper.pyx",
    ],
    # libraries=["gsl", "gslcblas"],
    # extra_compile_args=["-O3"],
    # extra_link_args=["-O3"],
)

setup(
    ext_modules=cythonize([ext]),
    include_dirs=[np.get_include()],
)
