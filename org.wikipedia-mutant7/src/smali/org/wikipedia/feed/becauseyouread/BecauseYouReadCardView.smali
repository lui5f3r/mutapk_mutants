.class public Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;
.super Lorg/wikipedia/feed/view/ListCardView;
.source "BecauseYouReadCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;,
        Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;,
        Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/ListCardView<",
        "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/ListCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method private header(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->daysOld()J

    move-result-wide v0

    long-to-int v1, v0

    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->headerView()Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v2, 0x7f080109

    .line 39
    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v2, 0x7f06002f

    .line 40
    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->largeHeaderView()Lorg/wikipedia/feed/view/CardLargeHeaderView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->pageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardLargeHeaderView;->setTitle(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardLargeHeaderView;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->image()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/feed/view/CardLargeHeaderView;->setImage(Landroid/net/Uri;)Lorg/wikipedia/feed/view/CardLargeHeaderView;

    move-result-object v0

    .line 46
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getDaysAgoString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardLargeHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardLargeHeaderView;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;-><init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V

    .line 47
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardLargeHeaderView;->onClickListener(Landroid/view/View$OnClickListener;)Lorg/wikipedia/feed/view/CardLargeHeaderView;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setCard(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 31
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;->header(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V

    .line 32
    new-instance v0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/ListCard;->items()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;-><init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardView;->set(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->getLayoutDirectionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 20
    check-cast p1, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;->setCard(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V

    return-void
.end method
