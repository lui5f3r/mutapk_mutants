.class public Lorg/wikipedia/page/shareafact/SharedImageCleanupTask;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "SharedImageCleanupTask.java"


# static fields
.field private static final RUN_INTERVAL_MILLI:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/wikipedia/page/shareafact/SharedImageCleanupTask;->RUN_INTERVAL_MILLI:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/wikipedia/recurring/RecurringTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "shared-image-cleanup"

    return-object v0
.end method

.method protected run(Ljava/util/Date;)V
    .locals 2

    .line 25
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/ShareUtil;->getShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "share"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/wikipedia/util/FileUtil;->deleteRecursively(Ljava/io/File;)V

    return-void
.end method

.method protected shouldRun(Ljava/util/Date;)Z
    .locals 4

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/wikipedia/page/shareafact/SharedImageCleanupTask;->RUN_INTERVAL_MILLI:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
