# PTI-PCID Benchmark
This repo contains the results of benchmarking `buildworld` on FreeBSD 12 with the PTI mitigation.

## PTI=enabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | --- | ---
real | 1695.96 | 1688.69 | 1701.44 | 1695.36 
user | 50535.65 | 50380.41 | 50342.40 | 0
sys | 2730.79 | 2710.22 | 2733.57 | 0

## PTI=disabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | --- | ---
real | 1712.18 | 1677.08 | 1691.40 | 0 
user | 50409.49 | 50223.23 | 50273.89 | 0
sys | 2623.50 | 2652.31 | 2658.68 | 0

## PTI=enabled, PCID=disabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | --- | ---
real | 1703.57 | 1705.30 | 1729.55 | 0 
user | 50781.66 | 50754.05 | 50842.26 | 0
sys | 2740.31 | 2772.59 | 2787.22 | 0

## PTI=disabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | --- | ---
real | 1706.72 | 1697.84 | 1686.90 | 0 
user | 50401.75 | 50230.85 | 50226.37 | 0
sys | 2637.55 | 2620.79 | 2654.58 | 0

