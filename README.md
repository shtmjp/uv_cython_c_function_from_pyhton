# uv_cython_c_function_from_pyhton
uvを用いて、Cython経由で呼び出されるCの関数をビルドする例。  
Cの関数にはnumpy配列をポインタとして渡している。
## How to run
```
uv run src/main.py
```

## Memo
### `MANIFEST.in`が必須
`MANIFEST.in`を置いておかないと、`uv build`でwheelをビルドする際`.pyx`ファイルを参照できずエラーとなる。
参照: https://github.com/astral-sh/uv/issues/7222#issuecomment-2438450834
