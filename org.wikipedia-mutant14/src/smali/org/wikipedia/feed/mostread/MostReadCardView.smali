.class public Lorg/wikipedia/feed/mostread/MostReadCardView;
.super Lorg/wikipedia/feed/view/ListCardView;
.source "MostReadCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/mostread/MostReadCardView$RecyclerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/ListCardView<",
        "Lorg/wikipedia/feed/mostread/MostReadListCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_SHOWN:I = 0x5


# instance fields
.field private card:Lorg/wikipedia/feed/mostread/MostReadListCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/ListCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/mostread/MostReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/mostread/MostReadCardView;)Lorg/wikipedia/feed/mostread/MostReadListCard;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/wikipedia/feed/mostread/MostReadCardView;->card:Lorg/wikipedia/feed/mostread/MostReadListCard;

    return-object p0
.end method

.method private header(Lorg/wikipedia/feed/mostread/MostReadListCard;)V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->headerView()Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/mostread/MostReadListCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lorg/wikipedia/feed/mostread/MostReadListCard;->subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f0800f5

    .line 37
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method


# virtual methods
.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 18
    check-cast p1, Lorg/wikipedia/feed/mostread/MostReadListCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/mostread/MostReadCardView;->setCard(Lorg/wikipedia/feed/mostread/MostReadListCard;)V

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/mostread/MostReadListCard;)V
    .locals 4

    .line 26
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 27
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/mostread/MostReadCardView;->header(Lorg/wikipedia/feed/mostread/MostReadListCard;)V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/mostread/MostReadCardView;->card:Lorg/wikipedia/feed/mostread/MostReadListCard;

    .line 29
    new-instance v0, Lorg/wikipedia/feed/mostread/MostReadCardView$RecyclerAdapter;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/ListCard;->items()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/ListCard;->items()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/mostread/MostReadCardView$RecyclerAdapter;-><init>(Lorg/wikipedia/feed/mostread/MostReadCardView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardView;->set(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardView;->setMoreContentTextView(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardView;->getLayoutDirectionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    return-void
.end method
