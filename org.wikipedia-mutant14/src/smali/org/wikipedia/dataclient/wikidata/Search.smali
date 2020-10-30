.class public Lorg/wikipedia/dataclient/wikidata/Search;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;
    }
.end annotation


# instance fields
.field private search:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private success:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public results()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Search;->search:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
