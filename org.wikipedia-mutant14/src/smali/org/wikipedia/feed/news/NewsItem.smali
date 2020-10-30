.class public final Lorg/wikipedia/feed/news/NewsItem;
.super Ljava/lang/Object;
.source "NewsItem.java"


# instance fields
.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private story:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/news/NewsItem;->links:Ljava/util/List;

    return-void
.end method

.method private getFirstImageUri(Ljava/util/List;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method featureImage()Landroid/net/Uri;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/feed/news/NewsItem;->links()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/news/NewsItem;->getFirstImageUri(Ljava/util/List;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method linkCards(Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsLinkCard;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/feed/news/NewsItem;->links()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Lorg/wikipedia/feed/news/NewsLinkCard;

    invoke-direct {v3, v2, p1}, Lorg/wikipedia/feed/news/NewsLinkCard;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public links()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItem;->links:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method story()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItem;->story:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumb()Landroid/net/Uri;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/feed/news/NewsItem;->links()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/news/NewsItem;->getFirstImageUri(Ljava/util/List;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x140

    .line 46
    invoke-static {v0, v1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForSize(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
