.class public Lorg/wikipedia/feed/mostread/MostReadItemCard;
.super Lorg/wikipedia/feed/model/Card;
.source "MostReadItemCard.java"


# instance fields
.field private final page:Lorg/wikipedia/dataclient/page/PageSummary;

.field private final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 20
    iput-object p2, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method


# virtual methods
.method public image()Landroid/net/Uri;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public pageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    iget-object v1, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadItemCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 37
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->MOST_READ_ITEM:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
