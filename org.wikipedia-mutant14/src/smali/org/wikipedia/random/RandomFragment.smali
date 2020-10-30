.class public Lorg/wikipedia/random/RandomFragment;
.super Landroidx/fragment/app/Fragment;
.source "RandomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/random/RandomFragment$ViewPagerListener;,
        Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;
    }
.end annotation


# instance fields
.field backButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

.field nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field randomPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field saveButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private saveButtonState:Z

.field private unbinder:Lbutterknife/Unbinder;

.field private viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/random/RandomFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 60
    new-instance v0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;-><init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/random/RandomFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/random/RandomFragment;->viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    .line 62
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/random/RandomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/random/RandomFragment;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomFragment;->updateBackButton(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/analytics/RandomizerFunnel;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/random/RandomFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton()V

    return-void
.end method

.method private getTopChild()Lorg/wikipedia/random/RandomItemFragment;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;

    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/random/RandomItemFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 213
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopChild()Lorg/wikipedia/random/RandomItemFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/random/RandomItemFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$updateSaveShareButton$3(Lorg/wikipedia/page/PageTitle;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
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

.method public static newInstance()Lorg/wikipedia/random/RandomFragment;
    .locals 1

    .line 66
    new-instance v0, Lorg/wikipedia/random/RandomFragment;

    invoke-direct {v0}, Lorg/wikipedia/random/RandomFragment;-><init>()V

    return-object v0
.end method

.method private updateBackButton(I)V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->backButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->backButton:Landroid/view/View;

    if-nez p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateSaveShareButton()V
    .locals 2

    .line 202
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopChild()Lorg/wikipedia/random/RandomItemFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lorg/wikipedia/random/RandomItemFragment;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 205
    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateSaveShareButton(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/random/-$$Lambda$RandomFragment$qOn2YNQGz39mWh5Qgt27f0vRUJI;

    invoke-direct {v1, p1}, Lorg/wikipedia/random/-$$Lambda$RandomFragment$qOn2YNQGz39mWh5Qgt27f0vRUJI;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 191
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 192
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/random/-$$Lambda$RandomFragment$qx8bQHj4hljhW_UzcIWwivu7tHA;

    invoke-direct {v1, p0}, Lorg/wikipedia/random/-$$Lambda$RandomFragment$qx8bQHj4hljhW_UzcIWwivu7tHA;-><init>(Lorg/wikipedia/random/RandomFragment;)V

    sget-object v2, Lorg/wikipedia/random/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;->INSTANCE:Lorg/wikipedia/random/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;

    .line 193
    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAddPageToList$0$RandomFragment(Lorg/wikipedia/page/PageTitle;J)V
    .locals 0

    .line 169
    invoke-virtual {p0, p2, p3, p1}, Lorg/wikipedia/random/RandomFragment;->onMovePageToList(JLorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public synthetic lambda$onAddPageToList$1$RandomFragment(Lorg/wikipedia/page/PageTitle;Landroid/content/DialogInterface;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public synthetic lambda$onMovePageToList$2$RandomFragment(Lorg/wikipedia/page/PageTitle;Landroid/content/DialogInterface;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public synthetic lambda$updateSaveShareButton$4$RandomFragment(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/random/RandomFragment;->saveButtonState:Z

    .line 195
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f08009e

    goto :goto_0

    :cond_0
    const p1, 0x7f08009c

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onAddPageToList(Lorg/wikipedia/page/PageTitle;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 169
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v2, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/random/-$$Lambda$RandomFragment$rUcE040gMEt9AoOhXbNDP8qOPNg;-><init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    invoke-virtual {p2, v0, p1, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/random/RandomFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v2, Lorg/wikipedia/random/-$$Lambda$RandomFragment$isR4c5CQQYhVO0VBIGlY2HdhyS0;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/random/-$$Lambda$RandomFragment$isR4c5CQQYhVO0VBIGlY2HdhyS0;-><init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    .line 172
    invoke-static {p1, v1, v2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 171
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method onBackClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    invoke-virtual {v0}, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->setNextPageSelectedAutomatic()V

    .line 120
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 122
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/wikipedia/analytics/RandomizerFunnel;->clickedBack()V

    :cond_0
    return-void
.end method

.method onChildLoaded()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/random/RandomFragment;->unbinder:Lbutterknife/Unbinder;

    const/4 p2, 0x2

    new-array v0, p2, [Landroid/view/View;

    .line 75
    iget-object v2, p0, Lorg/wikipedia/random/RandomFragment;->nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    aput-object v2, v0, v1

    iget-object v2, p0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 78
    iget-object p2, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;

    invoke-direct {v0, p0, p0}, Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;-><init>(Lorg/wikipedia/random/RandomFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object p2, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lorg/wikipedia/util/AnimationUtil$PagerTransformer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v3}, Lorg/wikipedia/util/AnimationUtil$PagerTransformer;-><init>(Z)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 81
    iget-object p2, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 83
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton()V

    .line 84
    invoke-direct {p0, v1}, Lorg/wikipedia/random/RandomFragment;->updateBackButton(I)V

    if-eqz p3, :cond_1

    .line 85
    iget-object p2, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 86
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/wikipedia/random/RandomFragment;->updateSaveShareButton(Lorg/wikipedia/page/PageTitle;)V

    .line 89
    :cond_1
    new-instance p2, Lorg/wikipedia/analytics/RandomizerFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "invokeSource"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    invoke-direct {p2, p3, v0, v1}, Lorg/wikipedia/analytics/RandomizerFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)V

    iput-object p2, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 97
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment;->viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 98
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lorg/wikipedia/random/RandomFragment;->unbinder:Lbutterknife/Unbinder;

    .line 100
    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lorg/wikipedia/analytics/RandomizerFunnel;->done()V

    .line 102
    iput-object v0, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    .line 104
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onMovePageToList(JLorg/wikipedia/page/PageTitle;)V
    .locals 8

    .line 178
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 179
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v7, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;

    invoke-direct {v7, p0, p3}, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;-><init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    const/4 v6, 0x1

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 178
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method onNextClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->viewPagerListener:Lorg/wikipedia/random/RandomFragment$ViewPagerListener;

    invoke-virtual {v0}, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->setNextPageSelectedAutomatic()V

    .line 112
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 113
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment;->funnel:Lorg/wikipedia/analytics/RandomizerFunnel;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lorg/wikipedia/analytics/RandomizerFunnel;->clickedForward()V

    :cond_1
    return-void
.end method

.method onSaveShareClick()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/wikipedia/random/RandomFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-boolean v1, p0, Lorg/wikipedia/random/RandomFragment;->saveButtonState:Z

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    iget-object v2, p0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/wikipedia/random/RandomFragment$1;

    invoke-direct {v3, p0, v0}, Lorg/wikipedia/random/RandomFragment$1;-><init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;-><init>(Landroid/view/View;Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;)V

    .line 156
    invoke-virtual {v1, v0}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->show(Lorg/wikipedia/page/PageTitle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/random/RandomFragment;->onAddPageToList(Lorg/wikipedia/page/PageTitle;Z)V

    :goto_0
    return-void
.end method

.method public onSelectPage(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {v0, v1, p1}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
