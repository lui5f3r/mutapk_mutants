.class public final Lleakcanary/AndroidLeakFixes$Companion;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/AndroidLeakFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidLeakFixes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLeakFixes.kt\nleakcanary/AndroidLeakFixes$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,465:1\n1642#2,2:466\n9654#3,9:468\n11416#3,2:477\n9663#3:479\n*E\n*S KotlinDebug\n*F\n+ 1 AndroidLeakFixes.kt\nleakcanary/AndroidLeakFixes$Companion\n*L\n391#1,2:466\n434#1,9:468\n434#1,2:477\n434#1:479\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lleakcanary/AndroidLeakFixes$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findAllHandlerThreads(Lleakcanary/AndroidLeakFixes$Companion;)Ljava/util/List;
    .locals 0

    .line 381
    invoke-direct {p0}, Lleakcanary/AndroidLeakFixes$Companion;->findAllHandlerThreads()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onEachIdle(Lleakcanary/AndroidLeakFixes$Companion;Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Lleakcanary/AndroidLeakFixes$Companion;->onEachIdle(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic applyFixes$default(Lleakcanary/AndroidLeakFixes$Companion;Landroid/app/Application;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 388
    const-class p2, Lleakcanary/AndroidLeakFixes;

    invoke-static {p2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    const-string p3, "EnumSet.allOf(AndroidLeakFixes::class.java)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lleakcanary/AndroidLeakFixes$Companion;->applyFixes(Landroid/app/Application;Ljava/util/Set;)V

    return-void
.end method

.method private final findAllHandlerThreads()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 429
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    const-string v2, "rootGroup.parent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Thread;

    :goto_1
    const/4 v3, 0x1

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_1

    .line 432
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Thread;

    goto :goto_1

    .line 468
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 434
    instance-of v6, v5, Landroid/os/HandlerThread;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/os/HandlerThread;

    goto :goto_3

    :cond_2
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_3

    .line 476
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 428
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final onEachIdle(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 412
    :try_start_0
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    invoke-direct {v0, p2}, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final applyFixes(Landroid/app/Application;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Set<",
            "+",
            "Lleakcanary/AndroidLeakFixes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fixes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lleakcanary/AndroidLeakFixes$Companion;->checkMainThread$plumber_android_release()V

    .line 466
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleakcanary/AndroidLeakFixes;

    .line 391
    invoke-virtual {v0, p1}, Lleakcanary/AndroidLeakFixes;->apply(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final checkMainThread$plumber_android_release()V
    .locals 3

    .line 457
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should be called from the main thread, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onActivityDestroyed$plumber_android_release(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Activity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$onActivityDestroyed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onActivityDestroyed$1;

    invoke-direct {v0, p0, p2}, Lleakcanary/AndroidLeakFixes$Companion$onActivityDestroyed$1;-><init>(Lleakcanary/AndroidLeakFixes$Companion;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
