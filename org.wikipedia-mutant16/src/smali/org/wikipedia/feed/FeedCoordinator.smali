.class public Lorg/wikipedia/feed/FeedCoordinator;
.super Lorg/wikipedia/feed/FeedCoordinatorBase;
.source "FeedCoordinator.java"


# instance fields
.field private aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-direct {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/FeedCoordinator;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    .line 31
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->restoreState()V

    return-void
.end method

.method static synthetic lambda$buildScript$0(Lorg/wikipedia/feed/FeedContentType;Lorg/wikipedia/feed/FeedContentType;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedContentType;->getOrder()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->getOrder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$postCardsToCallback$1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x96

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method static synthetic lambda$postCardsToCallback$2(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    invoke-interface {p0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->success(Ljava/util/List;)V

    return-void
.end method

.method public static postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/feed/dataclient/FeedClient$Callback;",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/model/Card;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;->INSTANCE:Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 66
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 67
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$s-zIxYh3J1MfsjzlMiBiclFMkss;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$s-zIxYh3J1MfsjzlMiBiclFMkss;-><init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected buildScript(I)V
    .locals 6

    .line 42
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    .line 44
    new-instance v1, Lorg/wikipedia/feed/searchbar/SearchClient;

    invoke-direct {v1}, Lorg/wikipedia/feed/searchbar/SearchClient;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v1, v4}, Lorg/wikipedia/feed/FeedCoordinatorBase;->conditionallyAddPendingClient(Lorg/wikipedia/feed/dataclient/FeedClient;Z)V

    .line 45
    new-instance v1, Lorg/wikipedia/feed/announcement/AnnouncementClient;

    invoke-direct {v1}, Lorg/wikipedia/feed/announcement/AnnouncementClient;-><init>()V

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v1, v4}, Lorg/wikipedia/feed/FeedCoordinatorBase;->conditionallyAddPendingClient(Lorg/wikipedia/feed/dataclient/FeedClient;Z)V

    .line 46
    new-instance v1, Lorg/wikipedia/feed/onboarding/OnboardingClient;

    invoke-direct {v1}, Lorg/wikipedia/feed/onboarding/OnboardingClient;-><init>()V

    if-nez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v1, v4}, Lorg/wikipedia/feed/FeedCoordinatorBase;->conditionallyAddPendingClient(Lorg/wikipedia/feed/dataclient/FeedClient;Z)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->values()[Lorg/wikipedia/feed/FeedContentType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    sget-object v4, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$C6eMI1gXInnfOlljVNdxZeh-eMI;->INSTANCE:Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$C6eMI1gXInnfOlljVNdxZeh-eMI;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/feed/FeedContentType;

    .line 54
    iget-object v5, p0, Lorg/wikipedia/feed/FeedCoordinator;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-virtual {v4, v5, p1}, Lorg/wikipedia/feed/FeedContentType;->newClient(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;I)Lorg/wikipedia/feed/dataclient/FeedClient;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/wikipedia/feed/FeedCoordinatorBase;->addPendingClient(Lorg/wikipedia/feed/dataclient/FeedClient;)V

    goto :goto_3

    .line 57
    :cond_3
    new-instance v1, Lorg/wikipedia/feed/offline/OfflineCardClient;

    invoke-direct {v1}, Lorg/wikipedia/feed/offline/OfflineCardClient;-><init>()V

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0, v1, v2}, Lorg/wikipedia/feed/FeedCoordinatorBase;->conditionallyAddPendingClient(Lorg/wikipedia/feed/dataclient/FeedClient;Z)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 36
    invoke-super {p0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->reset()V

    .line 37
    iget-object v0, p0, Lorg/wikipedia/feed/FeedCoordinator;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-virtual {v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->invalidate()V

    return-void
.end method
