.class public final Lkotlinx/coroutines/internal/MainDispatcherLoader;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n1835#2,24:133\n*E\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n38#1,24:133\n*E\n"
.end annotation


# static fields
.field private static final FAST_SERVICE_LOADER_ENABLED:Z

.field public static final dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;-><init>()V

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    .line 19
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    .line 22
    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;->loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 7

    const/4 v0, 0x0

    .line 26
    :try_start_0
    sget-boolean v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/FastServiceLoader;->loadMainDispatcherFactory$kotlinx_coroutines_core()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, L$$ServiceLoaderMethods;->$load$kotlinx$coroutines$internal$MainDispatcherLoader$loadMainDispatcher$-159772$$0()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 1845
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1846
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    goto :goto_1

    .line 1847
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1848
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 1849
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    .line 1851
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1852
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v3, v5

    move v4, v6

    .line 1857
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1835
    :goto_1
    check-cast v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v3, :cond_5

    .line 38
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/MainDispatchersKt;->tryCreateDispatcher(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v0, v1, v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const/4 v2, 0x2

    .line 42
    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    move-result-object v1

    :goto_2
    return-object v1
.end method