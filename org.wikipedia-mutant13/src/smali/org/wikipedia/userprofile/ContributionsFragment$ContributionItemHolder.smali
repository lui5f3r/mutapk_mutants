.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ContributionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContributionItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/userprofile/ContributionsItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;Lorg/wikipedia/userprofile/ContributionsItemView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/userprofile/ContributionsItemView;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    .line 379
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private final getContributionDetails(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
    .locals 8

    .line 401
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const-wide/16 v1, 0xfa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v5}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getQNumberRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v5

    invoke-virtual {v5, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 403
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 404
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Lio/reactivex/rxjava3/core/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 405
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 406
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;

    invoke-direct {v2, p2, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;-><init>(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/ContributionsItemView;)V

    .line 412
    sget-object p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$2;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$2;

    .line 406
    invoke-virtual {v1, v2, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 402
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto/16 :goto_2

    .line 415
    :cond_1
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    .line 416
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v5, Lorg/wikipedia/dataclient/WikiSite;

    const-string v6, "https://commons.wikimedia.org/"

    invoke-direct {v5, v6}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v5

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    .line 417
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    goto :goto_1

    .line 418
    :cond_4
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    const-string v4, "https://www.wikidata.org/"

    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v3

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lorg/wikipedia/dataclient/Service;->getWikidataLabels(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 419
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 420
    new-instance v4, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;

    invoke-direct {v4, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;-><init>(Lorg/wikipedia/userprofile/Contribution;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 430
    :goto_1
    new-instance v4, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;

    invoke-direct {v4, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;-><init>(Lorg/wikipedia/userprofile/Contribution;)V

    .line 416
    invoke-static {v5, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 443
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Lio/reactivex/rxjava3/core/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 444
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 445
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;

    invoke-direct {v2, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;-><init>(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 416
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private final getPageViews(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
    .locals 5

    .line 453
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getQNumberRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/Service;->getPageViewsForTitles(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 458
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 459
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 460
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 461
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;

    invoke-direct {v2, p2, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;-><init>(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/ContributionsItemView;)V

    .line 472
    sget-object p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$2;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$2;

    .line 461
    invoke-virtual {v1, v2, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 457
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 454
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setPageViewCountText(J)V

    return-void
.end method


# virtual methods
.method public final bindItem(Lorg/wikipedia/userprofile/Contribution;)V
    .locals 6

    const-string v0, "contribution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setContribution(Lorg/wikipedia/userprofile/Contribution;)V

    .line 382
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setTitle(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setDiffCountText(Lorg/wikipedia/userprofile/Contribution;)V

    .line 384
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setDescription(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setIcon(I)V

    .line 386
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setImageUrl(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getPageViews()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/userprofile/ContributionsItemView;->setPageViewCountText(J)V

    .line 388
    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getPageViews()J

    move-result-wide v0

    const-string v2, "view"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->getPageViews(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V

    .line 391
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->getContributionDetails(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V

    :cond_1
    return-void
.end method

.method public final clearDisposables()V
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object v0
.end method
