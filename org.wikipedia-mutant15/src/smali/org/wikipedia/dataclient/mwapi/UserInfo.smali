.class public Lorg/wikipedia/dataclient/mwapi/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private blockedby:Ljava/lang/String;

.field private blockedtimestamp:Ljava/lang/String;

.field private blockexpiry:Ljava/lang/String;

.field private blockid:I

.field private blockreason:Ljava/lang/String;

.field private editcount:I

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private latestcontrib:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditCount()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editcount:I

    return v0
.end method

.method public getGroups()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/collection/ArraySet;

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLatestContrib()Ljava/util/Date;
    .locals 3

    .line 43
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 44
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->latestcontrib:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->latestcontrib:Ljava/lang/String;

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public id()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    return v0
.end method

.method public isBlocked()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->blockexpiry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 59
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 60
    iget-object v2, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->blockexpiry:Ljava/lang/String;

    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    return v1
.end method
