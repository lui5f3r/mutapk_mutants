.class public Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnThisDayFragment.java"

# interfaces
.implements Lorg/wikipedia/views/CustomDatePicker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;,
        Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;,
        Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;
    }
.end annotation


# static fields
.field public static final HALF_ALPHA:F = 0.5f

.field public static final PADDING1:I = 0x15

.field public static final PADDING2:I = 0x26

.field public static final PADDING3:I = 0x15


# instance fields
.field appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private date:Ljava/util/Calendar;

.field dayInfoTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field dayText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

.field headerFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field indicatorDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field indicatorLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private onThisDay:Lorg/wikipedia/feed/onthisday/OnThisDay;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarDropDown:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)Lorg/wikipedia/analytics/OnThisDayFunnel;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->setUpRecycler(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public static newInstance(ILorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
    .locals 3

    .line 83
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-direct {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "age"

    .line 85
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "wikisite"

    .line 86
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestEvents(II)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1, p2}, Lorg/wikipedia/dataclient/RestService;->getOnThisDay(II)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 153
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 154
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$HOTjtw01heGC_Y9faLnMgT1OudM;

    invoke-direct {p2, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$HOTjtw01heGC_Y9faLnMgT1OudM;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    .line 155
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$P9M8eCwo2yTezy_XeouV2422Ee4;

    invoke-direct {p2, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$P9M8eCwo2yTezy_XeouV2422Ee4;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    new-instance v1, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$_pNDy4Z_x5CygvIvYauzE_oH-wc;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$_pNDy4Z_x5CygvIvYauzE_oH-wc;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    .line 156
    invoke-virtual {p1, p2, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private setUpRecycler(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 213
    new-instance v6, Lorg/wikipedia/views/MarginItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701c8

    const v3, 0x7f0701c9

    const v4, 0x7f0701c8

    const v5, 0x7f0701c9

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 218
    new-instance v0, Lorg/wikipedia/views/DontInterceptTouchListener;

    invoke-direct {v0}, Lorg/wikipedia/views/DontInterceptTouchListener;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method private setUpToolbar()V
    .locals 6

    .line 173
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 174
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04027c

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 177
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->getMonthOnlyDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$m2rYqfyKmRmhZRRFtoMXPjR19GM;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$m2rYqfyKmRmhZRRFtoMXPjR19GM;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private updateContents(I)V
    .locals 4

    .line 141
    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getDefaultDateFor(I)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->requestEvents(II)V

    .line 143
    new-instance p1, Lorg/wikipedia/analytics/OnThisDayFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "invokeSource"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/Constants$InvokeSource;

    invoke-direct {p1, v0, v1, v2}, Lorg/wikipedia/analytics/OnThisDayFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)V

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$1$OnThisDayFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$6$OnThisDayFragment(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$OnThisDayFragment(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$OnThisDayFragment(I)V
    .locals 4

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->updateContents(I)V

    .line 116
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04027c

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    invoke-static {p1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 118
    new-instance v0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$eG3Feai5UfgJni1eTGvcVei1k6I;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$eG3Feai5UfgJni1eTGvcVei1k6I;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$requestEvents$3$OnThisDayFragment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$requestEvents$4$OnThisDayFragment(Lorg/wikipedia/feed/onthisday/OnThisDay;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onThisDay:Lorg/wikipedia/feed/onthisday/OnThisDay;

    .line 158
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onThisDay:Lorg/wikipedia/feed/onthisday/OnThisDay;

    invoke-virtual {v2}, Lorg/wikipedia/feed/onthisday/OnThisDay;->events()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onThisDay:Lorg/wikipedia/feed/onthisday/OnThisDay;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay;->events()Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-virtual {v1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result v1

    .line 162
    iget-object v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayInfoTextView:Landroid/widget/TextView;

    const v4, 0x7f100110

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 163
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->yearToStringWithEra(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v5, v0

    .line 162
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$requestEvents$5$OnThisDayFragment(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 166
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 167
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setUpToolbar$7$OnThisDayFragment(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 181
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->headerFrameLayout:Landroid/widget/FrameLayout;

    int-to-float v1, p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    if-le p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDropDown:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    if-gt p2, v0, :cond_1

    .line 185
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDropDown:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    if-gt p2, v0, :cond_2

    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    .line 188
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/DateUtil;->getMonthOnlyDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    .line 189
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    new-instance v0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$y0mBwnRyeJC-bWMHCrBRFhGeR_o;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$y0mBwnRyeJC-bWMHCrBRFhGeR_o;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 137
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0402e9

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onCalendarClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 241
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker;

    invoke-direct {v0}, Lorg/wikipedia/views/CustomDatePicker;-><init>()V

    .line 242
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/views/CustomDatePicker;->setSelectedDay(II)V

    .line 243
    invoke-virtual {v0, p0}, Lorg/wikipedia/views/CustomDatePicker;->setCallback(Lorg/wikipedia/views/CustomDatePicker$Callback;)V

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "date picker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0c0057

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->unbinder:Lbutterknife/Unbinder;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "age"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wikisite"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 98
    invoke-static {p2}, Lorg/wikipedia/util/DateUtil;->getDefaultDateFor(I)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    .line 99
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->setUpToolbar()V

    .line 100
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lorg/wikipedia/views/HeaderMarginItemDecoration;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v1}, Lorg/wikipedia/views/HeaderMarginItemDecoration;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->setUpRecycler(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 106
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$ZtfjOe4sF9TcTW30M2qvNjtvNHk;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$ZtfjOe4sF9TcTW30M2qvNjtvNHk;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 111
    iget-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    new-instance v0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p3, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04027c

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    invoke-direct {p0, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->updateContents(I)V

    .line 130
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    iget-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDatePicked(II)V
    .locals 8

    .line 225
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 231
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_1

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 233
    :goto_1
    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    const/16 v3, 0x7e0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Ljava/util/Calendar;->set(IIIII)V

    .line 234
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->getMonthOnlyDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->requestEvents(II)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 201
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 202
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 203
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/analytics/OnThisDayFunnel;->done(I)V

    .line 205
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->funnel:Lorg/wikipedia/analytics/OnThisDayFunnel;

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 208
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->unbinder:Lbutterknife/Unbinder;

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onIndicatorLayoutClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onDatePicked(II)V

    .line 250
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method
