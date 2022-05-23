# cuda-sgemm

Nvidia GTX1060 Mobile / Intel i7 7700HQ / Windows 10

![image](https://user-images.githubusercontent.com/21983582/169753468-83fabe81-9544-42d5-8711-fe674313b4d3.png)

![image](https://user-images.githubusercontent.com/21983582/169755230-8e17fb1f-4b92-433f-baac-e20f8c73b217.png)

Running log (M = N, K = 1024):

```
sgemm.exe

Kernal = cublas
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00002662   0.00002932   0.00004278 s, AVG Performance =  1065.8835 Gflops
M N K =    192    192   1024, Time =   0.00004915   0.00004961   0.00005018 s, AVG Performance =  1417.3164 Gflops
M N K =    256    256   1024, Time =   0.00007475   0.00007566   0.00007667 s, AVG Performance =  1652.1803 Gflops
M N K =    384    384   1024, Time =   0.00013005   0.00015385   0.00020582 s, AVG Performance =  1828.0460 Gflops
M N K =    512    512   1024, Time =   0.00021088   0.00022324   0.00023040 s, AVG Performance =  2239.7580 Gflops
M N K =    768    768   1024, Time =   0.00043888   0.00044099   0.00044851 s, AVG Performance =  2551.0667 Gflops
M N K =   1024   1024   1024, Time =   0.00081408   0.00081828   0.00082739 s, AVG Performance =  2444.1655 Gflops
M N K =   1536   1536   1024, Time =   0.00168755   0.00169736   0.00171213 s, AVG Performance =  2651.1710 Gflops
M N K =   2048   2048   1024, Time =   0.00285696   0.00286396   0.00288141 s, AVG Performance =  2793.3304 Gflops
M N K =   3072   3072   1024, Time =   0.00580179   0.00613625   0.00635904 s, AVG Performance =  2933.3894 Gflops
M N K =   4096   4096   1024, Time =   0.00947098   0.01011981   0.01050010 s, AVG Performance =  3162.1153 Gflops
M N K =   6144   6144   1024, Time =   0.01937869   0.02004199   0.02133094 s, AVG Performance =  3592.4571 Gflops
M N K =   8192   8192   1024, Time =   0.03458202   0.03522148   0.03578778 s, AVG Performance =  3634.1458 Gflops
M N K =  12288  12288   1024, Time =   0.07963402   0.08065668   0.08200268 s, AVG Performance =  3570.6899 Gflops
M N K =  16384  16384   1024, Time =   0.14197831   0.14302681   0.14371482 s, AVG Performance =  3579.7485 Gflops

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
M N K =    128    128   1024, Time =   0.00017715   0.00017846   0.00018320 s, AVG Performance =   175.1053 Gflops
M N K =    192    192   1024, Time =   0.00017818   0.00017953   0.00018125 s, AVG Performance =   391.6555 Gflops
M N K =    256    256   1024, Time =   0.00017306   0.00017422   0.00017510 s, AVG Performance =   717.4803 Gflops
M N K =    384    384   1024, Time =   0.00017715   0.00017909   0.00018086 s, AVG Performance =  1570.4009 Gflops
M N K =    512    512   1024, Time =   0.00023325   0.00023516   0.00024064 s, AVG Performance =  2126.2553 Gflops
M N K =    768    768   1024, Time =   0.00047104   0.00047684   0.00049328 s, AVG Performance =  2359.2899 Gflops
M N K =   1024   1024   1024, Time =   0.00088653   0.00088964   0.00089293 s, AVG Performance =  2248.1044 Gflops
M N K =   1536   1536   1024, Time =   0.00182842   0.00183811   0.00189235 s, AVG Performance =  2448.1642 Gflops
M N K =   2048   2048   1024, Time =   0.00308634   0.00309948   0.00312611 s, AVG Performance =  2581.0795 Gflops
M N K =   3072   3072   1024, Time =   0.00676845   0.00682515   0.00690278 s, AVG Performance =  2637.3064 Gflops
M N K =   4096   4096   1024, Time =   0.01213338   0.01217118   0.01221018 s, AVG Performance =  2629.1622 Gflops
M N K =   6144   6144   1024, Time =   0.02705715   0.02716590   0.02731930 s, AVG Performance =  2650.3815 Gflops
M N K =   8192   8192   1024, Time =   0.04823757   0.04869448   0.04899293 s, AVG Performance =  2628.6347 Gflops
M N K =  12288  12288   1024, Time =   0.10925565   0.10989172   0.11017831 s, AVG Performance =  2620.7616 Gflops
M N K =  16384  16384   1024, Time =   0.19456205   0.19479218   0.19503395 s, AVG Performance =  2628.4422 Gflops

Kernal = mySgemmV2Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00016896   0.00017198   0.00018739 s, AVG Performance =   181.7030 Gflops
M N K =    192    192   1024, Time =   0.00017085   0.00017199   0.00017306 s, AVG Performance =   408.8164 Gflops
M N K =    256    256   1024, Time =   0.00016653   0.00016727   0.00016794 s, AVG Performance =   747.3073 Gflops
M N K =    384    384   1024, Time =   0.00016896   0.00017153   0.00017808 s, AVG Performance =  1639.6281 Gflops
M N K =    512    512   1024, Time =   0.00023235   0.00023705   0.00024422 s, AVG Performance =  2109.2632 Gflops
M N K =    768    768   1024, Time =   0.00047613   0.00048119   0.00048621 s, AVG Performance =  2337.9364 Gflops
M N K =   1024   1024   1024, Time =   0.00088576   0.00089662   0.00095334 s, AVG Performance =  2230.6054 Gflops
M N K =   1536   1536   1024, Time =   0.00183162   0.00183594   0.00184115 s, AVG Performance =  2451.0658 Gflops
M N K =   2048   2048   1024, Time =   0.00305050   0.00308840   0.00311242 s, AVG Performance =  2590.3354 Gflops
M N K =   3072   3072   1024, Time =   0.00678899   0.00680044   0.00681827 s, AVG Performance =  2646.8870 Gflops
M N K =   4096   4096   1024, Time =   0.01213190   0.01216099   0.01221907 s, AVG Performance =  2631.3650 Gflops
M N K =   6144   6144   1024, Time =   0.02711347   0.02718573   0.02728537 s, AVG Performance =  2648.4482 Gflops
M N K =   8192   8192   1024, Time =   0.04817469   0.04853675   0.04890205 s, AVG Performance =  2637.1771 Gflops
M N K =  12288  12288   1024, Time =   0.10932796   0.10979367   0.11018509 s, AVG Performance =  2623.1020 Gflops
M N K =  16384  16384   1024, Time =   0.19380423   0.19445160   0.19493786 s, AVG Performance =  2633.0460 Gflops

Kernal = mySgemmV3Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00016550   0.00016648   0.00017267 s, AVG Performance =   187.7138 Gflops
M N K =    192    192   1024, Time =   0.00016486   0.00016632   0.00016768 s, AVG Performance =   422.7462 Gflops
M N K =    256    256   1024, Time =   0.00016048   0.00016135   0.00016346 s, AVG Performance =   774.7268 Gflops
M N K =    384    384   1024, Time =   0.00016573   0.00016633   0.00016746 s, AVG Performance =  1690.9522 Gflops
M N K =    512    512   1024, Time =   0.00021024   0.00021870   0.00024346 s, AVG Performance =  2286.2619 Gflops
M N K =    768    768   1024, Time =   0.00042291   0.00042510   0.00043008 s, AVG Performance =  2646.4112 Gflops
M N K =   1024   1024   1024, Time =   0.00079046   0.00079990   0.00084685 s, AVG Performance =  2500.3200 Gflops
M N K =   1536   1536   1024, Time =   0.00164608   0.00166811   0.00171264 s, AVG Performance =  2697.6658 Gflops
M N K =   2048   2048   1024, Time =   0.00280781   0.00282090   0.00287539 s, AVG Performance =  2835.9783 Gflops
M N K =   3072   3072   1024, Time =   0.00632886   0.00633596   0.00635786 s, AVG Performance =  2840.9264 Gflops
M N K =   4096   4096   1024, Time =   0.01113053   0.01119005   0.01138144 s, AVG Performance =  2859.6831 Gflops
M N K =   6144   6144   1024, Time =   0.02483898   0.02519184   0.02529459 s, AVG Performance =  2858.0684 Gflops
M N K =   8192   8192   1024, Time =   0.04444758   0.04485340   0.04520310 s, AVG Performance =  2853.7410 Gflops
M N K =  12288  12288   1024, Time =   0.10097037   0.10190669   0.10264525 s, AVG Performance =  2826.1146 Gflops
M N K =  16384  16384   1024, Time =   0.18014684   0.18080832   0.18168217 s, AVG Performance =  2831.7280 Gflops

Kernal = mySgemmV4Aligned
Max Error = 0.000046
M N K =    128    128   1024, Time =   0.00010298   0.00010474   0.00011162 s, AVG Performance =   298.3601 Gflops
M N K =    192    192   1024, Time =   0.00010298   0.00010612   0.00011674 s, AVG Performance =   662.5454 Gflops
M N K =    256    256   1024, Time =   0.00010128   0.00010302   0.00011242 s, AVG Performance =  1213.3472 Gflops
M N K =    384    384   1024, Time =   0.00010224   0.00010251   0.00010294 s, AVG Performance =  2743.6669 Gflops
M N K =    512    512   1024, Time =   0.00016765   0.00016865   0.00016925 s, AVG Performance =  2964.7831 Gflops
M N K =    768    768   1024, Time =   0.00033251   0.00033367   0.00033485 s, AVG Performance =  3371.6230 Gflops
M N K =   1024   1024   1024, Time =   0.00059856   0.00060229   0.00060688 s, AVG Performance =  3320.6353 Gflops
M N K =   1536   1536   1024, Time =   0.00125542   0.00125791   0.00126013 s, AVG Performance =  3577.3523 Gflops
M N K =   2048   2048   1024, Time =   0.00215331   0.00215750   0.00216986 s, AVG Performance =  3707.9885 Gflops
M N K =   3072   3072   1024, Time =   0.00479187   0.00479908   0.00481344 s, AVG Performance =  3750.7177 Gflops
M N K =   4096   4096   1024, Time =   0.00829338   0.00837960   0.00855654 s, AVG Performance =  3818.7996 Gflops
M N K =   6144   6144   1024, Time =   0.01874944   0.01917474   0.01933616 s, AVG Performance =  3754.9410 Gflops
M N K =   8192   8192   1024, Time =   0.03418010   0.03460126   0.03478992 s, AVG Performance =  3699.2868 Gflops
M N K =  12288  12288   1024, Time =   0.07723495   0.07907345   0.08032522 s, AVG Performance =  3642.1833 Gflops
M N K =  16384  16384   1024, Time =   0.13962752   0.14066606   0.14220209 s, AVG Performance =  3639.8262 Gflops
```

Running log (M = N = K):

```
sgemm.exe

Kernal = cublas
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00000810   0.00000904   0.00001472 s, AVG Performance =   432.2603 Gflops
M N K =    192    192    192, Time =   0.00001434   0.00001480   0.00001536 s, AVG Performance =   890.9760 Gflops
M N K =    256    256    256, Time =   0.00002458   0.00002494   0.00002560 s, AVG Performance =  1253.1278 Gflops
M N K =    384    384    384, Time =   0.00005293   0.00005401   0.00005939 s, AVG Performance =  1952.6621 Gflops
M N K =    512    512    512, Time =   0.00011354   0.00011621   0.00013107 s, AVG Performance =  2151.3149 Gflops
M N K =    768    768    768, Time =   0.00033382   0.00033791   0.00034186 s, AVG Performance =  2496.9637 Gflops
M N K =   1024   1024   1024, Time =   0.00081306   0.00081871   0.00082125 s, AVG Performance =  2442.8758 Gflops
M N K =   1536   1536   1536, Time =   0.00251475   0.00254030   0.00260877 s, AVG Performance =  2657.1623 Gflops
M N K =   2048   2048   2048, Time =   0.00564429   0.00566065   0.00567603 s, AVG Performance =  2826.5324 Gflops
M N K =   3072   3072   3072, Time =   0.01565139   0.01687993   0.01830864 s, AVG Performance =  3199.0654 Gflops
M N K =   4096   4096   4096, Time =   0.03473920   0.03559750   0.03739443 s, AVG Performance =  3595.7584 Gflops
M N K =   6144   6144   6144, Time =   0.12274150   0.12645217   0.12966502 s, AVG Performance =  3416.3114 Gflops
M N K =   8192   8192   8192, Time =   0.30159444   0.30417176   0.30665785 s, AVG Performance =  3366.5189 Gflops
M N K =  12288  12288  12288, Time =   0.91910207   0.92301505   0.92669439 s, AVG Performance =  3744.2510 Gflops
M N K =  16384  16384  16384, Time =   2.20295835   2.20827835   2.21915650 s, AVG Performance =  3709.6773 Gflops

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
M N K =    128    128    128, Time =   0.00002458   0.00002583   0.00003542 s, AVG Performance =   151.2268 Gflops
M N K =    192    192    192, Time =   0.00003472   0.00003539   0.00003994 s, AVG Performance =   372.5021 Gflops
M N K =    256    256    256, Time =   0.00004403   0.00004480   0.00004560 s, AVG Performance =   697.5446 Gflops
M N K =    384    384    384, Time =   0.00007600   0.00007789   0.00008067 s, AVG Performance =  1353.9966 Gflops
M N K =    512    512    512, Time =   0.00012966   0.00013039   0.00013162 s, AVG Performance =  1917.3191 Gflops
M N K =    768    768    768, Time =   0.00037942   0.00038374   0.00038874 s, AVG Performance =  2198.7498 Gflops
M N K =   1024   1024   1024, Time =   0.00094106   0.00094315   0.00094714 s, AVG Performance =  2120.5490 Gflops
M N K =   1536   1536   1536, Time =   0.00290918   0.00292454   0.00299584 s, AVG Performance =  2308.0547 Gflops
M N K =   2048   2048   2048, Time =   0.00603850   0.00643881   0.00650342 s, AVG Performance =  2484.9301 Gflops
M N K =   3072   3072   3072, Time =   0.02013798   0.02015975   0.02018611 s, AVG Performance =  2678.6042 Gflops
M N K =   4096   4096   4096, Time =   0.04789536   0.04840777   0.04866825 s, AVG Performance =  2644.2034 Gflops
M N K =   6144   6144   6144, Time =   0.16224441   0.16318319   0.16475034 s, AVG Performance =  2647.3316 Gflops
M N K =   8192   8192   8192, Time =   0.38548636   0.38682916   0.39031807 s, AVG Performance =  2647.1634 Gflops
M N K =  12288  12288  12288, Time =   1.30809653   1.31411648   1.32363975 s, AVG Performance =  2629.9039 Gflops
M N K =  16384  16384  16384, Time =   3.09292340   3.11861415   3.13086724 s, AVG Performance =  2626.8078 Gflops

Kernal = mySgemmV2Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00002355   0.00002572   0.00003277 s, AVG Performance =   151.9043 Gflops
M N K =    192    192    192, Time =   0.00003165   0.00003500   0.00005734 s, AVG Performance =   376.6225 Gflops
M N K =    256    256    256, Time =   0.00004096   0.00004111   0.00004173 s, AVG Performance =   760.2075 Gflops
M N K =    384    384    384, Time =   0.00006954   0.00007137   0.00007421 s, AVG Performance =  1477.7825 Gflops
M N K =    512    512    512, Time =   0.00012186   0.00012466   0.00012698 s, AVG Performance =  2005.4162 Gflops
M N K =    768    768    768, Time =   0.00036227   0.00036650   0.00036966 s, AVG Performance =  2302.1878 Gflops
M N K =   1024   1024   1024, Time =   0.00088998   0.00091328   0.00096000 s, AVG Performance =  2189.9089 Gflops
M N K =   1536   1536   1536, Time =   0.00278467   0.00279072   0.00279418 s, AVG Performance =  2418.7334 Gflops
M N K =   2048   2048   2048, Time =   0.00615626   0.00616340   0.00617062 s, AVG Performance =  2595.9718 Gflops
M N K =   3072   3072   3072, Time =   0.02031718   0.02041148   0.02065306 s, AVG Performance =  2645.5707 Gflops
M N K =   4096   4096   4096, Time =   0.04808499   0.04863715   0.04894198 s, AVG Performance =  2631.7330 Gflops
M N K =   6144   6144   6144, Time =   0.16356659   0.16454075   0.16566989 s, AVG Performance =  2625.4894 Gflops
M N K =   8192   8192   8192, Time =   0.38789016   0.39004070   0.39194059 s, AVG Performance =  2625.3670 Gflops
M N K =  12288  12288  12288, Time =   1.32070506   1.32592825   1.33199239 s, AVG Performance =  2606.4759 Gflops
M N K =  16384  16384  16384, Time =   3.12807369   3.13660860   3.14892960 s, AVG Performance =  2611.7380 Gflops

Kernal = mySgemmV3Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00002662   0.00002846   0.00003046 s, AVG Performance =   137.2348 Gflops
M N K =    192    192    192, Time =   0.00002922   0.00003233   0.00004157 s, AVG Performance =   407.7871 Gflops
M N K =    256    256    256, Time =   0.00003754   0.00003785   0.00003843 s, AVG Performance =   825.6362 Gflops
M N K =    384    384    384, Time =   0.00006640   0.00006707   0.00006803 s, AVG Performance =  1572.5457 Gflops
M N K =    512    512    512, Time =   0.00011264   0.00011400   0.00012112 s, AVG Performance =  2192.9824 Gflops
M N K =    768    768    768, Time =   0.00032518   0.00032938   0.00033485 s, AVG Performance =  2561.6123 Gflops
M N K =   1024   1024   1024, Time =   0.00080691   0.00081574   0.00086835 s, AVG Performance =  2451.7688 Gflops
M N K =   1536   1536   1536, Time =   0.00252474   0.00254751   0.00260915 s, AVG Performance =  2649.6457 Gflops
M N K =   2048   2048   2048, Time =   0.00568934   0.00569828   0.00572061 s, AVG Performance =  2807.8672 Gflops
M N K =   3072   3072   3072, Time =   0.01865494   0.01880193   0.01900285 s, AVG Performance =  2872.0452 Gflops
M N K =   4096   4096   4096, Time =   0.04518519   0.04533109   0.04564579 s, AVG Performance =  2823.6691 Gflops
M N K =   6144   6144   6144, Time =   0.15247642   0.15419533   0.15553536 s, AVG Performance =  2801.6413 Gflops
M N K =   8192   8192   8192, Time =   0.36530033   0.36760603   0.36902574 s, AVG Performance =  2785.5909 Gflops
M N K =  12288  12288  12288, Time =   1.24510872   1.25124462   1.25907767 s, AVG Performance =  2762.0498 Gflops
M N K =  16384  16384  16384, Time =   2.94744158   2.96043472   2.96953130 s, AVG Performance =  2767.1612 Gflops

Kernal = mySgemmV4Aligned
Max Error = 0.000046
M N K =    128    128    128, Time =   0.00001533   0.00001756   0.00002662 s, AVG Performance =   222.5124 Gflops
M N K =    192    192    192, Time =   0.00002048   0.00002370   0.00003277 s, AVG Performance =   556.2135 Gflops
M N K =    256    256    256, Time =   0.00002662   0.00002740   0.00002765 s, AVG Performance =  1140.7108 Gflops
M N K =    384    384    384, Time =   0.00004198   0.00004401   0.00004502 s, AVG Performance =  2396.4942 Gflops
M N K =    512    512    512, Time =   0.00008563   0.00008636   0.00008765 s, AVG Performance =  2894.6979 Gflops
M N K =    768    768    768, Time =   0.00025251   0.00025383   0.00025498 s, AVG Performance =  3324.0699 Gflops
M N K =   1024   1024   1024, Time =   0.00059270   0.00059786   0.00060259 s, AVG Performance =  3345.2513 Gflops
M N K =   1536   1536   1536, Time =   0.00187037   0.00187631   0.00188314 s, AVG Performance =  3597.4858 Gflops
M N K =   2048   2048   2048, Time =   0.00423424   0.00424690   0.00425779 s, AVG Performance =  3767.4518 Gflops
M N K =   3072   3072   3072, Time =   0.01390493   0.01392482   0.01397341 s, AVG Performance =  3877.9669 Gflops
M N K =   4096   4096   4096, Time =   0.03352470   0.03471167   0.03530854 s, AVG Performance =  3687.5206 Gflops
M N K =   6144   6144   6144, Time =   0.11934720   0.12024057   0.12203779 s, AVG Performance =  3592.7972 Gflops
M N K =   8192   8192   8192, Time =   0.28308991   0.28725496   0.29020417 s, AVG Performance =  3564.7774 Gflops
M N K =  12288  12288  12288, Time =   0.97488689   0.98353222   0.98975438 s, AVG Performance =  3513.8656 Gflops
M N K =  16384  16384  16384, Time =   2.33891344   2.36202195   2.37871718 s, AVG Performance =  3468.2150 Gflops
```
