.class public Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field private descriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Label;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Label;",
            ">;"
        }
    .end annotation
.end field

.field private lastrevid:J

.field private missing:Ljava/lang/String;

.field private sitelinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public descriptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Label;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastRevId()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->lastrevid:J

    return-wide v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMissing()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->id:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->missing:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public labels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$Label;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public sitelinks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
