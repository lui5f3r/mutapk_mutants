.class public Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityReceiver.java"


# static fields
.field private static ONLINE_CHECK_THRESHOLD_MILLIS:J


# instance fields
.field private lastCheckedMillis:J

.field private online:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->ONLINE_CHECK_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->online:Z

    return-void
.end method

.method private getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method private getNetworkInfoFromBroadcast(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/net/ConnectivityManagerCompat;->getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method private updateOnlineState()V
    .locals 1

    .line 41
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->online:Z

    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->lastCheckedMillis:J

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->ONLINE_CHECK_THRESHOLD_MILLIS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 24
    invoke-direct {p0}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->updateOnlineState()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->lastCheckedMillis:J

    .line 27
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->online:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->getNetworkInfoFromBroadcast(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p1

    new-instance p2, Lorg/wikipedia/events/NetworkConnectEvent;

    invoke-direct {p2}, Lorg/wikipedia/events/NetworkConnectEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    .line 36
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->updateOnlineState()V

    :cond_1
    return-void
.end method
