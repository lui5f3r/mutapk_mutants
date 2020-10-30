.class public Lorg/wikipedia/recurring/RecurringTasksExecutor;
.super Ljava/lang/Object;
.source "RecurringTasksExecutor.java"


# instance fields
.field private final app:Lorg/wikipedia/WikipediaApp;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/wikipedia/recurring/RecurringTasksExecutor;->app:Lorg/wikipedia/WikipediaApp;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$RecurringTasksExecutor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/wikipedia/recurring/RecurringTask;

    .line 21
    new-instance v2, Lorg/wikipedia/settings/RemoteConfigRefreshTask;

    invoke-direct {v2}, Lorg/wikipedia/settings/RemoteConfigRefreshTask;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/wikipedia/page/shareafact/SharedImageCleanupTask;

    invoke-direct {v2}, Lorg/wikipedia/page/shareafact/SharedImageCleanupTask;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/wikipedia/recurring/DailyEventTask;

    iget-object v4, p0, Lorg/wikipedia/recurring/RecurringTasksExecutor;->app:Lorg/wikipedia/WikipediaApp;

    invoke-direct {v2, v4}, Lorg/wikipedia/recurring/DailyEventTask;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_0

    .line 27
    aget-object v2, v1, v3

    .line 28
    invoke-virtual {v2}, Lorg/wikipedia/recurring/RecurringTask;->runIfNecessary()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isAlphaRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;

    iget-object v1, p0, Lorg/wikipedia/recurring/RecurringTasksExecutor;->app:Lorg/wikipedia/WikipediaApp;

    invoke-direct {v0, v1}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/wikipedia/recurring/RecurringTask;->runIfNecessary()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 20
    new-instance v0, Lorg/wikipedia/recurring/-$$Lambda$RecurringTasksExecutor$nMmpDLe5wFLp9HFXSt9jHoFzQ0g;

    invoke-direct {v0, p0}, Lorg/wikipedia/recurring/-$$Lambda$RecurringTasksExecutor$nMmpDLe5wFLp9HFXSt9jHoFzQ0g;-><init>(Lorg/wikipedia/recurring/RecurringTasksExecutor;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 33
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
