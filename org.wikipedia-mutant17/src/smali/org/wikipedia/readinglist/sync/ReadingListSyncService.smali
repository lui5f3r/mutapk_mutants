.class public Lorg/wikipedia/readinglist/sync/ReadingListSyncService;
.super Landroid/app/Service;
.source "ReadingListSyncService.java"


# static fields
.field private static SYNC_ADAPTER:Landroid/content/AbstractThreadedSyncAdapter;

.field private static final SYNC_ADAPTER_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncService;->SYNC_ADAPTER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 28
    sget-object p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncService;->SYNC_ADAPTER:Landroid/content/AbstractThreadedSyncAdapter;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    sget-object v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncService;->SYNC_ADAPTER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncService;->SYNC_ADAPTER:Landroid/content/AbstractThreadedSyncAdapter;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncService;->SYNC_ADAPTER:Landroid/content/AbstractThreadedSyncAdapter;

    .line 22
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
