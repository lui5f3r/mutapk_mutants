.class public Lorg/wikipedia/feed/mostread/MostReadListCard;
.super Lorg/wikipedia/feed/model/ListCard;
.source "MostReadListCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/model/ListCard<",
        "Lorg/wikipedia/feed/mostread/MostReadItemCard;",
        ">;"
    }
.end annotation


# instance fields
.field private final articles:Lorg/wikipedia/feed/mostread/MostReadArticles;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/mostread/MostReadArticles;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lorg/wikipedia/feed/mostread/MostReadArticles;->articles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/wikipedia/feed/mostread/MostReadListCard;->toItems(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/wikipedia/feed/model/ListCard;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/mostread/MostReadListCard;->articles:Lorg/wikipedia/feed/mostread/MostReadArticles;

    return-void
.end method

.method private context()Landroid/content/Context;
    .locals 1

    .line 58
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/wikipedia/feed/mostread/MostReadListCard;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static toItems(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/mostread/MostReadItemCard;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 48
    new-instance v2, Lorg/wikipedia/feed/mostread/MostReadItemCard;

    invoke-direct {v2, v1, p1}, Lorg/wikipedia/feed/mostread/MostReadItemCard;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected dismissHashCode()I
    .locals 3

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/wikipedia/feed/mostread/MostReadListCard;->articles:Lorg/wikipedia/feed/mostread/MostReadArticles;

    invoke-virtual {v1}, Lorg/wikipedia/feed/mostread/MostReadArticles;->date()Ljava/util/Date;

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

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadListCard;->articles:Lorg/wikipedia/feed/mostread/MostReadArticles;

    invoke-virtual {v0}, Lorg/wikipedia/feed/mostread/MostReadArticles;->date()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001aa

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 40
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->MOST_READ_LIST:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
