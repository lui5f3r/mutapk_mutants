.class public Lorg/wikipedia/recurring/DailyEventTask;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "DailyEventTask.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/wikipedia/recurring/RecurringTask;-><init>()V

    const v0, 0x7f100246

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/recurring/DailyEventTask;->name:Ljava/lang/String;

    return-void
.end method

.method private isDailyEventDue(Ljava/util/Date;)Z
    .locals 4

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/recurring/DailyEventTask;->timeSinceLastDailyEvent(Ljava/util/Date;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private logDailyEventReport()V
    .locals 2

    .line 42
    new-instance v0, Lorg/wikipedia/analytics/DailyStatsFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/DailyStatsFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/DailyStatsFunnel;->log(Landroid/content/Context;)V

    return-void
.end method

.method private onDailyEvent()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/recurring/DailyEventTask;->logDailyEventReport()V

    return-void
.end method

.method private timeSinceLastDailyEvent(Ljava/util/Date;)J
    .locals 4

    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/recurring/RecurringTask;->getAbsoluteTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    .line 50
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/recurring/DailyEventTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected run(Ljava/util/Date;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/wikipedia/recurring/DailyEventTask;->onDailyEvent()V

    return-void
.end method

.method protected shouldRun(Ljava/util/Date;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/wikipedia/recurring/DailyEventTask;->isDailyEventDue(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method
