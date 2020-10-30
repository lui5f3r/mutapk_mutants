.class public Lorg/wikipedia/dataclient/wikidata/Claims;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;,
        Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;,
        Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;,
        Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;,
        Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;,
        Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;,
        Lorg/wikipedia/dataclient/wikidata/Claims$Claim;
    }
.end annotation


# instance fields
.field private claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/wikidata/Claims$Claim;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public claims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/wikidata/Claims$Claim;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims;->claims:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
