# PTI-PCID Benchmark
This repo contains the results of benchmarking `buildworld` on FreeBSD 12 with the PTI mitigation.

| PTI | PCID | Time 1| Time 2| Time 3| Average
| ---|---|---|---|---|---
| enabled|enabled|      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |




## OLD BUILDS
These are the benchmarks for `make buildworld` in FreeBSD:

```
PTI=enabled PCID=enabled
        26m42.41s real          12h56m48.16s user               46m49.65s sys
PTI=disabled PCID=disabled
        26m41.23s real          12h53m9.94s user                44m43.19s sys
PTI=disabled PCID=enabled
        26m50.65s real          12h52m46.36s user               44m47.89s sys
PTI=enabled PCID=disabled
        27m3.50s real           13h1m7.08s user         47m18.06s sys
PTI=enabled PCID=enabled
        26m56.25s real          12h55m5.93s user                45m50.52s sys
PTI=enabled PCID=enabled
        26m45.23s real          12h52m41.40s user               46m32.62s sys
```


