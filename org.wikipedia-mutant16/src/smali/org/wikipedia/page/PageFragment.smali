.class public Lorg/wikipedia/page/PageFragment;
.super Landroidx/fragment/app/Fragment;
.source "PageFragment.java"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;
.implements Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
.implements Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
.implements Lorg/wikipedia/page/references/ReferenceDialog$Callback;
.implements Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;,
        Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;,
        Lorg/wikipedia/page/PageFragment$AvCallback;,
        Lorg/wikipedia/page/PageFragment$Callback;
    }
.end annotation


# static fields
.field private static final REFRESH_SPINNER_ADDITIONAL_OFFSET:I


# instance fields
.field private activeTimer:Lorg/wikipedia/util/ActiveTimer;

.field private app:Lorg/wikipedia/WikipediaApp;

.field private avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

.field private avPlayer:Lorg/wikipedia/media/AvPlayer;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field private containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private editHandler:Lorg/wikipedia/edit/EditHandler;

.field private errorState:Z

.field private errorView:Lorg/wikipedia/views/WikiErrorView;

.field private leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

.field private linkHandler:Lorg/wikipedia/page/LinkHandler;

.field private model:Lorg/wikipedia/page/PageViewModel;

.field private pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

.field private pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

.field private pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

.field private final pageRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private pageRefreshed:Z

.field private pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

.field private references:Lorg/wikipedia/page/references/PageReferences;

.field private refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

.field private revision:J

.field private scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/Section;",
            ">;"
        }
    .end annotation
.end field

.field private shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

.field private tabFunnel:Lorg/wikipedia/analytics/TabFunnel;

.field private tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

.field private tocHandler:Lorg/wikipedia/page/ToCHandler;

.field private viewForTransition:Landroid/widget/ImageView;

