.class public Lorg/wikipedia/main/MainFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainFragment.java"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;
.implements Lorg/wikipedia/feed/FeedFragment$Callback;
.implements Lorg/wikipedia/history/HistoryFragment$Callback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/main/MainFragment$DrawerViewCallback;,
        Lorg/wikipedia/main/MainFragment$EventBusConsumer;,
        Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;,
        Lorg/wikipedia/main/MainFragment$PageChangeCallback;,
        Lorg/wikipedia/main/MainFragment$Callback;
    }
.end annotation


# static fields
.field private static final SHOW_EDITS_SNACKBAR_COUNT:I = 0x2


# instance fields
.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

.field private downloadReceiverCallback:Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;

.field moreContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field navTabContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

.field private pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

.field tabLayout:Lorg/wikipedia/navtab/NavTabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field viewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 101
    new-instance v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-direct {v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 102
    new-instance v0, Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;-><init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiverCallback:Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;

    .line 103
    new-instance v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/main/MainFragment$PageChangeCallback;-><init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 104
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$400(Lorg/wikipedia/main/MainFragment;)Lorg/wikipedia/main/MainFragment$Callback;
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->callback()Lorg/wikipedia/main/MainFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/main/MainFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    return-void
.end method

.method private callback()Lorg/wikipedia/main/MainFragment$Callback;
    .locals 1

    .line 543
    const-class v0, Lorg/wikipedia/main/MainFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment$Callback;

    return-object v0
.end method

.method private copyLink(Ljava/lang/String;)V
    .locals 2

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/wikipedia/util/ClipboardUtil;->setPlainText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const p1, 0x7f100032

    .line 444
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private download(Lorg/wikipedia/feed/image/FeaturedImage;)V
    .locals 2

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lorg/wikipedia/main/MainFragment;->setPendingDownload(Lorg/wikipedia/feed/image/FeaturedImage;)V

    .line 453
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->download(Landroid/content/Context;Lorg/wikipedia/feed/image/FeaturedImage;)V

    const p1, 0x7f100147

    .line 454
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private goToTab(Lorg/wikipedia/navtab/NavTab;)V
    .locals 2

    .line 476
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    return-void
.end method

.method static synthetic lambda$onClearHistory$2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 386
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-class v1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/database/DatabaseClient;->deleteAll()V

    return-void
.end method

.method private lastPageViewedWithin(I)Z
    .locals 5

    .line 448
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->pageLastShown()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private maybeShowEditsTooltip()V
    .locals 6

    .line 501
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowSuggestedEditsTooltip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getExploreFeedVisitCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 503
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setShouldShowSuggestedEditsTooltip(Z)V

    .line 504
    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    sget-object v2, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v2}, Lorg/wikipedia/navtab/NavTab;->id()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const v2, 0x7f10017e

    new-array v4, v3, [Ljava/lang/Object;

    .line 505
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f10017f

    .line 506
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lorg/wikipedia/util/FeedbackUtil;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    :cond_1
    return-void
.end method

.method public static newInstance()Lorg/wikipedia/main/MainFragment;
    .locals 2

    .line 120
    new-instance v0, Lorg/wikipedia/main/MainFragment;

    invoke-direct {v0}, Lorg/wikipedia/main/MainFragment;-><init>()V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-object v0
.end method

.method private refreshContents()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 481
    instance-of v1, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v1, :cond_0

    .line 482
    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->refresh()V

    goto :goto_0

    .line 483
    :cond_0
    instance-of v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    if-eqz v1, :cond_1

    .line 484
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    goto :goto_0

    .line 485
    :cond_1
    instance-of v1, v0, Lorg/wikipedia/history/HistoryFragment;

    if-eqz v1, :cond_2

    .line 486
    check-cast v0, Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    goto :goto_0

    .line 487
    :cond_2
    instance-of v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    if-eqz v1, :cond_3

    .line 488
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents()V

    :cond_3
    :goto_0
    return-void
.end method

.method private requestWriteExternalStoragePermission()V
    .locals 1

    const/16 v0, 0x2c

    .line 462
    invoke-static {p0, v0}, Lorg/wikipedia/util/PermissionUtil;->requestWriteStorageRuntimePermissions(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private setPendingDownload(Lorg/wikipedia/feed/image/FeaturedImage;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment;->pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

    return-void
.end method

.method private updateFeedHiddenCards()V
    .locals 2

    .line 493
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 494
    instance-of v1, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v1, :cond_0

    .line 495
    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->updateHiddenCards()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 512
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "appShortcutRandomizer"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v0}, Lorg/wikipedia/random/RandomActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "appShortcutSearch"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "appShortcutContinueReading"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "deleteReadingList"

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->goToTab(Lorg/wikipedia/navtab/NavTab;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "goToMainTab"

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    .line 259
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v1

    sget-object v2, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v2}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    .line 260
    invoke-virtual {v1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v2}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 261
    :cond_4
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab;->of(I)Lorg/wikipedia/navtab/NavTab;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->goToTab(Lorg/wikipedia/navtab/NavTab;)V

    goto :goto_0

    :cond_5
    const-string v0, "goToSETab"

    .line 262
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 263
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab;->of(I)Lorg/wikipedia/navtab/NavTab;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->goToTab(Lorg/wikipedia/navtab/NavTab;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    .line 264
    invoke-direct {p0, v0}, Lorg/wikipedia/main/MainFragment;->lastPageViewedWithin(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "returnToMain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreateView$0$MainFragment(Landroid/view/MenuItem;)Z
    .locals 3

    .line 139
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->scrollToTop()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/history/HistoryFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    sget-object v2, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v2}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 143
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    return v1

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return v1
.end method

.method public synthetic lambda$onFeedAddPageToList$1$MainFragment(Lorg/wikipedia/history/HistoryEntry;J)V
    .locals 0

    .line 293
    invoke-virtual {p0, p2, p3, p1}, Lorg/wikipedia/main/MainFragment;->onFeedMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "android.speech.extra.RESULTS"

    .line 192
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 194
    sget-object p2, Lorg/wikipedia/Constants$InvokeSource;->VOICE:Lorg/wikipedia/Constants$InvokeSource;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x34

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 197
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x35

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 200
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    .line 201
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowSuggestedEditsTooltip()Z

    move-result p1

    if-nez p1, :cond_9

    const p1, 0x7f100177

    .line 202
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_5

    .line 205
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 p1, 0xb

    if-ne p2, p1, :cond_4

    .line 210
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    invoke-static {}, Lorg/wikipedia/feed/mainpage/MainPageClient;->getMainPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    const/16 p3, 0x8

    invoke-direct {p1, p2, p3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    if-ne p2, p1, :cond_9

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x3e

    const/4 v2, 0x2

    if-ne p1, v0, :cond_6

    if-eq p2, v1, :cond_7

    :cond_6
    const/16 v0, 0x29

    if-ne p1, v0, :cond_8

    if-eq p2, v1, :cond_7

    if-ne p2, v2, :cond_8

    .line 218
    :cond_7
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    if-ne p2, v2, :cond_9

    .line 220
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->updateFeedHiddenCards()V

    goto :goto_0

    .line 223
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 416
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lorg/wikipedia/BackPressedHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/wikipedia/BackPressedHandler;

    invoke-interface {v0}, Lorg/wikipedia/BackPressedHandler;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClearHistory()V
    .locals 3

    .line 386
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/main/-$$Lambda$MainFragment$KDHssvlPOQFAMaTgQVUVOnbsS_w;->INSTANCE:Lorg/wikipedia/main/-$$Lambda$MainFragment$KDHssvlPOQFAMaTgQVUVOnbsS_w;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    .line 387
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0c0054

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/main/MainFragment;->unbinder:Lbutterknife/Unbinder;

    .line 131
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/main/MainFragment$EventBusConsumer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/wikipedia/main/MainFragment$EventBusConsumer;-><init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V

    invoke-virtual {v0, v2}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 133
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 134
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;

    invoke-direct {v0, p0}, Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    .line 136
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->moreContainer:Landroid/view/View;

    aput-object v0, p2, v1

    invoke-static {p2}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 138
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    new-instance v0, Lorg/wikipedia/main/-$$Lambda$MainFragment$pxUxbtKDuXBZ6tUMWz8W_e72Q5Y;

    invoke-direct {v0, p0}, Lorg/wikipedia/main/-$$Lambda$MainFragment$pxUxbtKDuXBZ6tUMWz8W_e72Q5Y;-><init>(Lorg/wikipedia/main/MainFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 150
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->maybeShowEditsTooltip()V

    if-nez p3, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/wikipedia/main/MainFragment;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsHighestPriorityEnabled(Z)V

    .line 180
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 182
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 183
    iput-object v1, p0, Lorg/wikipedia/main/MainFragment;->unbinder:Lbutterknife/Unbinder;

    .line 184
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onFeaturedImageSelected(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
    .locals 6

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->age()I

    move-result v1

    .line 351
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->filename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->baseImage()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    const/4 v5, 0x3

    .line 350
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/feed/image/FeaturedImage;Lorg/wikipedia/dataclient/WikiSite;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x34

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onFeedAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 293
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v3, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;

    invoke-direct {v3, p0, p1}, Lorg/wikipedia/main/-$$Lambda$MainFragment$rtzDeNHys6OSd8G7FNxJlF5pGtk;-><init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 295
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method public onFeedDownloadImage(Lorg/wikipedia/feed/image/FeaturedImage;)V
    .locals 1

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/PermissionUtil;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->setPendingDownload(Lorg/wikipedia/feed/image/FeaturedImage;)V

    .line 343
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->requestWriteExternalStoragePermission()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->download(Lorg/wikipedia/feed/image/FeaturedImage;)V

    :goto_0
    return-void
.end method

.method public onFeedMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 301
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 302
    invoke-virtual {p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, p2, p3, v2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 301
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onFeedNewsItemSelected(Lorg/wikipedia/feed/news/NewsItemCard;Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;)V
    .locals 3

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->getImageView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f100450

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/news/NewsItemCard;->item()Lorg/wikipedia/feed/news/NewsItem;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/news/NewsItemCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/wikipedia/feed/news/NewsActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/feed/news/NewsItem;Lorg/wikipedia/dataclient/WikiSite;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/news/NewsItemCard;->image()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFeedRemovePageFromList(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f10032b

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFeedSearchRequested(Landroid/view/View;)V
    .locals 2

    .line 270
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->FEED_BAR:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFeedSelectPageFromExistingTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->newIntentForExistingTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFeedShareImage(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
    .locals 7

    .line 322
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->baseImage()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->baseImage()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem;->getOriginal()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getSource()Ljava/lang/String;

    move-result-object v6

    .line 324
    new-instance v0, Lorg/wikipedia/main/MainFragment$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v4

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/main/MainFragment$1;-><init>(Lorg/wikipedia/main/MainFragment;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/image/FeaturedImageCard;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->get(Landroid/content/Context;)V

    return-void
.end method

.method public onFeedSharePage(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onFeedVoiceSearchRequested()V
    .locals 3

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2d

    .line 277
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f10010e

    .line 279
    invoke-static {p0, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    :goto_0
    return-void
.end method

.method public onGoOffline()V
    .locals 2

    .line 425
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 426
    instance-of v1, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v1, :cond_0

    .line 427
    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->onGoOffline()V

    goto :goto_0

    .line 428
    :cond_0
    instance-of v1, v0, Lorg/wikipedia/history/HistoryFragment;

    if-eqz v1, :cond_1

    .line 429
    check-cast v0, Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGoOnline()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 435
    instance-of v1, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v1, :cond_0

    .line 436
    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->onGoOnline()V

    goto :goto_0

    .line 437
    :cond_0
    instance-of v1, v0, Lorg/wikipedia/history/HistoryFragment;

    if-eqz v1, :cond_1

    .line 438
    check-cast v0, Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 406
    invoke-static {p1, v2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 405
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 400
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->copyLink(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/wikipedia/main/MainFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/wikipedia/main/MainFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onLoadPage(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLoginRequested()V
    .locals 2

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "navigation"

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method onMoreClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 166
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;-><init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V

    invoke-static {v1}, Lorg/wikipedia/navtab/MenuNavTabDialog;->newInstance(Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;)Lorg/wikipedia/navtab/MenuNavTabDialog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 161
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->setCallback(Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    .line 245
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {p3}, Lorg/wikipedia/util/PermissionUtil;->isPermitted([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

    if-eqz p1, :cond_2

    .line 235
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->download(Lorg/wikipedia/feed/image/FeaturedImage;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment;->setPendingDownload(Lorg/wikipedia/feed/image/FeaturedImage;)V

    const-string p1, "Write permission was denied by user"

    .line 239
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->i(Ljava/lang/CharSequence;)V

    const p1, 0x7f100146

    .line 240
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiverCallback:Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->setCallback(Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    const-wide/16 v0, 0x0

    .line 175
    invoke-static {v0, v1}, Lorg/wikipedia/settings/Prefs;->pageLastShown(J)V

    return-void
.end method

.method public openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/wikipedia/search/SearchActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100454

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    const/16 v0, 0x3e

    if-eqz p3, :cond_1

    .line 472
    invoke-virtual {p3}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestUpdateToolbarElevation()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 376
    instance-of v1, v0, Lorg/wikipedia/feed/FeedFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/wikipedia/main/MainFragment;->updateToolbarElevation(Z)V

    return-void
.end method

.method public setBottomNavVisible(Z)V
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->navTabContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateToolbarElevation(Z)V
    .locals 1

    .line 369
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->callback()Lorg/wikipedia/main/MainFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lorg/wikipedia/main/MainFragment;->callback()Lorg/wikipedia/main/MainFragment$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/main/MainFragment$Callback;->updateToolbarElevation(Z)V

    :cond_0
    return-void
.end method
