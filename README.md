# cuda-sgemm

Nvidia GTX1060 Mobile / Intel i7 7700HQ / Windows 10

![image](https://user-images.githubusercontent.com/21983582/170164400-11eaa871-d5b0-4584-a61d-b18a75bb2e2f.png)

![image](https://user-images.githubusercontent.com/21983582/170164847-da596868-0718-49b0-83a1-020c12561ba3.png)

Running log (M = N, K = 1024):

```
sgemm.exe

Kernal = cublas
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00002685   0.00002840   0.00003270 s, AVG Performance =  1100.4761 Gflops
M N K =    192    192   1024, Time =   0.00004867   0.00004924   0.00005008 s, AVG Performance =  1427.9085 Gflops
M N K =    256    256   1024, Time =   0.00007475   0.00007637   0.00008499 s, AVG Performance =  1636.6740 Gflops
M N K =    384    384   1024, Time =   0.00012986   0.00014474   0.00021914 s, AVG Performance =  1943.1072 Gflops
M N K =    512    512   1024, Time =   0.00020685   0.00024922   0.00035123 s, AVG Performance =  2006.2917 Gflops
M N K =    768    768   1024, Time =   0.00043917   0.00044606   0.00045770 s, AVG Performance =  2522.0777 Gflops
M N K =   1024   1024   1024, Time =   0.00082602   0.00083253   0.00083968 s, AVG Performance =  2402.3216 Gflops
M N K =   1536   1536   1024, Time =   0.00171315   0.00172099   0.00172954 s, AVG Performance =  2614.7710 Gflops
M N K =   2048   2048   1024, Time =   0.00289952   0.00291363   0.00292454 s, AVG Performance =  2745.7170 Gflops
M N K =   3072   3072   1024, Time =   0.00588800   0.00623962   0.00651062 s, AVG Performance =  2884.7900 Gflops
M N K =   4096   4096   1024, Time =   0.00955597   0.01023476   0.01069312 s, AVG Performance =  3126.5994 Gflops
M N K =   6144   6144   1024, Time =   0.01971395   0.02030813   0.02139507 s, AVG Performance =  3545.3785 Gflops
M N K =   8192   8192   1024, Time =   0.03493463   0.03546315   0.03577405 s, AVG Performance =  3609.3808 Gflops
M N K =  12288  12288   1024, Time =   0.08047309   0.08116153   0.08240794 s, AVG Performance =  3548.4790 Gflops
M N K =  16384  16384   1024, Time =   0.14310503   0.14436133   0.14527786 s, AVG Performance =  3546.6561 Gflops

Kernal = naiveSgemm
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00016381   0.00016579   0.00017613 s, AVG Performance =   188.4892 Gflops
M N K =    192    192   1024, Time =   0.00031539   0.00032587   0.00032973 s, AVG Performance =   215.7715 Gflops
M N K =    256    256   1024, Time =   0.00055389   0.00061861   0.00062669 s, AVG Performance =   202.0655 Gflops
M N K =    384    384   1024, Time =   0.00123050   0.00128286   0.00130560 s, AVG Performance =   219.2366 Gflops
M N K =    512    512   1024, Time =   0.00215722   0.00215939   0.00216166 s, AVG Performance =   231.5470 Gflops
M N K =    768    768   1024, Time =   0.00485146   0.00485392   0.00485859 s, AVG Performance =   231.7714 Gflops
M N K =   1024   1024   1024, Time =   0.00837629   0.00845923   0.00866304 s, AVG Performance =   236.4282 Gflops
M N K =   1536   1536   1024, Time =   0.01880253   0.01894382   0.01911392 s, AVG Performance =   237.5445 Gflops
M N K =   2048   2048   1024, Time =   0.03359386   0.03369607   0.03377357 s, AVG Performance =   237.4164 Gflops
M N K =   3072   3072   1024, Time =   0.07561933   0.07579476   0.07590093 s, AVG Performance =   237.4834 Gflops
M N K =   4096   4096   1024, Time =   0.13474061   0.13501899   0.13512877 s, AVG Performance =   237.0037 Gflops
M N K =   6144   6144   1024, Time =   0.30201009   0.30228510   0.30241653 s, AVG Performance =   238.1857 Gflops
M N K =   8192   8192   1024, Time =   0.53686368   0.53710848   0.53775346 s, AVG Performance =   238.3131 Gflops
M N K =  12288  12288   1024, Time =   1.21206355   1.21368299   1.21526265 s, AVG Performance =   237.2943 Gflops
M N K =  16384  16384   1024, Time =   2.16142344   2.16171999   2.16234255 s, AVG Performance =   236.8484 Gflops

Kernal = mySgemmV1Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00017971   0.00018107   0.00018637 s, AVG Performance =   172.5833 Gflops
M N K =    192    192   1024, Time =   0.00018022   0.00018209   0.00018534 s, AVG Performance =   386.1491 Gflops
M N K =    256    256   1024, Time =   0.00017686   0.00017767   0.00017920 s, AVG Performance =   703.5373 Gflops
M N K =    384    384   1024, Time =   0.00018070   0.00018248   0.00018390 s, AVG Performance =  1541.2648 Gflops
M N K =    512    512   1024, Time =   0.00023757   0.00023936   0.00024166 s, AVG Performance =  2088.8758 Gflops
M N K =    768    768   1024, Time =   0.00047802   0.00048452   0.00049254 s, AVG Performance =  2321.8626 Gflops
M N K =   1024   1024   1024, Time =   0.00089702   0.00090037   0.00090448 s, AVG Performance =  2221.2982 Gflops
M N K =   1536   1536   1024, Time =   0.00185203   0.00185554   0.00186355 s, AVG Performance =  2425.1753 Gflops
M N K =   2048   2048   1024, Time =   0.00302285   0.00306102   0.00313955 s, AVG Performance =  2613.5073 Gflops
M N K =   3072   3072   1024, Time =   0.00671635   0.00673164   0.00674477 s, AVG Performance =  2673.9417 Gflops
M N K =   4096   4096   1024, Time =   0.01204429   0.01207474   0.01212099 s, AVG Performance =  2650.1615 Gflops
M N K =   6144   6144   1024, Time =   0.02683597   0.02689617   0.02701107 s, AVG Performance =  2676.9608 Gflops
M N K =   8192   8192   1024, Time =   0.04761907   0.04774611   0.04782166 s, AVG Performance =  2680.8469 Gflops
M N K =  12288  12288   1024, Time =   0.10791834   0.10818793   0.10876569 s, AVG Performance =  2662.0346 Gflops
M N K =  16384  16384   1024, Time =   0.19216794   0.19267596   0.19323191 s, AVG Performance =  2657.3112 Gflops

Kernal = mySgemmV2Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00016384   0.00016527   0.00017181 s, AVG Performance =   189.0841 Gflops
M N K =    192    192   1024, Time =   0.00016486   0.00016659   0.00017258 s, AVG Performance =   422.0641 Gflops
M N K =    256    256   1024, Time =   0.00015936   0.00016048   0.00016243 s, AVG Performance =   778.9288 Gflops
M N K =    384    384   1024, Time =   0.00016470   0.00016641   0.00017514 s, AVG Performance =  1690.1393 Gflops
M N K =    512    512   1024, Time =   0.00021296   0.00021517   0.00021670 s, AVG Performance =  2323.7311 Gflops
M N K =    768    768   1024, Time =   0.00042176   0.00042483   0.00042906 s, AVG Performance =  2648.1056 Gflops
M N K =   1024   1024   1024, Time =   0.00078842   0.00080404   0.00084787 s, AVG Performance =  2487.4335 Gflops
M N K =   1536   1536   1024, Time =   0.00163786   0.00164295   0.00165037 s, AVG Performance =  2738.9750 Gflops
M N K =   2048   2048   1024, Time =   0.00278733   0.00279471   0.00280269 s, AVG Performance =  2862.5506 Gflops
M N K =   3072   3072   1024, Time =   0.00618394   0.00618980   0.00619664 s, AVG Performance =  2908.0107 Gflops
M N K =   4096   4096   1024, Time =   0.01107238   0.01110948   0.01112534 s, AVG Performance =  2880.4233 Gflops
M N K =   6144   6144   1024, Time =   0.02468816   0.02484096   0.02495590 s, AVG Performance =  2898.4387 Gflops
M N K =   8192   8192   1024, Time =   0.04396442   0.04428450   0.04450201 s, AVG Performance =  2890.4019 Gflops
M N K =  12288  12288   1024, Time =   0.10003763   0.10054756   0.10085478 s, AVG Performance =  2864.3160 Gflops
M N K =  16384  16384   1024, Time =   0.17817806   0.17869232   0.17919971 s, AVG Performance =  2865.2603 Gflops

Kernal = mySgemmV3Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00010288   0.00010450   0.00011264 s, AVG Performance =   299.0454 Gflops
M N K =    192    192   1024, Time =   0.00010310   0.00010508   0.00011619 s, AVG Performance =   669.1025 Gflops
M N K =    256    256   1024, Time =   0.00010115   0.00010151   0.00010230 s, AVG Performance =  1231.4398 Gflops
M N K =    384    384   1024, Time =   0.00010195   0.00010271   0.00010330 s, AVG Performance =  2738.1963 Gflops
M N K =    512    512   1024, Time =   0.00016669   0.00016746   0.00016794 s, AVG Performance =  2985.8589 Gflops
M N K =    768    768   1024, Time =   0.00032963   0.00033160   0.00033651 s, AVG Performance =  3392.6417 Gflops
M N K =   1024   1024   1024, Time =   0.00059568   0.00059807   0.00060211 s, AVG Performance =  3344.0879 Gflops
M N K =   1536   1536   1024, Time =   0.00124890   0.00125158   0.00125603 s, AVG Performance =  3595.4438 Gflops
M N K =   2048   2048   1024, Time =   0.00213606   0.00214080   0.00214938 s, AVG Performance =  3736.9263 Gflops
M N K =   3072   3072   1024, Time =   0.00459878   0.00460250   0.00460979 s, AVG Performance =  3910.9187 Gflops
M N K =   4096   4096   1024, Time =   0.00823706   0.00832498   0.00836710 s, AVG Performance =  3843.8550 Gflops
M N K =   6144   6144   1024, Time =   0.01863030   0.01905819   0.01934413 s, AVG Performance =  3777.9043 Gflops
M N K =   8192   8192   1024, Time =   0.03376435   0.03429754   0.03471955 s, AVG Performance =  3732.0463 Gflops
M N K =  12288  12288   1024, Time =   0.07686451   0.07822924   0.07979008 s, AVG Performance =  3681.4880 Gflops
M N K =  16384  16384   1024, Time =   0.13829939   0.13945724   0.14129625 s, AVG Performance =  3671.3764 Gflops
```

Running log (M = N = K):

```
sgemm.exe

Kernal = cublas
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00000819   0.00000954   0.00001648 s, AVG Performance =   409.4945 Gflops
M N K =    192    192    192, Time =   0.00001514   0.00001537   0.00001610 s, AVG Performance =   857.5922 Gflops
M N K =    256    256    256, Time =   0.00002458   0.00002601   0.00003379 s, AVG Performance =  1201.3317 Gflops
M N K =    384    384    384, Time =   0.00005222   0.00005369   0.00006048 s, AVG Performance =  1964.2997 Gflops
M N K =    512    512    512, Time =   0.00011366   0.00011598   0.00012477 s, AVG Performance =  2155.4697 Gflops
M N K =    768    768    768, Time =   0.00033382   0.00033700   0.00034586 s, AVG Performance =  2503.7449 Gflops
M N K =   1024   1024   1024, Time =   0.00080589   0.00081170   0.00081706 s, AVG Performance =  2463.9670 Gflops
M N K =   1536   1536   1536, Time =   0.00249139   0.00251926   0.00258048 s, AVG Performance =  2679.3540 Gflops
M N K =   2048   2048   2048, Time =   0.00558675   0.00560333   0.00562790 s, AVG Performance =  2855.4459 Gflops
M N K =   3072   3072   3072, Time =   0.01541626   0.01671393   0.01865827 s, AVG Performance =  3230.8387 Gflops
M N K =   4096   4096   4096, Time =   0.03547853   0.03633392   0.03793203 s, AVG Performance =  3522.8785 Gflops
M N K =   6144   6144   6144, Time =   0.12528509   0.12919393   0.13076964 s, AVG Performance =  3343.8103 Gflops
M N K =   8192   8192   8192, Time =   0.30787578   0.31097918   0.31303459 s, AVG Performance =  3292.8250 Gflops
M N K =  12288  12288  12288, Time =   0.93149662   0.93513879   0.94099760 s, AVG Performance =  3695.7081 Gflops
M N K =  16384  16384  16384, Time =   2.21192169   2.22479570   2.23437285 s, AVG Performance =  3682.1358 Gflops

Kernal = naiveSgemm
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00002253   0.00002698   0.00002970 s, AVG Performance =   144.8046 Gflops
M N K =    192    192    192, Time =   0.00005530   0.00005687   0.00006144 s, AVG Performance =   231.8182 Gflops
M N K =    256    256    256, Time =   0.00012595   0.00012839   0.00013494 s, AVG Performance =   243.3922 Gflops
M N K =    384    384    384, Time =   0.00044749   0.00044905   0.00045104 s, AVG Performance =   234.8710 Gflops
M N K =    512    512    512, Time =   0.00096426   0.00096503   0.00096563 s, AVG Performance =   259.0601 Gflops
M N K =    768    768    768, Time =   0.00357990   0.00358461   0.00358976 s, AVG Performance =   235.3810 Gflops
M N K =   1024   1024   1024, Time =   0.00844800   0.00849061   0.00855933 s, AVG Performance =   235.5543 Gflops
M N K =   1536   1536   1536, Time =   0.02842106   0.02871936   0.02880992 s, AVG Performance =   235.0331 Gflops
M N K =   2048   2048   2048, Time =   0.06811750   0.06842461   0.06859059 s, AVG Performance =   233.8340 Gflops
M N K =   3072   3072   3072, Time =   0.23097500   0.23157945   0.23193088 s, AVG Performance =   233.1813 Gflops
M N K =   4096   4096   4096, Time =   0.55418670   0.55554188   0.55645394 s, AVG Performance =   230.4057 Gflops
M N K =   6144   6144   6144, Time =   1.89872742   1.90371654   1.90978253 s, AVG Performance =   226.9245 Gflops
M N K =   8192   8192   8192, Time =   4.59278727   4.60104737   4.60827827 s, AVG Performance =   222.5580 Gflops
M N K =  12288  12288  12288, Time =  15.98249245  16.00581350  16.02889824 s, AVG Performance =   215.9215 Gflops
M N K =  16384  16384  16384, Time =  38.52011108  38.54468727  38.57204819 s, AVG Performance =   212.5325 Gflops

Kernal = mySgemmV1Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00002458   0.00002798   0.00003539 s, AVG Performance =   139.6047 Gflops
M N K =    192    192    192, Time =   0.00003482   0.00003587   0.00004080 s, AVG Performance =   367.5505 Gflops
M N K =    256    256    256, Time =   0.00004480   0.00004517   0.00004602 s, AVG Performance =   691.8615 Gflops
M N K =    384    384    384, Time =   0.00007680   0.00007788   0.00007885 s, AVG Performance =  1354.3304 Gflops
M N K =    512    512    512, Time =   0.00012957   0.00013073   0.00013210 s, AVG Performance =  1912.2974 Gflops
M N K =    768    768    768, Time =   0.00038195   0.00038689   0.00039117 s, AVG Performance =  2180.8728 Gflops
M N K =   1024   1024   1024, Time =   0.00094515   0.00094748   0.00094998 s, AVG Performance =  2110.8590 Gflops
M N K =   1536   1536   1536, Time =   0.00292544   0.00294176   0.00301904 s, AVG Performance =  2294.5447 Gflops
M N K =   2048   2048   2048, Time =   0.00609354   0.00614280   0.00651878 s, AVG Performance =  2604.6740 Gflops
M N K =   3072   3072   3072, Time =   0.02011910   0.02025107   0.02038374 s, AVG Performance =  2666.5255 Gflops
M N K =   4096   4096   4096, Time =   0.04818534   0.04850590   0.04890784 s, AVG Performance =  2638.8540 Gflops
M N K =   6144   6144   6144, Time =   0.16255489   0.16347562   0.16491722 s, AVG Performance =  2642.5959 Gflops
M N K =   8192   8192   8192, Time =   0.38610819   0.38940083   0.39440566 s, AVG Performance =  2629.6811 Gflops
M N K =  12288  12288  12288, Time =   1.30881608   1.32298363   1.33404016 s, AVG Performance =  2612.2772 Gflops
M N K =  16384  16384  16384, Time =   3.11728215   3.13797417   3.15835595 s, AVG Performance =  2610.6015 Gflops

Kernal = mySgemmV2Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00001946   0.00002388   0.00002966 s, AVG Performance =   163.5893 Gflops
M N K =    192    192    192, Time =   0.00002813   0.00003097   0.00003379 s, AVG Performance =   425.7387 Gflops
M N K =    256    256    256, Time =   0.00003638   0.00003688   0.00003786 s, AVG Performance =   847.2692 Gflops
M N K =    384    384    384, Time =   0.00006451   0.00006602   0.00006758 s, AVG Performance =  1597.5466 Gflops
M N K =    512    512    512, Time =   0.00010947   0.00011129   0.00011366 s, AVG Performance =  2246.4560 Gflops
M N K =    768    768    768, Time =   0.00031840   0.00032098   0.00032352 s, AVG Performance =  2628.6488 Gflops
M N K =   1024   1024   1024, Time =   0.00078326   0.00078729   0.00079210 s, AVG Performance =  2540.3716 Gflops
M N K =   1536   1536   1536, Time =   0.00245350   0.00247036   0.00248730 s, AVG Performance =  2732.3935 Gflops
M N K =   2048   2048   2048, Time =   0.00552448   0.00553712   0.00554906 s, AVG Performance =  2889.5871 Gflops
M N K =   3072   3072   3072, Time =   0.01870282   0.01896951   0.01908122 s, AVG Performance =  2846.6729 Gflops
M N K =   4096   4096   4096, Time =   0.04518448   0.04542650   0.04559546 s, AVG Performance =  2817.7386 Gflops
M N K =   6144   6144   6144, Time =   0.15309401   0.15442241   0.15621108 s, AVG Performance =  2797.5214 Gflops
M N K =   8192   8192   8192, Time =   0.36685485   0.36822633   0.37003979 s, AVG Performance =  2780.8983 Gflops
M N K =  12288  12288  12288, Time =   1.24375021   1.25105864   1.26140726 s, AVG Performance =  2762.4604 Gflops
M N K =  16384  16384  16384, Time =   2.94956017   2.96272037   2.97955632 s, AVG Performance =  2765.0264 Gflops

Kernal = mySgemmV3Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00001434   0.00001625   0.00002666 s, AVG Performance =   240.3432 Gflops
M N K =    192    192    192, Time =   0.00002048   0.00002260   0.00002970 s, AVG Performance =   583.3862 Gflops
M N K =    256    256    256, Time =   0.00002643   0.00002728   0.00002925 s, AVG Performance =  1145.5278 Gflops
M N K =    384    384    384, Time =   0.00004301   0.00004428   0.00005024 s, AVG Performance =  2381.7737 Gflops
M N K =    512    512    512, Time =   0.00008496   0.00008544   0.00008602 s, AVG Performance =  2925.9204 Gflops
M N K =    768    768    768, Time =   0.00024733   0.00024910   0.00025088 s, AVG Performance =  3387.1831 Gflops
M N K =   1024   1024   1024, Time =   0.00058630   0.00058876   0.00059069 s, AVG Performance =  3396.9976 Gflops
M N K =   1536   1536   1536, Time =   0.00184627   0.00185586   0.00186778 s, AVG Performance =  3637.1293 Gflops
M N K =   2048   2048   2048, Time =   0.00418947   0.00419546   0.00420659 s, AVG Performance =  3813.6469 Gflops
M N K =   3072   3072   3072, Time =   0.01391411   0.01416870   0.01426595 s, AVG Performance =  3811.2175 Gflops
M N K =   4096   4096   4096, Time =   0.03363923   0.03483078   0.03533091 s, AVG Performance =  3674.9104 Gflops
M N K =   6144   6144   6144, Time =   0.11930420   0.12090832   0.12276097 s, AVG Performance =  3572.9552 Gflops
M N K =   8192   8192   8192, Time =   0.28747058   0.29165312   0.29408255 s, AVG Performance =  3511.0202 Gflops
M N K =  12288  12288  12288, Time =   0.97516549   0.99364190   1.00369000 s, AVG Performance =  3478.1142 Gflops
M N K =  16384  16384  16384, Time =   2.34599519   2.37120268   2.38566184 s, AVG Performance =  3454.7869 Gflops
```
