.class public Lorg/wikipedia/history/HistoryFragment;
.super Landroidx/fragment/app/Fragment;
.source "HistoryFragment.java"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/history/HistoryFragment$SearchBar;,
        Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;,
        Lorg/wikipedia/history/HistoryFragment$ItemCallback;,
        Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;,
        Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;,
        Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;,
        Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;,
        Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;,
        Lorg/wikipedia/history/HistoryFragment$Callback;
    }
.end annotation


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

.field private app:Lorg/wikipedia/WikipediaApp;

.field private currentSearchQuery:Ljava/lang/String;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field historyEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field historyList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private itemCallback:Lorg/wikipedia/history/HistoryFragment$ItemCallback;

.field private searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

.field searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private selectedEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/wikipedia/history/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 76
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 77
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;-><init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 79
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;-><init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->itemCallback:Lorg/wikipedia/history/HistoryFragment$ItemCallback;

    .line 81
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;-><init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$1000(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/HistoryFragment$ItemCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->itemCallback:Lorg/wikipedia/history/HistoryFragment$ItemCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->toggleSelectPage(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->onPageClick(Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->beginMultiSelect()V

    return-void
.end method

.method static synthetic access$1402(Lorg/wikipedia/history/HistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->currentSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->reloadHistoryItems()V

    return-void
.end method

.method static synthetic access$400(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->deleteSelectedPages()V

    return-void
.end method

.method static synthetic access$700(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->onClearHistoryClick()V

    return-void
.end method

.method static synthetic access$800(Lorg/wikipedia/history/HistoryFragment;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$802(Lorg/wikipedia/history/HistoryFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$900(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/SearchActionModeCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

    return-object p0
.end method

.method private beginMultiSelect()V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-static {v0}, Lorg/wikipedia/history/SearchActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->finishActionMode()V

    :cond_0
    return-void
.end method

.method private callback()Lorg/wikipedia/history/HistoryFragment$Callback;
    .locals 1

    .line 542
    const-class v0, Lorg/wikipedia/history/HistoryFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/history/HistoryFragment$Callback;

    return-object v0
.end method

.method private deleteSelectedPages()V
    .locals 5

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/history/HistoryEntry;

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v3, p0, Lorg/wikipedia/history/HistoryFragment;->app:Lorg/wikipedia/WikipediaApp;

    const-class v4, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v3, v4}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/wikipedia/database/DatabaseClient;->delete(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    invoke-direct {p0, v0}, Lorg/wikipedia/history/HistoryFragment;->showDeleteItemsUndoSnackbar(Ljava/util/List;)V

    .line 248
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->reloadHistoryItems()V

    :cond_2
    return-void
.end method

.method private finishActionMode()V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$anJPvjMa5rz1-gsqPXTfcA4w0Ss(Lorg/wikipedia/history/HistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->onLoadItemsFinished(Ljava/util/List;)V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/history/HistoryFragment;
    .locals 1

    .line 84
    new-instance v0, Lorg/wikipedia/history/HistoryFragment;

    invoke-direct {v0}, Lorg/wikipedia/history/HistoryFragment;-><init>()V

    return-object v0
.end method

.method private onClearHistoryClick()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->callback()Lorg/wikipedia/history/HistoryFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lorg/wikipedia/history/HistoryFragment$Callback;->onClearHistory()V

    .line 189
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->reloadHistoryItems()V

    :cond_0
    return-void
.end method

.method private onLoadItemsFinished(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-static {v1}, Lorg/wikipedia/history/SearchActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/wikipedia/history/HistoryFragment$SearchBar;-><init>(Lorg/wikipedia/history/HistoryFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {p1, v0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->setList(Ljava/util/List;)V

    .line 286
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->updateEmptyState(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private onPageClick(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->callback()Lorg/wikipedia/history/HistoryFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lorg/wikipedia/history/HistoryFragment$Callback;->onLoadPage(Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method private reloadHistoryItems()V
    .locals 4

    .line 269
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 270
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$-GfoyQb7hXv0xlLXYbQZejPiMiE;

    invoke-direct {v1, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$-GfoyQb7hXv0xlLXYbQZejPiMiE;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 271
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 272
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$anJPvjMa5rz1-gsqPXTfcA4w0Ss;

    invoke-direct {v2, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$anJPvjMa5rz1-gsqPXTfcA4w0Ss;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    new-instance v3, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$IZuHEvIY4dpHPunQ-2iAv7G2hpo;

    invoke-direct {v3, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$IZuHEvIY4dpHPunQ-2iAv7G2hpo;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    .line 273
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private setUpScrollListener()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/history/HistoryFragment$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/history/HistoryFragment$1;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private showDeleteItemsUndoSnackbar(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/history/HistoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f100150

    new-array v2, v2, [Ljava/lang/Object;

    .line 254
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f100151

    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {v1, v0, v2}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f10014f

    .line 258
    new-instance v2, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$FvZMNMGEAp1Y2GiZD9gn0UDaDKU;-><init>(Lorg/wikipedia/history/HistoryFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 265
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private toggleSelectPage(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 216
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->finishActionMode()V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0004

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private unselectAllPages()V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 233
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateEmptyState(Ljava/lang/String;)V
    .locals 3

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->historyEmptyView:Landroid/view/View;

    iget-object v2, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 173
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    iget-object v2, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->historyEmptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$reloadHistoryItems$1$HistoryFragment()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    sget-object v0, Lorg/wikipedia/history/HistoryDbHelper;->INSTANCE:Lorg/wikipedia/history/HistoryDbHelper;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/history/HistoryDbHelper;->filterHistoryItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$reloadHistoryItems$2$HistoryFragment(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->onLoadItemsFinished(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$showDeleteItemsUndoSnackbar$0$HistoryFragment(Ljava/util/List;Landroid/view/View;)V
    .locals 2

    .line 259
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->app:Lorg/wikipedia/WikipediaApp;

    const-class v0, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object p2

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 261
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/wikipedia/database/DatabaseClient;->upsert(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->reloadHistoryItems()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->unselectAllPages()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 91
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->app:Lorg/wikipedia/WikipediaApp;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->unbinder:Lbutterknife/Unbinder;

    .line 99
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    const p3, 0x7f100386

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 101
    new-instance p2, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 102
    invoke-virtual {p2, p3}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->setSwipeableEnabled(Z)V

    .line 103
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 104
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 106
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment;->historyEmptyView:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->setUpScrollListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 149
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->clearList()V

    .line 150
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 151
    iput-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->unbinder:Lbutterknife/Unbinder;

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 139
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 133
    invoke-direct {p0}, Lorg/wikipedia/history/HistoryFragment;->reloadHistoryItems()V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 225
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowHistoryOfflineArticlesToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100153

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->shouldShowHistoryOfflineArticlesToast(Z)V

    :cond_0
    return-void
.end method
