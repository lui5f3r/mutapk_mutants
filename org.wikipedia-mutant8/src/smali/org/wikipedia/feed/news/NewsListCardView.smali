.class public Lorg/wikipedia/feed/news/NewsListCardView;
.super Lorg/wikipedia/feed/view/HorizontalScrollingListCardView;
.source "NewsListCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;,
        Lorg/wikipedia/feed/news/NewsListCardView$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/HorizontalScrollingListCardView<",
        "Lorg/wikipedia/feed/news/NewsListCard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method private header(Lorg/wikipedia/feed/news/NewsListCard;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->headerView()Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/news/NewsListCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lorg/wikipedia/feed/news/NewsListCard;->date()Lorg/wikipedia/feed/model/UtcDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/feed/model/UtcDate;->baseCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f080137

    .line 36
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f060031

    .line 37
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method


# virtual methods
.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/feed/news/NewsListCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/news/NewsListCardView;->setCard(Lorg/wikipedia/feed/news/NewsListCard;)V

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/news/NewsListCard;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 28
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/news/NewsListCardView;->header(Lorg/wikipedia/feed/news/NewsListCard;)V

    .line 29
    new-instance v0, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/ListCard;->items()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;-><init>(Lorg/wikipedia/feed/news/NewsListCardView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardView;->set(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->getLayoutDirectionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    return-void
.end method
