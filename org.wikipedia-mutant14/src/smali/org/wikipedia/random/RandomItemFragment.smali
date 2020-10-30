.class public Lorg/wikipedia/random/RandomItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "RandomItemFragment.java"


# instance fields
.field articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field articleTitleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field containerView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field extractView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field progressBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private summary:Lorg/wikipedia/dataclient/page/PageSummary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private getRandomPage()V
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/dataclient/RestService;->getRandomSummary()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 91
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 92
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$jlUhNMJhSUaUzg-w5ym4OqlQZPs;

    invoke-direct {v2, p0}, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$jlUhNMJhSUaUzg-w5ym4OqlQZPs;-><init>(Lorg/wikipedia/random/RandomItemFragment;)V

    new-instance v3, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$Eq2B8pIX9jTjmyA7nx0c2fY5rGo;

    invoke-direct {v3, p0}, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$Eq2B8pIX9jTjmyA7nx0c2fY5rGo;-><init>(Lorg/wikipedia/random/RandomItemFragment;)V

    .line 93
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$Eq2B8pIX9jTjmyA7nx0c2fY5rGo(Lorg/wikipedia/random/RandomItemFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomItemFragment;->setErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/random/RandomItemFragment;
    .locals 1

    .line 52
    new-instance v0, Lorg/wikipedia/random/RandomItemFragment;

    invoke-direct {v0}, Lorg/wikipedia/random/RandomItemFragment;-><init>()V

    return-object v0
.end method

.method private parent()Lorg/wikipedia/random/RandomFragment;
    .locals 2

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/random/RandomFragment;

    return-object v0
.end method

.method private setErrorState(Ljava/lang/Throwable;)V
    .locals 1

    .line 101
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 102
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 103
    iget-object p1, p0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lorg/wikipedia/random/RandomItemFragment;->progressBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lorg/wikipedia/random/RandomItemFragment;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateContents()V
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->progressBar:Landroid/view/View;

    iget-object v2, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez v0, :cond_2

    return-void

    .line 121
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/random/RandomItemFragment;->articleTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 125
    new-instance v2, Lorg/wikipedia/random/RandomItemFragment$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/random/RandomItemFragment$1;-><init>(Lorg/wikipedia/random/RandomItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v2, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 139
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    invoke-static {v1, v2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    :goto_1
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method isLoadComplete()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$getRandomPage$2$RandomItemFragment(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 95
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->updateContents()V

    .line 96
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->parent()Lorg/wikipedia/random/RandomFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/random/RandomFragment;->onChildLoaded()V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$RandomItemFragment(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$RandomItemFragment(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lorg/wikipedia/random/RandomItemFragment;->progressBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->getRandomPage()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/wikipedia/random/RandomItemFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->parent()Lorg/wikipedia/random/RandomFragment;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/random/RandomItemFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/random/RandomFragment;->onSelectPage(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c005d

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 70
    iget-object p2, p0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance p3, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$YFZK4i15tU-D9imGVcCB0EHf6OE;

    invoke-direct {p3, p0}, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$YFZK4i15tU-D9imGVcCB0EHf6OE;-><init>(Lorg/wikipedia/random/RandomItemFragment;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p2, p0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance p3, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$0Al81x51MbL9tvQ1V1Xbft8XaQM;

    invoke-direct {p3, p0}, Lorg/wikipedia/random/-$$Lambda$RandomItemFragment$0Al81x51MbL9tvQ1V1Xbft8XaQM;-><init>(Lorg/wikipedia/random/RandomItemFragment;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->updateContents()V

    .line 76
    iget-object p2, p0, Lorg/wikipedia/random/RandomItemFragment;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    if-nez p2, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/wikipedia/random/RandomItemFragment;->getRandomPage()V

    .line 79
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
