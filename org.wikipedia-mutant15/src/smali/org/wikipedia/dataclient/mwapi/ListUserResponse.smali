.class public Lorg/wikipedia/dataclient/mwapi/ListUserResponse;
.super Ljava/lang/Object;
.source "ListUserResponse.java"


# instance fields
.field private cancreate:Z

.field private cancreateerror:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwServiceError;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private missing:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private userid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCreate()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->cancreate:Z

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->cancreateerror:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->cancreateerror:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
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

    .line 41
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/collection/ArraySet;

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->groups:Ljava/util/List;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isBlocked()Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
