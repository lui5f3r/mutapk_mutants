.class public Lorg/wikipedia/feed/featured/FeaturedArticleCardView;
.super Lorg/wikipedia/feed/view/DefaultFeedCardView;
.source "FeaturedArticleCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;,
        Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;,
        Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;,
        Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/DefaultFeedCardView<",
        "Lorg/wikipedia/feed/featured/FeaturedArticleCard;",
        ">;"
    }
.end annotation


# instance fields
.field articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field articleTitleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field extractView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field footerView:Lorg/wikipedia/feed/view/ActionFooterView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field headerView:Lorg/wikipedia/feed/view/CardHeaderView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field textContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f1

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 56
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p1}, Lorg/wikipedia/views/ImageZoomHelper;->setViewZoomable(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footer(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/history/HistoryEntry;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method private articleSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private articleTitle(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private extract(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->extractView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private footer(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->articleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 127
    new-instance p1, Lorg/wikipedia/feed/featured/-$$Lambda$FeaturedArticleCardView$kdYkcP-n-MIJZdNBXA1DmXoEHI4;

    invoke-direct {p1, v0}, Lorg/wikipedia/feed/featured/-$$Lambda$FeaturedArticleCardView$kdYkcP-n-MIJZdNBXA1DmXoEHI4;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 128
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 129
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/feed/featured/-$$Lambda$FeaturedArticleCardView$qsFn1lYgF_cB7EfCTqu_wThbaIA;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/featured/-$$Lambda$FeaturedArticleCardView$qsFn1lYgF_cB7EfCTqu_wThbaIA;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    sget-object v1, Lorg/wikipedia/feed/featured/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;->INSTANCE:Lorg/wikipedia/feed/featured/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;

    .line 130
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private getEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->historyEntry(I)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    return-object v0
.end method

.method private header(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f080119

    .line 117
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f060119

    .line 118
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method private image(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageContainerView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$footer$0(Lorg/wikipedia/page/PageTitle;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$footer$1$FeaturedArticleCardView(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08009e

    goto :goto_0

    :cond_0
    const v0, 0x7f08009b

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100464

    goto :goto_1

    :cond_1
    const v1, 0x7f100463

    .line 139
    :goto_1
    iget-object v2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    invoke-virtual {v2, v0}, Lorg/wikipedia/feed/view/ActionFooterView;->actionIcon(I)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->actionText(I)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V

    :goto_2
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->onActionListener(Landroid/view/View$OnClickListener;)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V

    .line 144
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->onShareListener(Landroid/view/View$OnClickListener;)Lorg/wikipedia/feed/view/ActionFooterView;

    .line 146
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v3, 0x7f040312

    const v4, 0x7f0400c5

    if-eqz v2, :cond_3

    const v2, 0x7f0400c5

    goto :goto_3

    :cond_3
    const v2, 0x7f040312

    .line 146
    :goto_3
    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->actionIconColor(I)V

    .line 148
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const v3, 0x7f0400c5

    .line 148
    :cond_4
    invoke-static {v1, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/ActionFooterView;->actionTextColor(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 79
    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method onCardClick()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->historyEntry(I)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onSelectPage(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 99
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 61
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->textContainerView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    .line 63
    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->articleTitle()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->articleSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->extract()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->image()Landroid/net/Uri;

    move-result-object v3

    .line 68
    invoke-direct {p0, v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleTitle(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleSubtitle(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v2}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->extract(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->image(Landroid/net/Uri;)V

    .line 73
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->header(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    .line 74
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footer(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->setCard(Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    return-void
.end method
