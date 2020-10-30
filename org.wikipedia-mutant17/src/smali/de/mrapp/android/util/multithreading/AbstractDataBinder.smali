.class public abstract Lde/mrapp/android/util/multithreading/AbstractDataBinder;
.super Landroid/os/Handler;
.source "AbstractDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;,
        Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "KeyType:",
        "Ljava/lang/Object;",
        "ViewType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final cache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "TKeyType;TDataType;>;"
        }
    .end annotation
.end field

.field private final cancelLock:Ljava/lang/Object;

.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final listeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener<",
            "TDataType;TKeyType;TViewType;TParamType;>;>;"
        }
    .end annotation
.end field

.field private final logger:Lde/mrapp/android/util/logging/Logger;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private useCache:Z

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TViewType;TKeyType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/collection/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/collection/LruCache<",
            "TKeyType;TDataType;>;)V"
        }
    .end annotation

    .line 518
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/collection/LruCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/collection/LruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Landroidx/collection/LruCache<",
            "TKeyType;TDataType;>;)V"
        }
    .end annotation

    .line 537
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 538
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The executor service may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cache may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->context:Landroid/content/Context;

    .line 542
    new-instance p1, Lde/mrapp/android/util/logging/Logger;

    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    invoke-direct {p1, v0}, Lde/mrapp/android/util/logging/Logger;-><init>(Lde/mrapp/android/util/logging/LogLevel;)V

    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    .line 543
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    .line 544
    iput-object p3, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    .line 545
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->views:Ljava/util/Map;

    .line 546
    iput-object p2, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 547
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cancelLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 548
    iput-boolean p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->canceled:Z

    const/4 p1, 0x1

    .line 549
    iput-boolean p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->useCache:Z

    return-void
.end method

.method static synthetic access$200(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->notifyOnLoad(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->loadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private cacheData(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TDataType;)V"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-boolean v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->useCache:Z

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getCachedData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TDataType;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private loadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task<",
            "TDataType;TKeyType;TViewType;TParamType;>;)TDataType;"
        }
    .end annotation

    .line 386
    :try_start_0
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$100(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cacheData(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    :cond_0
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded data with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 395
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while loading data with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lde/mrapp/android/util/logging/Logger;->logError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadDataAsynchronously(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task<",
            "TDataType;TKeyType;TViewType;TParamType;>;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lde/mrapp/android/util/multithreading/AbstractDataBinder$1;

    invoke-direct {v1, p0, p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$1;-><init>(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final varargs notifyOnFinished(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TDataType;TViewType;[TParamType;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 294
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 295
    invoke-interface/range {v2 .. v7}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;->onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final varargs notifyOnLoad(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;[TParamType;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 266
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;

    .line 267
    invoke-interface {v2, p0, p1, p2}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;->onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private setCanceled(Z)V
    .locals 1

    .line 408
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    iput-boolean p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->canceled:Z

    .line 410
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final addListener(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener<",
            "TDataType;TKeyType;TViewType;TParamType;>;)V"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearCache()V
    .locals 4

    .line 746
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 748
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Cleared cache"

    invoke-virtual {v1, v2, v3}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 749
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected varargs abstract doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;[TParamType;)TDataType;"
        }
    .end annotation
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 560
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 755
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;

    .line 757
    invoke-virtual {p0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->isCanceled()Z

    move-result v0

    const-string v1, "Data with key "

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->views:Ljava/util/Map;

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$500(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$600(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 762
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$500(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$300(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$100(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)[Ljava/lang/Object;

    move-result-object v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V

    .line 763
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$300(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$500(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$100(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->notifyOnFinished(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not displayed. View has been recycled"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-virtual {v0, v2, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-static {p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not displayed. Loading data has been canceled"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-virtual {v0, v2, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final isCached(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .line 707
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The key may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 711
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isCanceled()Z
    .locals 2

    .line 692
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-boolean v1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->canceled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 694
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final varargs load(Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TViewType;Z[TParamType;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 650
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The key may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p4, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 653
    invoke-direct {p0, v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->setCanceled(Z)V

    .line 654
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->views:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-direct {p0, p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->getCachedData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 657
    invoke-virtual {p0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, v0

    move-object v6, p4

    .line 659
    invoke-virtual/range {v1 .. v6}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V

    .line 660
    invoke-direct {p0, p1, v0, p2, p4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->notifyOnFinished(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 661
    iget-object p2, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loaded data with key "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from cache"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0, p2, p4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->onPreExecute(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 664
    new-instance v0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;

    invoke-direct {v0, p2, p1, p4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 667
    invoke-direct {p0, v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->loadDataAsynchronously(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-direct {p0, v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->loadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 670
    invoke-virtual/range {v1 .. v6}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V

    .line 671
    invoke-direct {p0, p1, p3, p2, p4}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->notifyOnFinished(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final varargs load(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TViewType;[TParamType;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x1

    .line 628
    invoke-virtual {p0, p1, p2, v0, p3}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->load(Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs abstract onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;TDataType;J[TParamType;)V"
        }
    .end annotation
.end method

.method protected varargs abstract onPreExecute(Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;[TParamType;)V"
        }
    .end annotation
.end method

.method public final setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/logging/Logger;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method
