.class public Lorg/wikipedia/dataclient/wikidata/Entities;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "Entities.java"

# interfaces
.implements Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;,
        Lorg/wikipedia/dataclient/wikidata/Entities$Label;,
        Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
    }
.end annotation


# instance fields
.field private entities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private success:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public entities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Entity;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities;->entities:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFirst()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities;->entities:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    return-object v0
.end method

.method public postProcess()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/wikidata/Entities;->getFirst()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/wikidata/Entities;->getFirst()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->isMissing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The requested entity was not found."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
