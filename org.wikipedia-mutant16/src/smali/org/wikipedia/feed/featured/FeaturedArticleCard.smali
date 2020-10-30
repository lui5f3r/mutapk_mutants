.class public Lorg/wikipedia/feed/featured/FeaturedArticleCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "FeaturedArticleCard.java"


# instance fields
.field private age:I

.field private page:Lorg/wikipedia/dataclient/page/PageSummary;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 22
    invoke-direct {p0, p3}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 23
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 24
    iput p2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->age:I

    return-void
.end method


# virtual methods
.method articleSubtitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method articleTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dismissHashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public extract()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public historyEntry(I)Lorg/wikipedia/history/HistoryEntry;
    .locals 3

    .line 68
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    iget-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    return-object v0
.end method

.method public image()Landroid/net/Uri;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->age:I

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100462

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 63
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->FEATURED_ARTICLE:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
