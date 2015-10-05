# `clojure-clean`


```bash
docker build -t clojure-clean .
cd <some directory with clojure code>
docker run --rm -it -v $PWD:/code/ clojure-clean
```