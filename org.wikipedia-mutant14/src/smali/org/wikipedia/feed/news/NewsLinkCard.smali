.class Lorg/wikipedia/feed/news/NewsLinkCard;
.super Lorg/wikipedia/feed/model/Card;
.source "NewsLinkCard.java"


# instance fields
.field private page:Lorg/wikipedia/dataclient/page/PageSummary;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 23
    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method


# virtual methods
.method public image()Landroid/net/Uri;
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x140

    invoke-static {v0, v1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForSize(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public pageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    iget-object v1, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsLinkCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 40
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->NEWS_ITEM_LINK:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
