.class public Lorg/wikipedia/feed/news/NewsListCard;
.super Lorg/wikipedia/feed/model/ListCard;
.source "NewsListCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/model/ListCard<",
        "Lorg/wikipedia/feed/news/NewsItemCard;",
        ">;"
    }
.end annotation


# instance fields
.field private date:Lorg/wikipedia/feed/model/UtcDate;


# direct methods
.method public constructor <init>(Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItem;",
            ">;I",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-static {p1, p3}, Lorg/wikipedia/feed/news/NewsListCard;->toItemCards(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/feed/model/ListCard;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 22
    new-instance p1, Lorg/wikipedia/feed/model/UtcDate;

    invoke-direct {p1, p2}, Lorg/wikipedia/feed/model/UtcDate;-><init>(I)V

    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsListCard;->date:Lorg/wikipedia/feed/model/UtcDate;

    return-void
.end method

.method static toItemCards(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItem;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItemCard;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/news/NewsItem;

    .line 40
    new-instance v2, Lorg/wikipedia/feed/news/NewsItemCard;

    invoke-direct {v2, v1, p1}, Lorg/wikipedia/feed/news/NewsItemCard;-><init>(Lorg/wikipedia/feed/news/NewsItem;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public date()Lorg/wikipedia/feed/model/UtcDate;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsListCard;->date:Lorg/wikipedia/feed/model/UtcDate;

    return-object v0
.end method

.method protected dismissHashCode()I
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/wikipedia/feed/news/NewsListCard;->date:Lorg/wikipedia/feed/model/UtcDate;

    invoke-virtual {v1}, Lorg/wikipedia/feed/model/UtcDate;->baseCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10045e

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 30
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->NEWS_LIST:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
