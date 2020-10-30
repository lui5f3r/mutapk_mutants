.class public Lorg/wikipedia/readinglist/ReadingListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ReadingListFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;,
        Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;,
        Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;,
        Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListHeaderHolder;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;,
        Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;,
        Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;
    }
.end annotation


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

.field appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

.field private articleLimitMessageShown:Z

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

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

.field emptyView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

.field private headerCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

.field headerImageView:Lorg/wikipedia/readinglist/ReadingListHeaderView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

.field private multiSelectActionModeCallback:Lorg/wikipedia/views/MultiSelectActionModeCallback;

.field private readingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field private readingListId:J

.field private readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;

.field private readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;

.field searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private showOverflowMenu:Z

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private toolbarExpanded:Z

.field private touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 97
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 102
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    .line 105
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    .line 108
    new-instance v0, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    .line 109
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 110
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;

    .line 111
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;

    .line 112
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;

    .line 113
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->multiSelectActionModeCallback:Lorg/wikipedia/views/MultiSelectActionModeCallback;

    .line 114
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->articleLimitMessageShown:Z

    return-void
.end method

.method static synthetic access$1002(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/wikipedia/readinglist/ReadingListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/wikipedia/readinglist/ReadingListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/analytics/ReadingListsFunnel;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method static synthetic access$1600(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    return-void
.end method

.method static synthetic access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListItemView;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->rename()V

    return-void
.end method

.method static synthetic access$2200(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->delete()V

    return-void
.end method

.method static synthetic access$2300(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery()V

    return-void
.end method

.method static synthetic access$2500(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/wikipedia/readinglist/ReadingListFragment;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setStatusBarActionMode(Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/wikipedia/readinglist/ReadingListFragment;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode()V

    return-void
.end method

.method static synthetic access$3200(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->addSelectedPagesToList()V

    return-void
.end method

.method static synthetic access$3400(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->moveSelectedPagesToList()V

    return-void
.end method

.method static synthetic access$3500(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->deleteSelectedPages()V

    return-void
.end method

.method static synthetic access$3600(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->unselectAllPages()V

    return-void
.end method

.method static synthetic access$3700(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPagePositionInList(Lorg/wikipedia/readinglist/database/ReadingListPage;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/wikipedia/readinglist/ReadingListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    return p0
.end method

.method static synthetic access$802(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    return p1
.end method

.method static synthetic access$900(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    return-object p0
.end method

.method private addSelectedPagesToList()V
    .locals 4

    .line 457
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 461
    invoke-static {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 464
    invoke-static {v1, v3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object v1

    .line 463
    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    .line 465
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    :cond_1
    return-void
.end method

.method private beginMultiSelect()V
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-static {v0}, Lorg/wikipedia/history/SearchActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode()V

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-static {v0}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->multiSelectActionModeCallback:Lorg/wikipedia/views/MultiSelectActionModeCallback;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    :cond_1
    return-void
.end method

.method private delete()V
    .locals 5

    .line 483
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$YIDbIJOF2TX0XM-UPlaGUivaNN8;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$YIDbIJOF2TX0XM-UPlaGUivaNN8;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method private deleteSelectedPages()V
    .locals 5

    .line 444
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    .line 448
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 450
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logDeleteItem(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 451
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    new-instance v4, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Bj4GWNfZI4WamhCEqn7SJbm690s;

    invoke-direct {v4, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Bj4GWNfZI4WamhCEqn7SJbm690s;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeletePagesUndoSnackbar(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 452
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    :cond_0
    return-void
.end method

.method private finishActionMode()V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method private getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 5

    .line 561
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 563
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPagePositionInList(Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 7

    .line 986
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 987
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 988
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getSelectedPageCount()I
    .locals 4

    .line 410
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 411
    instance-of v3, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getSelectedPages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-nez v1, :cond_0

    return-object v0

    .line 434
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 435
    instance-of v3, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 437
    invoke-virtual {v2, v3}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected(Z)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getTransitionAnimationBundle(Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$Bj4GWNfZI4WamhCEqn7SJbm690s(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    return-void
.end method

.method private moveSelectedPagesToList()V
    .locals 6

    .line 470
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 474
    invoke-static {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-wide v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 477
    invoke-static {v3, v4, v1, v5}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    .line 478
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    :cond_1
    return-void
.end method

.method public static newInstance(J)Lorg/wikipedia/readinglist/ReadingListFragment;
    .locals 3

    .line 124
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;-><init>()V

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "readingListId"

    .line 126
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private rename()V
    .locals 4

    .line 373
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ntP_673REnZcWgPb4rkJQeHkyCw;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ntP_673REnZcWgPb4rkJQeHkyCw;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method private setSearchQuery()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 337
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateEmptyState(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->searchListsAndPages(Ljava/lang/String;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->setSwipeableEnabled(Z)V

    return-void
.end method

.method private setSortMode(II)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->getReadingListPageSortMode(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 367
    :goto_0
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListPageSortMode(I)V

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 369
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method private setStatusBarActionMode(Z)V
    .locals 4

    .line 875
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Z)V

    .line 876
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 877
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez p1, :cond_1

    goto :goto_1

    .line 878
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f0402c0

    invoke-static {p1, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    .line 877
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected(Z)V

    .line 399
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPageCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 401
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode()V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0004

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private unselectAllPages()V
    .locals 3

    .line 419
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    const/4 v2, 0x0

    .line 423
    invoke-virtual {v1, v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected(Z)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private update()V
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-direct {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return-void
.end method

.method private update(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;)V

    .line 291
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerImageView:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListHeaderView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 292
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->getReadingListPageSortMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingList;->sort(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 293
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery()V

    .line 294
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    :cond_2
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->articleLimitMessageShown:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lorg/wikipedia/settings/SiteInfoClient;->getMaxPagesPerReadingList()I

    move-result v1

    if-lt v0, v1, :cond_3

    const v0, 0x7f100315

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 298
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {}, Lorg/wikipedia/settings/SiteInfoClient;->getMaxPagesPerReadingList()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {v0, p1, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 300
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->articleLimitMessageShown:Z

    :cond_3
    return-void
.end method

.method private updateEmptyState(Ljava/lang/String;)V
    .locals 3

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 350
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->emptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 354
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateReadingListData()V
    .locals 4

    .line 305
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$KlZ0M4ou_-ZLgZgoWQCsqvTSyVg;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$KlZ0M4ou_-ZLgZgoWQCsqvTSyVg;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 306
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 307
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$WtTJuB1QFn6-sDZA02q-6Gt6SmU;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$WtTJuB1QFn6-sDZA02q-6Gt6SmU;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$dBSerO8EAhkZCu9MhnjdcadSSgE;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$dBSerO8EAhkZCu9MhnjdcadSSgE;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    .line 308
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$delete$8$ReadingListFragment()V
    .locals 3

    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/main/MainActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 485
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteReadingList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 484
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ReadingListFragment()V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {p0, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->refreshSync(Landroidx/fragment/app/Fragment;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void
.end method

.method public synthetic lambda$onDeleteItem$10$ReadingListFragment()V
    .locals 3

    .line 554
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logDeleteItem(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 555
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method public synthetic lambda$onOptionsItemSelected$1$ReadingListFragment()V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 255
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method public synthetic lambda$onOptionsItemSelected$2$ReadingListFragment()V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 263
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method public synthetic lambda$onToggleItemOffline$9$ReadingListFragment()V
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 498
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method public synthetic lambda$rename$7$ReadingListFragment()V
    .locals 3

    .line 374
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    .line 375
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->funnel:Lorg/wikipedia/analytics/ReadingListsFunnel;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logModifyList(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    return-void
.end method

.method public synthetic lambda$setSearchQuery$6$ReadingListFragment(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 340
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 341
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 342
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateEmptyState(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateReadingListData$3$ReadingListFragment()Lorg/wikipedia/readinglist/database/ReadingList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    iget-wide v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getListById(JZ)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$updateReadingListData$4$ReadingListFragment(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 310
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    const v2, 0x7f100389

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 313
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 312
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update()V

    return-void
.end method

.method public synthetic lambda$updateReadingListData$5$ReadingListFragment(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAddItemToOther(J)V
    .locals 2

    .line 513
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 518
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 517
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000e

    .line 201
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d000f

    .line 203
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c005e

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->unbinder:Lbutterknife/Unbinder;

    .line 138
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 139
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 140
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v1, p3}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Z)V

    .line 143
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 144
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0403f3

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 145
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 146
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0402c0

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    .line 149
    :cond_0
    new-instance p2, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 150
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 151
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 153
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 156
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/DrawableItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040261

    invoke-direct {v1, v2, v3, p3, v0}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 158
    new-instance p2, Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 159
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    invoke-virtual {p2, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 160
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 161
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-virtual {p2, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setThumbnailVisible(Z)V

    .line 162
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    const v1, 0x7f110160

    invoke-virtual {p2, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setTitleTextAppearance(I)V

    .line 163
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-virtual {p2, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setOverflowViewVisibility(I)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "readingListId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 167
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 169
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array p3, p3, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 170
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MiegCe8jKkWsi4Eqrf6SdpUBtGk;

    invoke-direct {p3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MiegCe8jKkWsi4Eqrf6SdpUBtGk;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 171
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :cond_1
    return-object p1
.end method

.method public onDeleteItem(J)V
    .locals 6

    .line 547
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 551
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 552
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Bj4GWNfZI4WamhCEqn7SJbm690s;

    invoke-direct {v4, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Bj4GWNfZI4WamhCEqn7SJbm690s;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    new-instance v5, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Ku9N3Ysf9_e780Pmp01TpO2nB0A;

    invoke-direct {v5, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Ku9N3Ysf9_e780Pmp01TpO2nB0A;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 192
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 193
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarListener:Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 194
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 195
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->unbinder:Lbutterknife/Unbinder;

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onMoveItemToOther(J)V
    .locals 4

    .line 524
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 529
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v1, v2, p1, v3}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 528
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 268
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 243
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSortMode(II)V

    return v1

    :pswitch_1
    const/4 p1, 0x0

    .line 240
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSortMode(II)V

    return v1

    .line 237
    :pswitch_2
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$SearchCallback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    return v1

    .line 252
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 253
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$5wgkCAGKCwDBrllzB93iI_SnHEA;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$5wgkCAGKCwDBrllzB93iI_SnHEA;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {p1, v0, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    :cond_0
    return v1

    .line 246
    :pswitch_4
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->rename()V

    return v1

    .line 260
    :pswitch_5
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_1

    .line 261
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$XKFg_dIa7KZryVm5GFodKQ8CiZc;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$XKFg_dIa7KZryVm5GFodKQ8CiZc;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {p1, v0, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    :cond_1
    return v1

    .line 249
    :pswitch_6
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->delete()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090245
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090251
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f090252

    .line 210
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090253

    .line 211
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->getReadingListPageSortMode(I)I

    move-result v3

    if-nez v3, :cond_0

    const v4, 0x7f10034e

    goto :goto_0

    :cond_0
    const v4, 0x7f10034d

    .line 213
    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    const v0, 0x7f100350

    goto :goto_1

    :cond_1
    const v0, 0x7f10034f

    .line 214
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f090251

    .line 216
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090254

    .line 217
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 218
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    const v4, 0x106000b

    const v5, 0x7f0403f3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 219
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    :goto_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 218
    invoke-virtual {v0, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    .line 221
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    :goto_3
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 220
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090247

    .line 224
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 225
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f090245

    .line 227
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 228
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    return-void
.end method

.method public onSelectItem(J)V
    .locals 0

    .line 535
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 539
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 540
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->beginMultiSelect()V

    .line 541
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_2
    return-void
.end method

.method public onShareItem(J)V
    .locals 0

    .line 504
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onToggleItemOffline(J)V
    .locals 2

    .line 492
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->getPageById(J)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 496
    :cond_0
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$pz0ZWlORkUKmLGAxWqDL0VMaalU;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$pz0ZWlORkUKmLGAxWqDL0VMaalU;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {p2, v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->togglePageOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method
