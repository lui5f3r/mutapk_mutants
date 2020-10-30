.class public Lorg/wikipedia/feed/onthisday/OnThisDayCardView;
.super Lorg/wikipedia/feed/view/DefaultFeedCardView;
.source "OnThisDayCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/DefaultFeedCardView<",
        "Lorg/wikipedia/feed/onthisday/OnThisDayCard;",
        ">;"
    }
.end annotation


# instance fields
.field private age:I

.field dayTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field descTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/FeedFunnel;

.field gradientLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field headerView:Lorg/wikipedia/feed/view/CardHeaderView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field nextEventYearsTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field radio:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rtlContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field yearLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field yearTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field yearsInfoBackground:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field yearsInfoTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lorg/wikipedia/analytics/FeedFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/wikipedia/analytics/FeedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f6

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 69
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->initRecycler()V

    .line 70
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->setGradientAndTextColor()V

    return-void
.end method

.method private header(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f080100

    .line 132
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    .line 137
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->descTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->text()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->yearTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->year()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->yearToStringWithEra(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->yearsInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->year()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getYearDifferenceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->dayTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->dayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->nextEventYearsTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->nextYear()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getYearDifferenceString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecycler()V
    .locals 10

    .line 79
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 80
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/MarginItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0701c8

    const v7, 0x7f0701c9

    const v8, 0x7f0701c8

    const v9, 0x7f0701c9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/DontInterceptTouchListener;

    invoke-direct {v1}, Lorg/wikipedia/views/DontInterceptTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 87
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private setGradientAndTextColor()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->gradientLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040093

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lorg/wikipedia/util/GradientUtil;->getPowerGradient(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->yearsInfoBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040312

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setPagesRecycler(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V
    .locals 4

    .line 170
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->pages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->pages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Z)V

    .line 172
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method onMoreClick()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    sget-object v1, Lorg/wikipedia/feed/model/CardType;->ON_THIS_DAY:Lorg/wikipedia/feed/model/CardType;

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {v2}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/FeedFunnel;->cardClicked(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->dayTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100451

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->age:I

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {v4}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_BODY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v2, v3, v4, v5}, Lorg/wikipedia/feed/onthisday/OnThisDayActivity;->newIntent(Landroid/content/Context;ILorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method onMoreFooterClick()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    sget-object v1, Lorg/wikipedia/feed/model/CardType;->ON_THIS_DAY:Lorg/wikipedia/feed/model/CardType;

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {v2}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/FeedFunnel;->cardClicked(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->dayTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100451

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->age:I

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {v4}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_FOOTER:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v2, v3, v4, v5}, Lorg/wikipedia/feed/onthisday/OnThisDayActivity;->newIntent(Landroid/content/Context;ILorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 126
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->setCard(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 147
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->getAge()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->age:I

    .line 148
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->rtlContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    .line 149
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->setPagesRecycler(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V

    .line 150
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->header(Lorg/wikipedia/feed/onthisday/OnThisDayCard;)V

    return-void
.end method
