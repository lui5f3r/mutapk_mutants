.class public Lcom/microsoft/appcenter/utils/context/UserIdContext;
.super Ljava/lang/Object;
.source "UserIdContext.java"


# static fields
.field private static sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;


# instance fields
.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/utils/context/UserIdContext;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;

    .line 61
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/context/UserIdContext;->sInstance:Lcom/microsoft/appcenter/utils/context/UserIdContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getUserId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/UserIdContext;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
