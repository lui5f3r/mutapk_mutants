.class public abstract Lorg/wikipedia/dataclient/mwapi/MwResponse;
.super Lorg/wikipedia/model/BaseModel;
.source "MwResponse.java"

# interfaces
.implements Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwServiceError;",
            ">;"
        }
    .end annotation
.end field

.field private servedBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "servedby"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 4

    .line 19
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 22
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "blocked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwResponse;->errors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    throw v0

    :cond_2
    return-void
.end method
