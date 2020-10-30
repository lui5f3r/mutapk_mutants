.class public Lorg/wikipedia/search/SearchResultsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;,
        Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;,
        Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;,
        Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;,
        Lorg/wikipedia/search/SearchResultsFragment$Callback;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x14

.field private static final DELAY_MILLIS:I = 0x12c

.field private static final MAX_CACHE_SIZE_SEARCH_RESULTS:I = 0x4


# instance fields
.field private currentSearchTerm:Ljava/lang/String;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private lastFullTextResults:Lorg/wikipedia/search/SearchResults;

.field private final resultsCountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field searchErrorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final searchResultsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field searchResultsContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final searchResultsCountCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field searchResultsDisplay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchResultsList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchSuggestion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final totalResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCache:Landroidx/collection/LruCache;

    .line 87
    new-instance v0, Landroidx/collection/LruCache;

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCountCache:Landroidx/collection/LruCache;

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->totalResults:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->resultsCountList:Ljava/util/List;

    .line 92
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment;->totalResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment;->resultsCountList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResults;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment;->lastFullTextResults:Lorg/wikipedia/search/SearchResults;

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->doFullTextSearch(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private addSearchResultsFromTabs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 248
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    new-instance v0, Lorg/wikipedia/search/SearchResult;

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/search/SearchResult$SearchResultType;->TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/search/SearchResult$SearchResultType;)V

    .line 250
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private cache(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 640
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 642
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;
    .locals 1

    .line 669
    const-class v0, Lorg/wikipedia/search/SearchResultsFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/search/SearchResultsFragment$Callback;

    return-object v0
.end method

.method private cancelSearchTask()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    .line 297
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private clearResults()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults(Z)V

    return-void
.end method

.method private clearResults(Z)V
    .locals 2

    .line 408
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->lastFullTextResults:Lorg/wikipedia/search/SearchResults;

    .line 418
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->totalResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 419
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->resultsCountList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 421
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getAdapter()Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private displayResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/search/SearchResult;

    .line 436
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment;->totalResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/search/SearchResult;

    .line 437
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v4

    invoke-virtual {v3}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment;->totalResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getAdapter()Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private displayResultsCount(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->resultsCountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->resultsCountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getAdapter()Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private displayTime(J)I
    .locals 3

    .line 664
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private doFullTextSearch(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    .line 306
    iget-object v8, p0, Lorg/wikipedia/search/SearchResultsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "continue"

    .line 307
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    const-string v1, "gsroffset"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_1
    const/16 p2, 0x14

    .line 306
    invoke-interface {v0, p1, p2, v2, v1}, Lorg/wikipedia/dataclient/Service;->fullTextSearch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 308
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 309
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$AUrc94-NVC5aS2Ctae6FCPQem5o;

    invoke-direct {v0, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$AUrc94-NVC5aS2Ctae6FCPQem5o;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    .line 310
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v9, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jrj6dcqNWTTnDmVc5dTlc_nRWDY;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jrj6dcqNWTTnDmVc5dTlc_nRWDY;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;JZ)V

    .line 330
    invoke-virtual {p2, v9}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 348
    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Observable;->toList()Lio/reactivex/rxjava3/core/Single;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$n_CzpGphg9E7U4vYZ8IE_OnGe8g;

    invoke-direct {p3, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$n_CzpGphg9E7U4vYZ8IE_OnGe8g;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    .line 349
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Single;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$p22lUFOlYw8eUYHEYk7Dl8WRqbQ;

    invoke-direct {p3, p0, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$p22lUFOlYw8eUYHEYk7Dl8WRqbQ;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;)V

    new-instance p1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;

    invoke-direct {p1, p0, v6, v7}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;-><init>(Lorg/wikipedia/search/SearchResultsFragment;J)V

    .line 350
    invoke-virtual {p2, p3, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 306
    invoke-virtual {v8, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private doSearchResultsCountObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0BkX14-_BFFNKfHh7xpmUpnqJTQ;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0BkX14-_BFFNKfHh7xpmUpnqJTQ;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 391
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 392
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;

    .line 393
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private doTitlePrefixSearch(Ljava/lang/String;Z)V
    .locals 5

    .line 191
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->cancelSearchTask()V

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 193
    invoke-direct {p0, v2}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    .line 195
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x12c

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, p2}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;

    invoke-direct {v3, p0, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 228
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 229
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$7G6rFg7iURyopWQKrHBw3o1TY_Q;

    invoke-direct {v3, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$7G6rFg7iURyopWQKrHBw3o1TY_Q;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    .line 230
    invoke-virtual {p2, v3}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;J)V

    new-instance p1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$2gmAVGrpcavmUtx7jlOALM34kSc;

    invoke-direct {p1, p0, v0, v1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$2gmAVGrpcavmUtx7jlOALM34kSc;-><init>(Lorg/wikipedia/search/SearchResultsFragment;J)V

    .line 231
    invoke-virtual {p2, v3, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 195
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private getAdapter()Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;

    return-object v0
.end method

.method private getSearchLanguageCode()Ljava/lang/String;
    .locals 1

    .line 673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/search/SearchFragment;

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResults(Ljava/util/List;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults()V

    .line 261
    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->displayResults(Ljava/util/List;)V

    .line 262
    invoke-direct {p0, p1, p3, p4}, Lorg/wikipedia/search/SearchResultsFragment;->log(Ljava/util/List;J)V

    .line 266
    :cond_0
    iget-object p3, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCache:Landroidx/collection/LruCache;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$U_oRPYfwLhGJY4xZoOnI8cBi_eo;

    invoke-direct {p3, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$U_oRPYfwLhGJY4xZoOnI8cBi_eo;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 277
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->doFullTextSearch(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method private handleSuggestion(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f10037c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 286
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$doSearchResultsCountObservable$17(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$15(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/search/PrefixSearchResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 385
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    .line 388
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p0

    const/16 p2, 0x14

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v0}, Lorg/wikipedia/dataclient/Service;->fullTextSearch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;J)V"
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->getFunnel()Lorg/wikipedia/analytics/SearchFunnel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->displayTime(J)I

    move-result p2

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/wikipedia/analytics/SearchFunnel;->searchResults(ZIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logError(ZJ)V
    .locals 1

    .line 657
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->getFunnel()Lorg/wikipedia/analytics/SearchFunnel;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->displayTime(J)I

    move-result p2

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/analytics/SearchFunnel;->searchError(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 1

    .line 401
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0, p1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->onSearchProgressBar(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSearchResultsCountCache()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCountCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsDisplay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsDisplay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$doFullTextSearch$10$SearchResultsFragment(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/search/SearchResults;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation()Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/wikipedia/search/SearchResults;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    .line 328
    :cond_0
    new-instance p1, Lorg/wikipedia/search/SearchResults;

    invoke-direct {p1}, Lorg/wikipedia/search/SearchResults;-><init>()V

    return-object p1
.end method

.method public synthetic lambda$doFullTextSearch$11$SearchResultsFragment(Ljava/lang/String;JZLorg/wikipedia/search/SearchResults;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 331
    invoke-virtual {p5}, Lorg/wikipedia/search/SearchResults;->getResults()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->cache(Ljava/util/List;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v0, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->log(Ljava/util/List;J)V

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 335
    invoke-direct {p0, p2}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults(Z)V

    .line 337
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iput-object p5, p0, Lorg/wikipedia/search/SearchResultsFragment;->lastFullTextResults:Lorg/wikipedia/search/SearchResults;

    .line 341
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 342
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->displayResults(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 344
    invoke-direct {p0, p2}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    .line 346
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->doSearchResultsCountObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public synthetic lambda$doFullTextSearch$12$SearchResultsFragment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    return-void
.end method

.method public synthetic lambda$doFullTextSearch$13$SearchResultsFragment(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 351
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_0

    :cond_1
    if-nez v2, :cond_2

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCountCache:Landroidx/collection/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0, p2}, Lorg/wikipedia/search/SearchResultsFragment;->displayResultsCount(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$doFullTextSearch$14$SearchResultsFragment(JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p3, 0x1

    .line 371
    invoke-direct {p0, p3, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment;->logError(ZJ)V

    return-void
.end method

.method public synthetic lambda$doSearchResultsCountObservable$16$SearchResultsFragment(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-direct {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    invoke-static {p2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p1, v1, p1}, Lorg/wikipedia/dataclient/Service;->prefixSearch(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 382
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 383
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;

    invoke-direct {v1, p2, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$doTitlePrefixSearch$5$SearchResultsFragment(Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p2

    const/16 v0, 0x14

    invoke-interface {p2, p1, v0, p1}, Lorg/wikipedia/dataclient/Service;->prefixSearch(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hk_mudkZ8nSppn1DJzreZHCh4Ag;

    invoke-direct {v0, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hk_mudkZ8nSppn1DJzreZHCh4Ag;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    invoke-direct {v0}, Lorg/wikipedia/search/SearchResults;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_1

    new-instance p1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$csn4FSjszB4HK5kfoWQ2QLeDOKs;

    invoke-direct {p1, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$csn4FSjszB4HK5kfoWQ2QLeDOKs;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/wikipedia/search/SearchResults;

    invoke-direct {p1}, Lorg/wikipedia/search/SearchResults;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_1
    new-instance v1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0d5twKhHl7nG4z21Yo_X1jaDGKQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0d5twKhHl7nG4z21Yo_X1jaDGKQ;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    .line 196
    invoke-static {p2, v0, p1, v1}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function3;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$doTitlePrefixSearch$6$SearchResultsFragment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->updateProgressBar(Z)V

    return-void
.end method

.method public synthetic lambda$doTitlePrefixSearch$7$SearchResultsFragment(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->handleResults(Ljava/util/List;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic lambda$doTitlePrefixSearch$8$SearchResultsFragment(JLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p3}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 237
    iget-object p3, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-direct {p0, v1, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment;->logError(ZJ)V

    return-void
.end method

.method public synthetic lambda$handleResults$9$SearchResultsFragment()V
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public synthetic lambda$null$2$SearchResultsFragment()Lorg/wikipedia/search/SearchResults;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->findPageForSearchQueryInAnyList(Ljava/lang/String;)Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$null$3$SearchResultsFragment()Lorg/wikipedia/search/SearchResults;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    sget-object v0, Lorg/wikipedia/history/HistoryDbHelper;->INSTANCE:Lorg/wikipedia/history/HistoryDbHelper;

    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/history/HistoryDbHelper;->findHistoryItem(Ljava/lang/String;)Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$null$4$SearchResultsFragment(Lorg/wikipedia/search/PrefixSearchResponse;Lorg/wikipedia/search/SearchResults;Lorg/wikipedia/search/SearchResults;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v1

    .line 205
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation()Ljava/util/Map;

    move-result-object v3

    .line 206
    invoke-virtual {p1}, Lorg/wikipedia/search/PrefixSearchResponse;->suggestion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/wikipedia/search/SearchResults;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    invoke-direct {v0}, Lorg/wikipedia/search/SearchResults;-><init>()V

    .line 220
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResults;->getSuggestion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->handleSuggestion(Ljava/lang/String;)V

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->addSearchResultsFromTabs(Ljava/util/List;)V

    .line 223
    invoke-virtual {p2}, Lorg/wikipedia/search/SearchResults;->getResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {p3}, Lorg/wikipedia/search/SearchResults;->getResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResults;->getResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public synthetic lambda$onCreateView$0$SearchResultsFragment(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$SearchResultsFragment(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/search/SearchResultsFragment;->startSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0063

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->unbinder:Lbutterknife/Unbinder;

    .line 99
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Lorg/wikipedia/search/SearchResultsFragment$1;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0J_40Bj9TFs2-lfMHVfJ8OLd1d0;

    invoke-direct {p3, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0J_40Bj9TFs2-lfMHVfJ8OLd1d0;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hysM0GOCJJy3xAoM6m6q0qg5BtM;

    invoke-direct {p3, p0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hysM0GOCJJy3xAoM6m6q0qg5BtM;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 115
    iput-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment;->unbinder:Lbutterknife/Unbinder;

    .line 116
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method onSuggestionClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 126
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->getFunnel()Lorg/wikipedia/analytics/SearchFunnel;

    move-result-object v1

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/SearchFunnel;->searchDidYouMean(Ljava/lang/String;)V

    .line 130
    invoke-interface {p1, v0}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->setSearchText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->startSearch(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsDisplay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 159
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->cancelSearchTask()V

    .line 164
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment;->currentSearchTerm:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults()V

    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCache:Landroidx/collection/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsCountCache:Landroidx/collection/LruCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults()V

    .line 175
    invoke-direct {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->displayResults(Ljava/util/List;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 177
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    invoke-direct {p0}, Lorg/wikipedia/search/SearchResultsFragment;->clearResults()V

    .line 179
    invoke-direct {p0, v1}, Lorg/wikipedia/search/SearchResultsFragment;->displayResultsCount(Ljava/util/List;)V

    return-void

    .line 183
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment;->doTitlePrefixSearch(Ljava/lang/String;Z)V

    return-void
.end method