.field private webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 169
    new-instance v0, Lorg/wikipedia/analytics/TabFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/TabFunnel;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->tabFunnel:Lorg/wikipedia/analytics/TabFunnel;

    .line 180
    new-instance v0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 181
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 187
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 188
    new-instance v0, Lorg/wikipedia/util/ActiveTimer;

    invoke-direct {v0}, Lorg/wikipedia/util/ActiveTimer;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    .line 198
    new-instance v0, Lorg/wikipedia/page/-$$Lambda$xEQ7LXw-bFHuMJlM5FoyxSkIAl8;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/-$$Lambda$xEQ7LXw-bFHuMJlM5FoyxSkIAl8;-><init>(Lorg/wikipedia/page/PageFragment;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 201
    new-instance v0, Lorg/wikipedia/page/PageFragment$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageFragment$1;-><init>(Lorg/wikipedia/page/PageFragment;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    return-void
.end method

.method static synthetic access$1100(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->handleInternalLink(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->startGalleryActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/media/AvPlayer;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/wikipedia/page/PageFragment;Z)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageActionTabLayout;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->startLangLinksActivity()V

    return-void
.end method

.method static synthetic access$400(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/ToCHandler;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/page/PageFragment;Z)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->setBookmarkIconForPageSavedState(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/LinkHandler;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/LinkHandler;

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    return-object p0
.end method

.method static synthetic access$800(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->onPageSetupEvent()V

    return-void
.end method

.method static synthetic access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    return-object p0
.end method

.method private addTimeSpentReading(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 1399
    invoke-virtual {v4}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;II)V

    .line 1397
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageViewModel;->setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 1401
    new-instance p1, Lorg/wikipedia/history/UpdateHistoryTask;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/wikipedia/history/UpdateHistoryTask;-><init>(Lorg/wikipedia/history/HistoryEntry;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 1402
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/page/-$$Lambda$PageFragment$bCUl6bHbCDjXxl5zbL6vsIJXOBY;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$PageFragment$bCUl6bHbCDjXxl5zbL6vsIJXOBY;

    sget-object v1, Lorg/wikipedia/page/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 1403
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private checkAndShowBookmarkOnboarding()V
    .locals 5

    .line 1246
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowBookmarkToolTip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOverflowReadingListsOptionClickCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1247
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    sget-object v1, Lorg/wikipedia/page/action/PageActionTab;->ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

    invoke-virtual {v1}, Lorg/wikipedia/page/action/PageActionTab;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f10044a

    const v3, 0x7f100449

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lorg/wikipedia/util/FeedbackUtil;->showTapTargetView(Landroid/app/Activity;Landroid/view/View;IILcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V

    const/4 v0, 0x0

    .line 1250
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->shouldShowBookmarkToolTip(Z)V

    :cond_0
    return-void
.end method

.method private closePageScrollFunnel()V
    .locals 2

    .line 1261
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/PageScrollFunnel;->setViewportHeight(I)V

    .line 1263
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/PageScrollFunnel;->setPageHeight(I)V

    .line 1264
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/PageScrollFunnel;->logDone()V

    :cond_0
    const/4 v0, 0x0

    .line 1266
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    return-void
.end method

.method private disableActionTabs(Ljava/lang/Throwable;)V
    .locals 3

    .line 1415
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->isOffline(Ljava/lang/Throwable;)Z

    move-result p1

    const/4 v0, 0x0

    .line 1416
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 1417
    invoke-static {v0}, Lorg/wikipedia/page/action/PageActionTab;->of(I)Lorg/wikipedia/page/action/PageActionTab;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/page/action/PageActionTab;->ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {v1, v0}, Lorg/wikipedia/views/ConfigurableTabLayout;->disableTab(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dismissBottomSheet()V
    .locals 2

    .line 1274
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 1275
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-interface {v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageDismissBottomSheet()V

    :cond_0
    return-void
.end method

.method private getBackgroundTabPosition()I
    .locals 2

    .line 1021
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getForegroundTabPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentTopOffsetParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1407
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->getContentTopOffsetPx(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getForegroundTabPosition()I
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTabLayoutOffsetParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1411
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private handleInternalLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 573
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    if-ne v0, v1, :cond_1

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 587
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isTalkPage()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 591
    :cond_2
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    .line 592
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 593
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 594
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/history/HistoryEntry;->setReferrer(Ljava/lang/String;)V

    .line 596
    :cond_3
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    if-ne v1, v2, :cond_5

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isLinkPreviewEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 599
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 601
    invoke-interface {p1, v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageShowLinkPreview(Lorg/wikipedia/history/HistoryEntry;)V

    goto :goto_1

    .line 597
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_6
    :goto_1
    return-void

    .line 588
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private hidePageContent()V
    .locals 2

    .line 1221
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->hide()V

    .line 1222
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->loadBlankPage()V

    .line 1223
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1224
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageHideAllContent()V

    :cond_0
    return-void
.end method

.method private initPageScrollFunnel()V
    .locals 3

    .line 1255
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1256
    new-instance v0, Lorg/wikipedia/analytics/PageScrollFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageProperties;->getPageId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/analytics/PageScrollFunnel;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    :cond_0
    return-void
.end method

.method private initWebViewListeners()V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$iJUB_Do806-gYeFv1fQ2Drbapig;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$iJUB_Do806-gYeFv1fQ2Drbapig;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ObservableWebView;->addOnUpOrCancelMotionEventListener(Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;)V

    .line 440
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$kl-i68gUTmGKJHb9UMtOJppQSYI;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$kl-i68gUTmGKJHb9UMtOJppQSYI;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ObservableWebView;->addOnScrollChangeListener(Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;)V

    .line 445
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ObservableWebView;->addOnContentHeightChangedListener(Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;)V

    .line 446
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    new-instance v1, Lorg/wikipedia/page/PageFragment$2;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/PageFragment$2;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic lambda$addTimeSpentReading$28()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$onPageMetadataLoaded$4(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setupMessageHandlers$21(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$startGalleryActivity$27(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View;)V
    .locals 0

    .line 1212
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    return-void
.end method

.method private loadMainPageInForegroundTab()V
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    invoke-interface {v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageLoadMainPageInForegroundTab()V

    :cond_0
    return-void
.end method

.method private maybeShowAnnouncement()V
    .locals 4

    .line 1470
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasVisitedArticlePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/dataclient/RestService;->getAnnouncements()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 1472
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 1473
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$UgEjA_grSzhO5E6nmvfFjS4ZnUE;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$UgEjA_grSzhO5E6nmvfFjS4ZnUE;-><init>(Lorg/wikipedia/page/PageFragment;)V

    sget-object v3, Lorg/wikipedia/page/-$$Lambda$gNx1wNJ12-O5gishT3Fc6l45zRU;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$gNx1wNJ12-O5gishT3Fc6l45zRU;

    .line 1474
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 1471
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private onPageSetupEvent()V
    .locals 3

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 534
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionFunnel;->leadSectionFetchEnd()V

    .line 537
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getRevision()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$3PwJnQJpu1AQ6afkuMtwNcX1TNM;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$3PwJnQJpu1AQ6afkuMtwNcX1TNM;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 548
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getSections()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$MwkeXX9sCAzGykHeoWY1YpOzfJc;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$MwkeXX9sCAzGykHeoWY1YpOzfJc;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 562
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getProtection()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$nCicFJamw5p7cuWKL_lB5R1xQes;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$nCicFJamw5p7cuWKL_lB5R1xQes;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V
    .locals 3

    .line 680
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 681
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 687
    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->setCurrentTabAndReset(I)V

    return-void

    .line 691
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tabFunnel:Lorg/wikipedia/analytics/TabFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/TabFunnel;->logOpenInNew(I)V

    .line 693
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->shouldCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 695
    new-instance v0, Lorg/wikipedia/page/tabs/Tab;

    invoke-direct {v0}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    .line 696
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getForegroundTabPosition()I

    move-result v1

    if-ne p3, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 699
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v2, v0}, Lorg/wikipedia/page/PageFragmentLoadState;->setTab(Lorg/wikipedia/page/tabs/Tab;)V

    .line 702
    :cond_4
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 703
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->trimTabCount()V

    .line 705
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/page/PageBackStackItem;

    invoke-direct {v0, p1, p2}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_5

    .line 707
    invoke-static {p1}, Lorg/wikipedia/page/PageCacher;->loadIntoCache(Lorg/wikipedia/page/PageTitle;)V

    .line 709
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 711
    :cond_6
    iget-object p3, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/wikipedia/page/PageFragmentLoadState;->setTab(Lorg/wikipedia/page/tabs/Tab;)V

    .line 712
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/page/PageBackStackItem;

    invoke-direct {v0, p1, p2}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private setBookmarkIconForPageSavedState(Z)V
    .locals 3

    .line 998
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    sget-object v1, Lorg/wikipedia/page/action/PageActionTab;->ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

    invoke-virtual {v1}, Lorg/wikipedia/page/action/PageActionTab;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1000
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 1001
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    const p1, 0x7f08009e

    goto :goto_0

    :cond_0
    const p1, 0x7f08009c

    :goto_0
    invoke-static {v2, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    .line 1000
    invoke-virtual {v1, v2, p1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1004
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->shouldLoadAsMobileWeb()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1005
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->shouldLoadAsMobileWeb()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private setCurrentTabAndReset(I)V
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 653
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    .line 654
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragmentLoadState;->setTab(Lorg/wikipedia/page/tabs/Tab;)V

    .line 657
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 658
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {p1}, Lorg/wikipedia/page/tabs/Tab;->squashBackstack()V

    .line 659
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    :cond_1
    return-void
.end method

.method private setupMessageHandlers()V
    .locals 3

    .line 1030
    new-instance v0, Lorg/wikipedia/page/PageFragment$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/PageFragment$5;-><init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/LinkHandler;

    .line 1048
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    const-string v2, "link"

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1050
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$VSf4KGoh6eLxMKPl714Dm6pF_f4;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$VSf4KGoh6eLxMKPl714Dm6pF_f4;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "setup"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1053
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$d6YnTW2PGGm5lnitxIjxrYtyGuo;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$d6YnTW2PGGm5lnitxIjxrYtyGuo;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "final_setup"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1059
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$ijKucVtj0S120M8_od07uxH9veQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$ijKucVtj0S120M8_od07uxH9veQ;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "reference"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1070
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$eRp4Z-8OyUpsyEKBUV5qgpYN86E;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$eRp4Z-8OyUpsyEKBUV5qgpYN86E;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "back_link"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1081
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$0xiggOPlRSgPW67deAg4Xg-q_7Q;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$0xiggOPlRSgPW67deAg4Xg-q_7Q;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "scroll_to_anchor"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1088
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$RSKvUCw1d9gTAMTCVkB8SHG8faU;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$RSKvUCw1d9gTAMTCVkB8SHG8faU;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1092
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$YamFkT4jhnufMmV4ZL4oeqBKh60;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$YamFkT4jhnufMmV4ZL4oeqBKh60;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "media"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1096
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$_v0-ARBL7qc-wEAgmQsB37g2Yp8;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$_v0-ARBL7qc-wEAgmQsB37g2Yp8;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "pronunciation"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1112
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$eFP_wcmTE4OmYGDV9QMYfosMuoQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$eFP_wcmTE4OmYGDV9QMYfosMuoQ;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "footer_item"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1133
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    sget-object v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;

    const-string v2, "read_more_titles_retrieved"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1136
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$Kfa8omzALHkXOLREi74LiCA5juQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$Kfa8omzALHkXOLREi74LiCA5juQ;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "view_license"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 1139
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$ucVsRGyG7-kG5rh12yl733YNbEE;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$ucVsRGyG7-kG5rh12yl733YNbEE;-><init>(Lorg/wikipedia/page/PageFragment;)V

    const-string v2, "view_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    return-void
.end method

.method private shouldCreateNewTab()Z
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldLoadFromBackstack(Landroid/app/Activity;)Z
    .locals 2

    .line 429
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.wikipedia.resume_reading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appShortcutContinueReading"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showFindReferenceInPage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 860
    :cond_0
    new-instance v0, Lorg/wikipedia/page/PageFragment$3;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/wikipedia/page/PageFragment$3;-><init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageFragment;->startSupportActionMode(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method private startGalleryActivity(Ljava/lang/String;)V
    .locals 3

    .line 1176
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1}, Lorg/wikipedia/views/ObservableWebView;->getLastTouchX()F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedPxToDp(F)I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v2}, Lorg/wikipedia/views/ObservableWebView;->getLastTouchY()F

    move-result v2

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedPxToDp(F)I

    move-result v2

    invoke-static {v1, v2}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getElementAtPosition(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$ywjzj7df-gD48HZIuXv_qfP8NV8;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/page/-$$Lambda$PageFragment$ywjzj7df-gD48HZIuXv_qfP8NV8;-><init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p1, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v0, 0x7f100145

    .line 1212
    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$V95DazDX8sqJe7jpj65-2TqZdco;

    invoke-direct {v1, p1}, Lorg/wikipedia/page/-$$Lambda$PageFragment$V95DazDX8sqJe7jpj65-2TqZdco;-><init>(Lcom/google/android/material/snackbar/Snackbar;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 1213
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method

.method private startLangLinksActivity()V
    .locals 3

    .line 1370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/wikipedia/language/LangLinksActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "org.wikipedia.langlinks_for_title"

    .line 1372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    const-string v2, "org.wikipedia.pagetitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private trimTabCount()V
    .locals 2

    .line 1387
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 1388
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 1

    .line 1329
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0, p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageUpdateProgressBar(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    invoke-interface {v0, p1, p2}, Lorg/wikipedia/page/PageFragment$Callback;->onPageAddToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    :cond_0
    return-void
.end method

.method public callback()Lorg/wikipedia/page/PageFragment$Callback;
    .locals 1

    .line 1458
    const-class v0, Lorg/wikipedia/page/PageFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageFragment$Callback;

    return-object v0
.end method

.method protected clearActivityActionBarTitle()V
    .locals 2

    .line 1010
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1011
    instance-of v1, v0, Lorg/wikipedia/page/PageActivity;

    if-eqz v1, :cond_0

    .line 1012
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->clearActionBarTitle()V

    :cond_0
    return-void
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

.method public getCurrentTab()Lorg/wikipedia/page/tabs/Tab;
    .locals 2

    .line 646
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    return-object v0
.end method

.method public getEditHandler()Lorg/wikipedia/edit/EditHandler;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    return-object v0
.end method

.method public getHistoryEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    return-object v0
.end method

.method getLeadImageEditLang()Ljava/lang/String;
    .locals 1

    .line 1462
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getCallToActionEditLang()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 1

    .line 1283
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/LinkHandler;

    return-object v0
.end method

.method public getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    return-object v0
.end method

.method public getPage()Lorg/wikipedia/page/Page;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    return-object v0
.end method

.method public getReferencesGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/page/references/PageReferences;->getReferencesGroup()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .line 1383
    iget-wide v0, p0, Lorg/wikipedia/page/PageFragment;->revision:J

    return-wide v0
.end method

.method public getSelectedReferenceIndex()I
    .locals 1

    .line 1293
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    invoke-virtual {v0}, Lorg/wikipedia/page/references/PageReferences;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getShareHandler()Lorg/wikipedia/page/shareafact/ShareHandler;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    return-object v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOriginal()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method public getTocHandler()Lorg/wikipedia/page/ToCHandler;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    return-object v0
.end method

.method public getToolbarMargin()I
    .locals 1

    .line 1311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageActivity;

    iget-object v0, v0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lorg/wikipedia/views/ObservableWebView;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    return-object v0
.end method

.method public goForward()V
    .locals 1

    .line 1242
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->goForward()Z

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 1

    .line 1342
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-interface {v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageHideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method isLoading()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$initWebViewListeners$2$PageFragment()V
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionFunnel;->touchSession()V

    return-void
.end method

.method public synthetic lambda$initWebViewListeners$3$PageFragment(IIZ)V
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageScrollFunnel:Lorg/wikipedia/analytics/PageScrollFunnel;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/analytics/PageScrollFunnel;->onPageScrolled(IIZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$maybeShowAnnouncement$29$PageFragment(Lorg/wikipedia/feed/announcement/AnnouncementList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1475
    invoke-static {}, Lorg/wikipedia/util/GeoUtil;->getGeoIPCountry()Ljava/lang/String;

    move-result-object v0

    .line 1476
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1477
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementList;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/announcement/Announcement;

    .line 1478
    invoke-static {v2, v0, v1}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->shouldShow(Lorg/wikipedia/feed/announcement/Announcement;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1479
    invoke-virtual {v2}, Lorg/wikipedia/feed/announcement/Announcement;->placement()Ljava/lang/String;

    move-result-object v3

    const-string v4, "article"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1480
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementShownDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/feed/announcement/Announcement;->id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1481
    new-instance p1, Lorg/wikipedia/page/AnnouncementDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lorg/wikipedia/page/AnnouncementDialog;-><init>(Landroid/content/Context;Lorg/wikipedia/feed/announcement/Announcement;)V

    const/4 v0, 0x0

    .line 1482
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1483
    invoke-virtual {p1}, Lorg/wikipedia/page/AnnouncementDialog;->show()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$null$25$PageFragment(Ljava/lang/String;)V
    .locals 9

    .line 1195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    const v2, 0x7f100452

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    .line 1202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 1203
    invoke-virtual {v3}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 1204
    invoke-virtual {v4}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getRevision()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v4, p1

    .line 1202
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;

    move-result-object p1

    const/16 v2, 0x34

    .line 1204
    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1202
    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$onActivityCreated$0$PageFragment(Landroid/view/View;)V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->refreshPage()V

    return-void
.end method

.method public synthetic lambda$onActivityCreated$1$PageFragment(Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageLoadErrorBackPressed()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onPageSetupEvent$5$PageFragment(Ljava/lang/String;)V
    .locals 2

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "\""

    const-string v1, ""

    .line 542
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/page/PageFragment;->revision:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 544
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onPageSetupEvent$6$PageFragment(Ljava/lang/String;)V
    .locals 8

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, [Lorg/wikipedia/page/Section;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/wikipedia/page/Section;

    if-eqz p1, :cond_1

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->sections:Ljava/util/List;

    const/4 p1, 0x0

    .line 555
    new-instance v7, Lorg/wikipedia/page/Section;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/Section;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 556
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->sections:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/Page;->setSections(Ljava/util/List;)V

    .line 558
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ToCHandler;->setupToC(Lorg/wikipedia/page/Page;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 559
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/ToCHandler;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$onPageSetupEvent$7$PageFragment(Ljava/lang/String;)V
    .locals 2

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/wikipedia/dataclient/page/Protection;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/page/Protection;

    .line 567
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageProperties;->setProtection(Lorg/wikipedia/dataclient/page/Protection;)V

    .line 568
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->canEdit()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v1, v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setUpEditButtons(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$12$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1051
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->onPageSetupEvent()V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$13$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1054
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1057
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->onPcsReady()V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$14$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1060
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1064
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lorg/wikipedia/page/references/PageReferences;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/references/PageReferences;

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 1066
    invoke-virtual {p1}, Lorg/wikipedia/page/references/PageReferences;->getReferencesGroup()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1067
    new-instance p1, Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-direct {p1}, Lorg/wikipedia/page/references/ReferenceDialog;-><init>()V

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$15$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 4

    const-string p1, "backLinks"

    .line 1071
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 1072
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1074
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1075
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "referenceId"

    .line 1077
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "referenceText"

    .line 1078
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1077
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/page/PageFragment;->showFindReferenceInPage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$16$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 2

    const-string p1, "rect"

    .line 1082
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p1

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "top"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p1

    .line 1086
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setScrollY(I)V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$17$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 3

    .line 1089
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/LinkHandler;

    const-string v0, "href"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 1090
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, ""

    .line 1089
    invoke-virtual {p1, v0, p2, v1}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$18$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 3

    .line 1093
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/LinkHandler;

    const-string v0, "href"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 1094
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, ""

    .line 1093
    invoke-virtual {p1, v0, p2, v1}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$19$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1097
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    if-nez p1, :cond_0

    .line 1098
    new-instance p1, Lorg/wikipedia/media/DefaultAvPlayer;

    new-instance v0, Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-direct {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;-><init>()V

    invoke-direct {p1, v0}, Lorg/wikipedia/media/DefaultAvPlayer;-><init>(Lorg/wikipedia/media/MediaPlayerImplementation;)V

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 1099
    invoke-interface {p1}, Lorg/wikipedia/media/AvPlayer;->init()V

    .line 1101
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    if-nez p1, :cond_1

    .line 1102
    new-instance p1, Lorg/wikipedia/page/PageFragment$AvCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/PageFragment$AvCallback;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageFragment$1;)V

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 1104
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    invoke-interface {p1}, Lorg/wikipedia/media/AvPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "url"

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1105
    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 1106
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    invoke-interface {v0, p1, p2, p2}, Lorg/wikipedia/media/AvPlayer;->play(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1108
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 1109
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    invoke-interface {p1}, Lorg/wikipedia/media/AvPlayer;->stop()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$20$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 2

    const-string p1, "itemType"

    .line 1113
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "talkPage"

    .line 1114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1116
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object p1

    sget-object p2, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    if-ne p1, p2, :cond_0

    .line 1117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1119
    :cond_0
    new-instance p1, Lorg/wikipedia/page/PageTitle;

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-string v1, "Talk"

    invoke-direct {p1, v1, p2, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 1120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "languages"

    .line 1122
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1123
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->startLangLinksActivity()V

    goto :goto_0

    :cond_2
    const-string p2, "lastEdited"

    .line 1124
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    const-string v0, "history"

    invoke-virtual {p2, v0}, Lorg/wikipedia/page/PageTitle;->getUriForAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    const-string p2, "coordinate"

    .line 1126
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageProperties;->getGeo()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageProperties;->getGeo()Landroid/location/Location;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/wikipedia/util/GeoUtil;->sendGeoIntent(Landroid/app/Activity;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, "disambiguation"

    .line 1128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$22$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10005b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$setupMessageHandlers$23$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1140
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startGalleryActivity$26$PageFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1182
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 1184
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    .line 1185
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getWidth()F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    invoke-virtual {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getHeight()F

    move-result v2

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1186
    invoke-virtual {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getTop()F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1187
    invoke-virtual {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getLeft()F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1188
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    const v1, 0x7f100452

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1192
    invoke-static {p2}, Lorg/wikipedia/gallery/GalleryActivity;->setTransitionInfo(Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;)V

    .line 1194
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;-><init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1207
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getSrc()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateBookmarkAndMenuOptionsFromDao$10$PageFragment(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageViewModel;->setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public synthetic lambda$updateBookmarkAndMenuOptionsFromDao$11$PageFragment(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 825
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageViewModel;->setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public synthetic lambda$updateBookmarkAndMenuOptionsFromDao$8$PageFragment()Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 818
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$updateBookmarkAndMenuOptionsFromDao$9$PageFragment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getReadingListPage()Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/wikipedia/page/action/PageActionTab$Callback;->updateBookmark(Z)V

    .line 822
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public synthetic lambda$verifyBeforeEditingDescription$24$PageFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "edit"

    invoke-static {p1, p2}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 1315
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-interface {v0, p1, p2}, Lorg/wikipedia/page/PageFragment$Callback;->onPageLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method public loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 753
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V

    return-void
.end method

.method public loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V
    .locals 3

    .line 768
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->clearActivityActionBarTitle()V

    .line 771
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    invoke-virtual {v0}, Lorg/wikipedia/util/ActiveTimer;->getElapsedSec()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->addTimeSpentReading(I)V

    .line 772
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    invoke-virtual {v0}, Lorg/wikipedia/util/ActiveTimer;->reset()V

    .line 774
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/ToCHandler;->setEnabled(Z)V

    .line 775
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 776
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageViewModel;->setTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 779
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageViewModel;->setTitleOriginal(Lorg/wikipedia/page/PageTitle;)V

    .line 780
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageViewModel;->setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 781
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageViewModel;->setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 782
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1, p5}, Lorg/wikipedia/page/PageViewModel;->setForceNetwork(Z)V

    .line 784
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 785
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 787
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {p1}, Lorg/wikipedia/views/ConfigurableTabLayout;->enableAllTabs()V

    const/4 p1, 0x1

    .line 789
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 791
    iput-boolean p5, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    .line 792
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    const-wide/16 p1, 0x0

    .line 793
    iput-wide p1, p0, Lorg/wikipedia/page/PageFragment;->revision:J

    .line 795
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->closePageScrollFunnel()V

    .line 796
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1, p3}, Lorg/wikipedia/page/PageFragmentLoadState;->load(Z)V

    .line 797
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    invoke-virtual {p1, p4}, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->setStagedScrollY(I)V

    .line 798
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptions()V

    return-void
.end method

.method public loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZ)V
    .locals 2

    .line 734
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object p2

    if-nez p2, :cond_0

    .line 737
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getFragment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 739
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->scrollToSection(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 744
    iget-object p4, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p4}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p4

    if-lez p4, :cond_3

    .line 745
    iget-object p4, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p4}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p4

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {p4}, Lorg/wikipedia/page/tabs/Tab;->clearBackstack()V

    :cond_3
    const/4 p4, 0x0

    .line 748
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZI)V

    return-void
.end method

.method public moveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V
    .locals 6

    .line 1363
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1365
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/page/PageFragment$Callback;->onPageMoveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V

    :cond_0
    return-void
.end method

.method public onActionModeShown(Landroid/view/ActionMode;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/shareafact/ShareHandler;->onTextSelected(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    .line 359
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 362
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-interface {v0, v1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageInitWebView(Lorg/wikipedia/views/ObservableWebView;)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->updateFontSize()V

    .line 371
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0402c0

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 373
    new-instance v0, Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {v0, p0}, Lorg/wikipedia/bridge/CommunicationBridge;-><init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 374
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->setupMessageHandlers()V

    .line 376
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$MOcfLPFnpXVdakFcqKCkxBZ7pZY;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$MOcfLPFnpXVdakFcqKCkxBZ7pZY;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$sr695C7ytI5cyUExSyNO8p966OQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$sr695C7ytI5cyUExSyNO8p966OQ;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    new-instance v0, Lorg/wikipedia/edit/EditHandler;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/EditHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 389
    new-instance v0, Lorg/wikipedia/page/ToCHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/views/PageScrollerView;

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/wikipedia/page/ToCHandler;-><init>(Lorg/wikipedia/page/PageFragment;Landroidx/drawerlayout/widget/FixedDrawerLayout;Lorg/wikipedia/views/PageScrollerView;Lorg/wikipedia/bridge/CommunicationBridge;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    .line 393
    new-instance v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-direct {v0, p0, v1, v2}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/leadimages/PageHeaderView;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 395
    new-instance v0, Lorg/wikipedia/page/shareafact/ShareHandler;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 397
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Lorg/wikipedia/LongPressHandler;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    const/4 v2, 0x2

    new-instance v3, Lorg/wikipedia/page/PageContainerLongPressHandler;

    invoke-direct {v3, p0}, Lorg/wikipedia/page/PageContainerLongPressHandler;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/LongPressHandler;-><init>(Landroid/view/View;ILorg/wikipedia/LongPressHandler$OverflowMenuListener;)V

    .line 401
    :cond_1
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    iget-object v5, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    iget-object v7, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    iget-object v8, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v9, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v10

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Lorg/wikipedia/page/PageFragmentLoadState;->setUp(Lorg/wikipedia/page/PageViewModel;Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/bridge/CommunicationBridge;Lorg/wikipedia/page/leadimages/LeadImagesHandler;Lorg/wikipedia/page/tabs/Tab;)V

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->shouldLoadFromBackstack(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 404
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->reloadFromBackstack()V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 837
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x33

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1000eb

    invoke-static {p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    .line 842
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZ)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1231
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->hide()V

    return v1

    .line 1235
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->goBack()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 637
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 640
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->isLoading()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    if-nez p1, :cond_0

    .line 641
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragmentLoadState;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/WikipediaApp;

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 311
    new-instance p1, Lorg/wikipedia/page/PageViewModel;

    invoke-direct {p1}, Lorg/wikipedia/page/PageViewModel;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 312
    new-instance p1, Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-direct {p1}, Lorg/wikipedia/page/PageFragmentLoadState;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ce

    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/page/leadimages/PageHeaderView;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    const p2, 0x7f0902e5

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/ObservableWebView;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 322
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->initWebViewListeners()V

    const p2, 0x7f0902cb

    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const p2, 0x7f0902dd

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 327
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    iget-object p3, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;->setScrollableChild(Landroid/view/View;)V

    .line 328
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    iget-object p3, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    const p2, 0x7f0902ca

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/page/PageActionTabLayout;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    .line 331
    iget-object p3, p0, Lorg/wikipedia/page/PageFragment;->pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    invoke-virtual {p2, p3}, Lorg/wikipedia/page/PageActionTabLayout;->setPageActionTabsCallback(Lorg/wikipedia/page/action/PageActionTab$Callback;)V

    const p2, 0x7f0902cc

    .line 333
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 340
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer;->deinit()V

    .line 342
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->cleanup()V

    .line 346
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tocHandler:Lorg/wikipedia/page/ToCHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->log()V

    .line 347
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/shareafact/ShareHandler;->dispose()V

    .line 348
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->dispose()V

    .line 349
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 350
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Lorg/wikipedia/views/ObservableWebView;->clearAllListeners()V

    .line 351
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    const/4 v0, 0x0

    .line 353
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsHighestPriorityEnabled(Z)V

    .line 354
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPageLoadError(Ljava/lang/Throwable;)V
    .locals 4

    .line 941
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 944
    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 945
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 947
    iget-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    if-eqz v1, :cond_1

    .line 948
    iput-boolean v0, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    .line 951
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->hidePageContent()V

    .line 952
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v1}, Lorg/wikipedia/bridge/CommunicationBridge;->onMetadataReady()V

    .line 954
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v1, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 955
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v2, 0x7f0904a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 958
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v3, 0x7f0904a9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 959
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/wikipedia/page/PageFragment;->getContentTopOffsetParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 961
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getTabLayoutOffsetParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 964
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment;->disableActionTabs(Ljava/lang/Throwable;)V

    .line 966
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->is404(Ljava/lang/Throwable;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 967
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 968
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 969
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageLoadError(Lorg/wikipedia/page/PageTitle;)V

    :cond_2
    return-void
.end method

.method public onPageMetadataLoaded()V
    .locals 5

    .line 491
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditHandler;->setPage(Lorg/wikipedia/page/Page;)V

    .line 495
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 498
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->initPageScrollFunnel()V

    .line 500
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getReadingListPage()Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getReadingListPage()Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    .line 503
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v4, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;

    invoke-direct {v4, v0, v2}, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V

    invoke-static {v4}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 510
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 503
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 513
    :cond_1
    iget-boolean v0, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/edit/EditHandler;->setPage(Lorg/wikipedia/page/Page;)V

    .line 515
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 518
    :cond_2
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->checkAndShowBookmarkOnboarding()V

    .line 519
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->maybeShowAnnouncement()V

    .line 521
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->onMetadataReady()V

    .line 524
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTopMargin()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setTopMargin(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-static {v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setFooter(Lorg/wikipedia/page/PageViewModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 608
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 610
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    invoke-virtual {v0}, Lorg/wikipedia/util/ActiveTimer;->pause()V

    .line 611
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    invoke-virtual {v0}, Lorg/wikipedia/util/ActiveTimer;->getElapsedSec()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->addTimeSpentReading(I)V

    .line 613
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->updateCurrentBackStackItem()V

    .line 614
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    .line 615
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->closePageScrollFunnel()V

    .line 617
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->backStackEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 620
    :goto_0
    invoke-static {v0, v1}, Lorg/wikipedia/settings/Prefs;->pageLastShown(J)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 625
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 626
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->initPageScrollFunnel()V

    .line 627
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    invoke-virtual {v0}, Lorg/wikipedia/util/ActiveTimer;->resume()V

    .line 629
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->viewForTransition:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public onToggleDimImages()V
    .locals 1

    .line 1298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public openFromExistingTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 4

    .line 719
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 720
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 726
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZ)V

    return-void

    .line 729
    :cond_2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragment;->setCurrentTabAndReset(I)V

    return-void
.end method

.method openImageInGallery(Ljava/lang/String;)V
    .locals 1

    .line 1466
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->openImageInGallery(Ljava/lang/String;)V

    return-void
.end method

.method public openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getForegroundTabPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 666
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    goto :goto_0

    .line 668
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getBackgroundTabPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageActivity;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageActivity;->animateTabsButton()V

    :goto_0
    return-void
.end method

.method public openInNewForegroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 674
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->getForegroundTabPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 675
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    return-void
.end method

.method public openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 2

    .line 1378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/wikipedia/search/SearchActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshPage()V
    .locals 1

    const/4 v0, 0x0

    .line 974
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageFragment;->refreshPage(I)V

    return-void
.end method

.method public refreshPage(I)V
    .locals 7

    .line 978
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 979
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->tabLayout:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-virtual {v0}, Lorg/wikipedia/views/ConfigurableTabLayout;->enableAllTabs()V

    .line 986
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 988
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageViewModel;->setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 989
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v6

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V

    return-void
.end method

.method public reloadFromBackstack()V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragmentLoadState;->setTab(Lorg/wikipedia/page/tabs/Tab;)V

    .line 410
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->backStackEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lorg/wikipedia/page/PageFragmentLoadState;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragment;->loadMainPageInForegroundTab()V

    :goto_0
    return-void
.end method

.method public scrollToSection(Ljava/lang/String;)V
    .locals 2

    .line 934
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->prepareToScrollTo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public setToolbarElevationEnabled(Z)V
    .locals 1

    .line 1349
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-interface {v0, p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageSetToolbarElevationEnabled(Z)V

    :cond_0
    return-void
.end method

.method setToolbarFadeEnabled(Z)V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageSetToolbarFadeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public sharePageLink()V
    .locals 2

    .line 847
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public showBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 2

    .line 1270
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method showFindInPage()V
    .locals 4

    .line 886
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    new-instance v0, Lorg/wikipedia/analytics/FindInPageFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 890
    invoke-virtual {v3}, Lorg/wikipedia/page/PageViewModel;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageProperties;->getPageId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/analytics/FindInPageFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 891
    new-instance v1, Lorg/wikipedia/page/FindInWebPageActionProvider;

    invoke-direct {v1, p0, v0}, Lorg/wikipedia/page/FindInWebPageActionProvider;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/FindInPageFunnel;)V

    .line 894
    new-instance v2, Lorg/wikipedia/page/PageFragment$4;

    invoke-direct {v2, p0, v1, v0}, Lorg/wikipedia/page/PageFragment$4;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/FindInWebPageActionProvider;Lorg/wikipedia/analytics/FindInPageFunnel;)V

    invoke-virtual {p0, v2}, Lorg/wikipedia/page/PageFragment;->startSupportActionMode(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public startDescriptionEditActivity(Ljava/lang/String;)V
    .locals 9

    .line 1164
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDescriptionEditTutorialEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x38

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1168
    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    .line 1169
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    const/4 v6, 0x0

    sget-object v7, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v2 .. v8}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x37

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public startSupportActionMode(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 1336
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageStartSupportActionMode(Landroid/view/ActionMode$Callback;)V

    :cond_0
    return-void
.end method

.method public updateBookmarkAndMenuOptions()V
    .locals 2

    .line 810
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->isInReadingList()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/wikipedia/page/action/PageActionTab$Callback;->updateBookmark(Z)V

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public updateBookmarkAndMenuOptionsFromDao()V
    .locals 4

    .line 818
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$YAX84jeybTiKC2crGceTqcrI2Ro;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$YAX84jeybTiKC2crGceTqcrI2Ro;-><init>(Lorg/wikipedia/page/PageFragment;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 819
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$d9SqNosoEU9R19jEu-73OP2a_6Q;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$d9SqNosoEU9R19jEu-73OP2a_6Q;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 820
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragment$xHvfCV_Eocoxl_TWTzQ3tc-Gllg;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$xHvfCV_Eocoxl_TWTzQ3tc-Gllg;-><init>(Lorg/wikipedia/page/PageFragment;)V

    new-instance v3, Lorg/wikipedia/page/-$$Lambda$PageFragment$B5pvuU3ACe8X08nZLs3i6AMk1Io;

    invoke-direct {v3, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$B5pvuU3ACe8X08nZLs3i6AMk1Io;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 824
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 818
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public updateFontSize()V
    .locals 3

    .line 806
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/WikipediaApp;->getFontSize(Landroid/view/Window;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method updateInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 3

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->getContentTopOffsetPx(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    add-int/2addr v0, p1

    sget p1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    add-int/2addr v0, p1

    .line 425
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->refreshView:Lorg/wikipedia/views/SwipeRefreshLayoutWithScroll;

    neg-int v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method

.method public verifyBeforeEditingDescription(Ljava/lang/String;)V
    .locals 3

    .line 1147
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->canEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTotalAnonDescriptionsEdited()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1149
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100094

    .line 1150
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100214

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragment$SJqq9ZdRz1Y3wmFJgmBV4WQdUoQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$SJqq9ZdRz1Y3wmFJgmBV4WQdUoQ;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 1151
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10009e

    const/4 v1, 0x0

    .line 1153
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1154
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 1156
    :cond_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->startDescriptionEditActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getEditHandler()Lorg/wikipedia/edit/EditHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditHandler;->showUneditableDialog()V

    :goto_0
    return-void
.end method

.method public wiktionaryShowDialogForTerm(Ljava/lang/String;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/shareafact/ShareHandler;->showWiktionaryDefinition(Ljava/lang/String;)V

    return-void
.end method
