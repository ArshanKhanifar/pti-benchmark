# PTI-PCID Benchmark

This repo contains the results of benchmarking multiple tasks on FreeBSD 12 with the PTI mitigation and Spectre mitigation.

## Results of `buildworld`:

### PTI=enabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | --- 
real | 1695.96 | 1688.69 | 1701.44 | 1695.36 
user | 50535.65 | 50380.41 | 50342.40 | 50419.49
sys | 2730.79 | 2710.22 | 2733.57 | 2724.86

### PTI=disabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | ---
real | 1712.18 | 1677.08 | 1691.40 | 1693.55 
user | 50409.49 | 50223.23 | 50273.89 | 50302.2
sys | 2623.50 | 2652.31 | 2658.68 | 2644.83

### PTI=enabled, PCID=disabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | ---
real | 1703.57 | 1705.30 | 1729.55 | 1712.81 
user | 50781.66 | 50754.05 | 50842.26 | 50792.66
sys | 2740.31 | 2772.59 | 2787.22 | 2766.71

### PTI=disabled, PCID=enabled

Mode | Time 1 | Time 2 | Time 3 | Average
--- | --- | --- | --- | ---
real | 1706.72 | 1697.84 | 1686.90 | 1697.15 
user | 50401.75 | 50230.85 | 50226.37 | 50286.32
sys | 2637.55 | 2620.79 | 2654.58 | 2637.64

## Results of `syscall_timing getppid`

### PTI=enabled, PCID=enabled
```
Clock resolution: 0.000000001
test    loop    time    iterations      periteration
getppid 0       1.062550426     3119652 0.000000340
getppid 1       1.062600549     3783239 0.000000280
getppid 2       1.062599129     4043920 0.000000262
getppid 3       1.062550845     4041808 0.000000262
getppid 4       1.062600487     4043318 0.000000262
getppid 5       1.022923818     3891769 0.000000262
getppid 6       1.062551825     4043494 0.000000262
getppid 7       1.037910806     3944886 0.000000263
getppid 8       1.062548954     4042458 0.000000262
getppid 9       1.062553298     4043984 0.000000262
```

### PTI=enabled, PCID=disabled
```
Clock resolution: 0.000000001
test    loop    time    iterations      periteration
getppid 0       1.062550179     2274210 0.000000467
getppid 1       1.062549186     2721737 0.000000390
getppid 2       1.062550267     3088463 0.000000344
getppid 3       1.062547916     3102510 0.000000342
getppid 4       1.016532138     2965114 0.000000342
getppid 5       1.012793858     2955245 0.000000342
getppid 6       1.059916867     3094867 0.000000342
getppid 7       1.060025231     3094446 0.000000342
getppid 8       1.059906532     3090372 0.000000342
getppid 9       1.055016940     3078349 0.000000342
```

### PTI=disabled, PCID=enabled
```
Clock resolution: 0.000000001
test    loop    time    iterations      periteration
getppid 0       1.050982283     6858863 0.000000153
getppid 1       1.059966019     8387507 0.000000126
getppid 2       1.059972267     8954311 0.000000118
getppid 3       1.059969986     8952248 0.000000118
getppid 4       1.059984758     8954050 0.000000118
getppid 5       1.025501889     8662441 0.000000118
getppid 6       1.062598583     8976668 0.000000118
getppid 7       1.036027999     8739264 0.000000118
getppid 8       1.061528280     8965968 0.000000118
getppid 9       1.061915689     8970430 0.000000118
```

### PTI=disabled, PCID=disabled
```
Clock resolution: 0.000000001
test    loop    time    iterations      periteration
getppid 0       1.062599742     6960416 0.000000152
getppid 1       1.062550606     8469589 0.000000125
getppid 2       1.062595174     8923683 0.000000119
getppid 3       1.062550032     8923558 0.000000119
getppid 4       1.062549608     8920523 0.000000119
getppid 5       1.020479393     8556939 0.000000119
getppid 6       1.062549724     8922860 0.000000119
getppid 7       1.062551476     8922805 0.000000119
getppid 8       1.062600428     8924624 0.000000119
getppid 9       1.062549309     8922057 0.000000119
```
# IBRS support, AKA Spectre hardware mitigation


