# uv_cython_c_function_from_python
uvを用いて、Cython経由で呼び出されるCの関数をビルドする例。  
Cの関数にはnumpy配列をポインタとして渡している。
## How to run
```
uv sync
uv run src/main.py
```

## Memo
### `MANIFEST.in`が必須
`MANIFEST.in`を置いておかないと、`uv build`でwheelをビルドする際`.pyx`ファイルを参照できずエラーとなる。
参照: https://github.com/astral-sh/uv/issues/7222#issuecomment-2438450834

### `.pyx`と`.pxd`が同名の場合、CとCythonで同じ名前の関数を定義すると危ない
`c_foo.h`で`my_func`を定義し、`foo.pxd`で`cdef extern from "my_func.h": my_func`などとして、
`foo.pyx`で`cimport foo`したのち、`def my_func(): return foo.my_func`とするとエラーになる。
なぜかここでの`foo.my_func`は自身を再帰的に参照するような扱いになっているようだった。
