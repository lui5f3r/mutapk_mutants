.class public Lorg/wikipedia/readinglist/ReadingListsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ReadingListsFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/SortReadingListsDialog$Callback;
.implements Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/ReadingListsFragment$EventBusConsumer;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;,
        Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;
    }
.end annotation


# static fields
.field public static final ARTICLE_ITEM_IMAGE_DIMENSION:I = 0x39

.field private static final SAVE_COUNT_LIMIT:I = 0x3

.field private static final SHOW_ONBOARDING_VISIT_COUNT:I = 0x2


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field contentContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private currentSearchQuery:Ljava/lang/String;

.field private displayedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field emptyContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field emptyMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field emptyTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

.field onboardingView:Lorg/wikipedia/views/MessageCardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

.field private readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;

.field private readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;

.field readingListView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;

.field searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 95
    new-instance v0, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    .line 96
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 98
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    .line 99
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;

    .line 100
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;

    .line 101
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;

    .line 103
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 104
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    return-void
.end method

.method static synthetic access$1000(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/wikipedia/readinglist/ReadingListsFragment;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/wikipedia/readinglist/ReadingListsFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/analytics/ReadingListsFunnel;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/wikipedia/readinglist/ReadingListsFragment;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->enableLayoutTransition(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->showReadingListsSyncDialog()V

    return-void
.end method

.method static synthetic access$600(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;

    return-object p0
.end method

.method private enableLayoutTransition(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 329
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 332
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :goto_0
    return-void
.end method

.method private getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 5

    .line 259
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 260
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$maybeShowOnboarding$3(Landroid/view/View;)V
    .locals 0

    .line 758
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->setSyncEnabledWithSetup()V

    return-void
.end method

.method private maybeDeleteListFromIntent()V
    .locals 8

    .line 662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deleteReadingList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 667
    instance-of v3, v2, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;

    invoke-direct {v7, p0, v2}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v3, v6, v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private maybeShowListLimitMessage()V
    .locals 3

    .line 403
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const v0, 0x7f10035f

    .line 404
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {v1, v0, v2}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method private maybeShowOnboarding(Ljava/lang/String;)V
    .locals 5

    .line 747
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 751
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result p1

    const v0, 0x7f10035d

    const v1, 0x7f04036a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 752
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncReminderEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 753
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result p1

    if-nez p1, :cond_1

    .line 754
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v4, 0x7f100370

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageTitle(Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v4, 0x7f10036f

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageText(Ljava/lang/String;)V

    .line 756
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 757
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v1, 0x7f10036e

    sget-object v4, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$Y9-N12z8_UsFNshYpWlwiMSp1vk;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$Y9-N12z8_UsFNshYpWlwiMSp1vk;

    invoke-virtual {p1, v1, v4, v3}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;Z)V

    .line 759
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$Ygn9ITrJxIZeIXoUPWyczGnLeEs;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$Ygn9ITrJxIZeIXoUPWyczGnLeEs;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/views/MessageCardView;->setNegativeButton(ILandroid/view/View$OnClickListener;Z)V

    .line 763
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 764
    :cond_1
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListLoginReminderEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 765
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result p1

    if-nez p1, :cond_2

    .line 766
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v4, 0x7f10032d

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageTitle(Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v4, 0x7f100361

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/wikipedia/views/MessageCardView;->setMessageText(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lorg/wikipedia/views/MessageCardView;->setImageResource(IZ)V

    .line 769
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const v1, 0x7f100360

    new-instance v4, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$jVHkTfAAgpCy9CpCUXDXjagK79M;

    invoke-direct {v4, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$jVHkTfAAgpCy9CpCUXDXjagK79M;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {p1, v1, v4, v3}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;Z)V

    .line 776
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$dvZgPGD5ioORx4cYCo65k581Urg;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$dvZgPGD5ioORx4cYCo65k581Urg;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/views/MessageCardView;->setNegativeButton(ILandroid/view/View$OnClickListener;Z)V

    .line 781
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance()Lorg/wikipedia/readinglist/ReadingListsFragment;
    .locals 1

    .line 111
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;-><init>()V

    return-object v0
.end method

.method public static refreshSync(Landroidx/fragment/app/Fragment;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 1

    .line 317
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->promptLogInToSyncDialog(Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 319
    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 321
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 322
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSyncWithRefresh()V

    :goto_0
    return-void
.end method

.method private setEmptyContainerVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->setWindowSoftInputModeResizable(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private setUpEmptyContainer()V
    .locals 2

    .line 431
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    const/4 v1, 0x0

    .line 432
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyTitle:Landroid/widget/TextView;

    const v1, 0x7f1001da

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyMessage:Landroid/widget/TextView;

    const v1, 0x7f1001d9

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyTitle:Landroid/widget/TextView;

    const v1, 0x7f10037b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyMessage:Landroid/widget/TextView;

    const v1, 0x7f10035c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setUpScrollListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private showReadingListsSyncDialog()V
    .locals 1

    .line 737
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->promptEnableSyncDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->promptLogInToSyncDialog(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sortListsBy(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 310
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListSortMode(I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSortMode(I)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSortMode(I)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSortMode(I)V

    .line 313
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method private updateEmptyState(Ljava/lang/String;)V
    .locals 3

    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setUpEmptyContainer()V

    .line 413
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setEmptyContainerVisibility(Z)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    invoke-direct {p0, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setEmptyContainerVisibility(Z)V

    :goto_0
    return-void
.end method

.method private updateLists(Ljava/lang/String;Z)V
    .locals 2

    .line 341
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->maybeShowOnboarding(Ljava/lang/String;)V

    .line 342
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$blloNfp7-S8IHwh1FTokARBUSoQ;

    invoke-direct {v1, p0, p2, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$blloNfp7-S8IHwh1FTokARBUSoQ;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;ZLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->searchListsAndPages(Ljava/lang/String;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$maybeDeleteListFromIntent$2$ReadingListsFragment(Ljava/lang/Object;)V
    .locals 3

    .line 669
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 670
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logDeleteList(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 671
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method public synthetic lambda$maybeShowOnboarding$4$ReadingListsFragment(Landroid/view/View;)V
    .locals 1

    .line 760
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 761
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncReminderEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$maybeShowOnboarding$5$ReadingListsFragment(Landroid/view/View;)V
    .locals 0

    .line 771
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lorg/wikipedia/feed/FeedFragment$Callback;

    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/FeedFragment$Callback;

    invoke-interface {p1}, Lorg/wikipedia/feed/FeedFragment$Callback;->onLoginRequested()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$maybeShowOnboarding$6$ReadingListsFragment(Landroid/view/View;)V
    .locals 1

    .line 777
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 778
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListLoginReminderEnabled(Z)V

    const/4 p1, 0x0

    .line 779
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateEmptyState(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ReadingListsFragment()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {p0, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->refreshSync(Landroidx/fragment/app/Fragment;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void
.end method

.method public synthetic lambda$updateLists$1$ReadingListsFragment(ZLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 343
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;

    invoke-direct {v0, p0, p3}, Lorg/wikipedia/readinglist/ReadingListsFragment$2;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 375
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 376
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 382
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 387
    :cond_2
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 389
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 391
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 394
    :goto_2
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 395
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->maybeShowListLimitMessage()V

    .line 396
    invoke-direct {p0, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateEmptyState(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->maybeDeleteListFromIntent()V

    .line 398
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAddItemToOther(J)V
    .locals 2

    .line 225
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 230
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 229
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainActivity;

    invoke-virtual {v0, p0}, Lorg/wikipedia/main/MainActivity;->isCurrentFragmentSelected(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0011

    .line 185
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->unbinder:Lbutterknife/Unbinder;

    .line 125
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    const p3, 0x7f10038a

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 126
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lorg/wikipedia/views/DrawableItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040261

    invoke-direct {p3, v1, v2}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 129
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->setUpScrollListener()V

    .line 130
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p3

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$EventBusConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$EventBusConsumer;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V

    invoke-virtual {p3, v1}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 131
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p3, 0x1

    new-array v1, p3, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400c5

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 132
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$4RCNYiUcuk_Pwoc6-lfBDLohiGU;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$4RCNYiUcuk_Pwoc6-lfBDLohiGU;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 133
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 136
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    invoke-direct {p0, p3}, Lorg/wikipedia/readinglist/ReadingListsFragment;->enableLayoutTransition(Z)V

    return-object p1
.end method

.method public onDeleteItem(J)V
    .locals 6

    .line 250
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;

    invoke-direct {v4, p0}, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    new-instance v5, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;

    invoke-direct {v5, p0}, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 161
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 163
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 164
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->unbinder:Lbutterknife/Unbinder;

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onMoveItemToOther(J)V
    .locals 4

    .line 235
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v1

    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v1, v2, p1, v3}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 239
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090242

    if-eq v0, v2, :cond_1

    const v2, 0x7f090251

    if-eq v0, v2, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;

    .line 194
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    return v1

    .line 197
    :cond_1
    new-instance p1, Lorg/wikipedia/views/ReadingListsOverflowView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/wikipedia/views/ReadingListsOverflowView;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainActivity;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    invoke-virtual {p1, v0, v2}, Lorg/wikipedia/views/ReadingListsOverflowView;->show(Landroid/view/View;Lorg/wikipedia/views/ReadingListsOverflowView$Callback;)V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 177
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method public onSelectItem(J)V
    .locals 0

    return-void
.end method

.method public onShareItem(J)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onSortOptionClick(I)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->sortListsBy(I)V

    return-void
.end method

.method public onToggleItemOffline(J)V
    .locals 2

    .line 207
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {p2, v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->togglePageOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public updateLists()V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    return-void
.end method
