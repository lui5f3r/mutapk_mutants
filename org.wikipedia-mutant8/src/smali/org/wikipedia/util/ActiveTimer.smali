.class public Lorg/wikipedia/util/ActiveTimer;
.super Ljava/lang/Object;
.source "ActiveTimer.java"


# instance fields
.field private pauseMillis:J

.field private startMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/util/ActiveTimer;->reset()V

    return-void
.end method


# virtual methods
.method public getElapsedSec()I
    .locals 5

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public pause()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    return-void
.end method

.method public reset()V
    .locals 2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 15
    iput-wide v0, p0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    return-void
.end method

.method public resume()V
    .locals 6

    .line 23
    iget-wide v0, p0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    return-void
.end method
