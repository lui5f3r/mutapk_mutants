.class abstract Lorg/wikipedia/analytics/TimedFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "TimedFunnel.java"


# instance fields
.field private pauseTime:J

.field private startTime:J


# direct methods
.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/wikipedia/analytics/TimedFunnel;->startTime:J

    return-void
.end method

.method private getDuration()J
    .locals 4

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/wikipedia/analytics/TimedFunnel;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getDurationSeconds()J
    .locals 3

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lorg/wikipedia/analytics/TimedFunnel;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected getDurationFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "time_spent"

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/analytics/TimedFunnel;->pauseTime:J

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/analytics/TimedFunnel;->getDurationFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/analytics/TimedFunnel;->getDurationSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected resetDuration()V
    .locals 2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/analytics/TimedFunnel;->startTime:J

    return-void
.end method

.method public resume()V
    .locals 8

    .line 35
    iget-wide v0, p0, Lorg/wikipedia/analytics/TimedFunnel;->pauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 36
    iget-wide v0, p0, Lorg/wikipedia/analytics/TimedFunnel;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/wikipedia/analytics/TimedFunnel;->pauseTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/wikipedia/analytics/TimedFunnel;->startTime:J

    .line 38
    :cond_0
    iput-wide v2, p0, Lorg/wikipedia/analytics/TimedFunnel;->pauseTime:J

    return-void
.end method
