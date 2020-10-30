.class public abstract Lorg/wikipedia/recurring/RecurringTask;
.super Ljava/lang/Object;
.source "RecurringTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLastRunDate()Ljava/util/Date;
    .locals 3

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/wikipedia/recurring/RecurringTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->getLastRunTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method protected getAbsoluteTime()J
    .locals 2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract run(Ljava/util/Date;)V
.end method

.method public runIfNecessary()V
    .locals 4

    .line 20
    invoke-direct {p0}, Lorg/wikipedia/recurring/RecurringTask;->getLastRunDate()Ljava/util/Date;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/wikipedia/recurring/RecurringTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Last execution was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v0}, Lorg/wikipedia/recurring/RecurringTask;->shouldRun(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing recurring task, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/recurring/RecurringTask;->run(Ljava/util/Date;)V

    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/recurring/RecurringTask;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/recurring/RecurringTask;->getAbsoluteTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/Prefs;->setLastRunTime(Ljava/lang/String;J)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping recurring task, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected abstract shouldRun(Ljava/util/Date;)Z
.end method
