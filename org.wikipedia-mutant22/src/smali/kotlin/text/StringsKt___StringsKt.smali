.class Lkotlin/text/StringsKt___StringsKt;
.super Lkotlin/text/StringsKt___StringsJvmKt;
.source "_Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2361:1\n95#1,2:2362\n173#1,5:2364\n461#1,5:2370\n461#1,5:2375\n421#1:2380\n1138#1,2:2381\n422#1,2:2383\n1140#1:2385\n424#1:2386\n421#1:2387\n1138#1,2:2388\n422#1,2:2390\n1140#1:2392\n424#1:2393\n1138#1,3:2394\n451#1,2:2397\n451#1,2:2399\n709#1,4:2401\n678#1,4:2405\n694#1,4:2409\n741#1,4:2413\n841#1,5:2417\n882#1,3:2422\n885#1,3:2432\n900#1,3:2435\n903#1,3:2445\n1000#1,3:2462\n970#1,4:2465\n959#1:2469\n1138#1,2:2470\n1140#1:2473\n960#1:2474\n1138#1,3:2475\n991#1:2478\n1129#1:2479\n1130#1:2481\n992#1:2482\n1129#1,2:2483\n1161#1,14:2485\n1398#1,14:2499\n1138#1,3:2513\n1847#1,2:2516\n1849#1,6:2519\n1871#1,2:2525\n1873#1,6:2528\n1894#1,3:2534\n1897#1,5:2538\n1918#1,3:2543\n1921#1,5:2547\n2306#1,6:2552\n2336#1,7:2558\n1#2:2369\n1#2:2472\n1#2:2480\n1#2:2518\n1#2:2527\n1#2:2537\n1#2:2546\n355#3,7:2425\n355#3,7:2438\n355#3,7:2448\n355#3,7:2455\n*E\n*S KotlinDebug\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n52#1,2:2362\n62#1,5:2364\n379#1,5:2370\n388#1,5:2375\n399#1:2380\n399#1,2:2381\n399#1,2:2383\n399#1:2385\n399#1:2386\n410#1:2387\n410#1,2:2388\n410#1,2:2390\n410#1:2392\n410#1:2393\n421#1,3:2394\n433#1,2:2397\n442#1,2:2399\n636#1,4:2401\n651#1,4:2405\n665#1,4:2409\n728#1,4:2413\n801#1,5:2417\n857#1,3:2422\n857#1,3:2432\n870#1,3:2435\n870#1,3:2445\n929#1,3:2462\n939#1,4:2465\n949#1:2469\n949#1,2:2470\n949#1:2473\n949#1:2474\n959#1,3:2475\n983#1:2478\n983#1:2479\n983#1:2481\n983#1:2482\n991#1,2:2483\n1151#1,14:2485\n1388#1,14:2499\n1651#1,3:2513\n1942#1,2:2516\n1942#1,6:2519\n1960#1,2:2525\n1960#1,6:2528\n1967#1,3:2534\n1967#1,5:2538\n1974#1,3:2543\n1974#1,5:2547\n2295#1,6:2552\n2323#1,7:2558\n949#1:2472\n983#1:2480\n1942#1:2518\n1960#1:2527\n1967#1:2537\n1974#1:2546\n857#1,7:2425\n870#1,7:2438\n884#1,7:2448\n902#1,7:2455\n*E\n"
.end annotation


# direct methods
.method public static take(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$take"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 525
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
