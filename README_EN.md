# uv_cython_c_function_from_python

An example of building a C function invoked via Cython using uv.
In the example, the C function takes numpy arrays as pointers.

## How to run

```Python
uv sync
uv run src/main.py
```

## Memo

### `MANIFEST.in` is required

Without placing `MANIFEST.in`, the `.pyx` file cannot be referenced during `uv build` when building the wheel, resulting in an error.
Reference: https://github.com/astral-sh/uv/issues/7222#issuecomment-2438450834
