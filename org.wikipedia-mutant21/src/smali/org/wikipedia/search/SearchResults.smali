.class public Lorg/wikipedia/search/SearchResults;
.super Ljava/lang/Object;
.source "SearchResults.java"


# instance fields
.field private continuation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResults;->results:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lorg/wikipedia/search/SearchResults;->continuation:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/wikipedia/search/SearchResults;->results:Ljava/util/List;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/wikipedia/search/SearchResults;->continuation:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    sget-object v1, Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 54
    new-instance v2, Lorg/wikipedia/search/SearchResult;

    invoke-direct {v2, v1, p2}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    iput-object v0, p0, Lorg/wikipedia/search/SearchResults;->results:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lorg/wikipedia/search/SearchResults;->continuation:Ljava/util/Map;

    .line 58
    iput-object p4, p0, Lorg/wikipedia/search/SearchResults;->suggestion:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$new$0(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getContinuation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/wikipedia/search/SearchResults;->continuation:Ljava/util/Map;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/wikipedia/search/SearchResults;->results:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/wikipedia/search/SearchResults;->suggestion:Ljava/lang/String;

    return-object v0
.end method
