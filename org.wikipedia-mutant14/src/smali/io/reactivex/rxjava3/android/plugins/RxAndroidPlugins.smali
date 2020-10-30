.class public final Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Function<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 107
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Scheduler;"
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p0, :cond_0

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scheduler Callable returned null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Scheduler;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p0, :cond_0

    return-object p0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 91
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Scheduler;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 37
    sget-object v0, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    .line 39
    invoke-static {p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMainThreadScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    if-eqz p0, :cond_1

    .line 52
    sget-object v0, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 56
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
