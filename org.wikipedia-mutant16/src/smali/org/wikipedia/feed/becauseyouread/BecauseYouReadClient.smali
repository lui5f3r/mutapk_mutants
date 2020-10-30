.class public Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;
.super Ljava/lang/Object;
.source "BecauseYouReadClient.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private getCardForHistoryEntry(Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getRelatedPages(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 45
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 46
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$4kYSwxCrY1L63wP-GmzsOHbDGYg;->INSTANCE:Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$4kYSwxCrY1L63wP-GmzsOHbDGYg;

    .line 47
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$4CUduCQ2TB1ivF4BTLhE1FcT4cU;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$4CUduCQ2TB1ivF4BTLhE1FcT4cU;-><init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$SsPYEY3rPyeqOKMvTmTh9Wjj-WY;

    invoke-direct {p1, p2}, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$SsPYEY3rPyeqOKMvTmTh9Wjj-WY;-><init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 48
    invoke-virtual {v1, v2, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic lambda$getCardForHistoryEntry$2(Lorg/wikipedia/dataclient/restbase/RbRelatedPages;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x5

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/dataclient/restbase/RbRelatedPages;->getPages(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$request$1(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->success(Ljava/util/List;)V

    return-void
.end method

.method private toBecauseYouReadCard(Ljava/util/List;Lorg/wikipedia/history/HistoryEntry;)Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;",
            "Lorg/wikipedia/history/HistoryEntry;",
            ")",
            "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 57
    new-instance v2, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;-><init>(Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public synthetic lambda$getCardForHistoryEntry$3$BecauseYouReadClient(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 48
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->toBecauseYouReadCard(Ljava/util/List;Lorg/wikipedia/history/HistoryEntry;)Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 48
    :goto_1
    invoke-static {p1, p2}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$request$0$BecauseYouReadClient(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->getCardForHistoryEntry(Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->cancel()V

    .line 30
    iget-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p2, Lorg/wikipedia/feed/becauseyouread/MainPageReadMoreTopicTask;

    invoke-direct {p2, p3}, Lorg/wikipedia/feed/becauseyouread/MainPageReadMoreTopicTask;-><init>(I)V

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 31
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 32
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$1U4g0bDyctY9ezDegXJy4f8HxJM;

    invoke-direct {p3, p0, p4}, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$1U4g0bDyctY9ezDegXJy4f8HxJM;-><init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    new-instance v0, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$YSKe7zZT_I1T55nAwPD7d5zCkpk;

    invoke-direct {v0, p4}, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$BecauseYouReadClient$YSKe7zZT_I1T55nAwPD7d5zCkpk;-><init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 33
    invoke-virtual {p2, p3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
