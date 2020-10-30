.class public Lorg/wikipedia/page/PageFragmentLoadState;
.super Ljava/lang/Object;
.source "PageFragmentLoadState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;
    }
.end annotation


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field private bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field private currentTab:Lorg/wikipedia/page/tabs/Tab;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private fragment:Lorg/wikipedia/page/PageFragment;

.field private leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

.field private model:Lorg/wikipedia/page/PageViewModel;

.field private networkErrorCallback:Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;

.field private webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/wikipedia/page/tabs/Tab;

    invoke-direct {v0}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    .line 57
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    .line 59
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private createPageModel(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 6

    .line 227
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/page/PageSummary;->toPage(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/Page;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageViewModel;->setPage(Lorg/wikipedia/page/Page;)V

    .line 233
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageViewModel;->setTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 235
    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/analytics/SessionFunnel;->noDescription()V

    .line 239
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 245
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->setToolbarFadeEnabled(Z)V

    .line 246
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 249
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    iget-object v3, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;I)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageViewModel;->setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 251
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/wikipedia/history/HistoryEntry;->setReferrer(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/tabs/Tab;->setBackStackPositionTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 259
    :cond_3
    new-instance v0, Lorg/wikipedia/pageimages/PageImage;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/pageimages/PageImage;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$WhxsrN40oInOzuP1QiJB5NDQadI;

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$WhxsrN40oInOzuP1QiJB5NDQadI;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;Lorg/wikipedia/pageimages/PageImage;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    .line 262
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {v0}, Lorg/wikipedia/pageimages/PageImage;->getImageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/wikipedia/page/PageTitle;->setThumbUrl(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageViewModel;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {v0}, Lorg/wikipedia/pageimages/PageImage;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageTitle;->setThumbUrl(Ljava/lang/String;)V

    return-void
.end method

.method private pageLoadCheckReadingLists()V
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 160
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$hZjsyyVt_Jj3F_jMX9uuWGcNXDs;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$hZjsyyVt_Jj3F_jMX9uuWGcNXDs;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 161
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 162
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$ZdMsN4TO-8024ns8jAxOJV4Zbpo;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$ZdMsN4TO-8024ns8jAxOJV4Zbpo;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    .line 163
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$7pxZMAaCrq1pTviuoYkaB_FcS_w;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$7pxZMAaCrq1pTviuoYkaB_FcS_w;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    new-instance v3, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$TWgSH1k0CnauHb4uP78zMoDn2Co;

    invoke-direct {v3, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$TWgSH1k0CnauHb4uP78zMoDn2Co;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    .line 164
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private pageLoadFromNetwork(Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;)V
    .locals 8

    .line 169
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptions()V

    .line 174
    iput-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->networkErrorCallback:Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;

    .line 175
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 179
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageUpdateProgressBar(Z)V

    .line 183
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/SessionFunnel;->leadSectionFetchStart()V

    .line 185
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    .line 186
    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    .line 187
    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->shouldSaveOffline()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "save"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    .line 188
    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-interface/range {v1 .. v7}, Lorg/wikipedia/dataclient/RestService;->getSummaryResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 189
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 190
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$arQFK9sM_p3S-95e6uw9q97Fsyw;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$arQFK9sM_p3S-95e6uw9q97Fsyw;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    new-instance v2, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$CaY7i7XhJtTmsRIcQ-6ozWxwRm0;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$CaY7i7XhJtTmsRIcQ-6ozWxwRm0;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 208
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->resetHtml(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method private showPageOfflineMessage(Ljava/lang/String;)V
    .locals 6

    .line 212
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getHttpLastModifiedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    const v2, 0x7f10021a

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 219
    invoke-virtual {v1, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public backStackEmpty()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected commonSectionFetchOnCatch(Ljava/lang/Throwable;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->networkErrorCallback:Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->networkErrorCallback:Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;

    .line 152
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0, p1}, Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;->call(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public goBack()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->moveBack()V

    .line 119
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragmentLoadState;->backStackEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public goForward()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->moveForward()V

    .line 130
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragmentLoadState;->loadFromBackStack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$createPageModel$7$PageFragmentLoadState(Lorg/wikipedia/pageimages/PageImage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->app:Lorg/wikipedia/WikipediaApp;

    const-class v1, Lorg/wikipedia/pageimages/PageImage;

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/database/DatabaseClient;->upsert(Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$1$PageFragmentLoadState(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragment;->onPageLoadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$pageLoadCheckReadingLists$0$PageFragmentLoadState()Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$pageLoadCheckReadingLists$2$PageFragmentLoadState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$MYkYOrJJEwtT-DsUN-qDzb-gCTI;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$MYkYOrJJEwtT-DsUN-qDzb-gCTI;-><init>(Lorg/wikipedia/page/PageFragmentLoadState;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragmentLoadState;->pageLoadFromNetwork(Lorg/wikipedia/page/PageFragmentLoadState$ErrorCallback;)V

    return-void
.end method

.method public synthetic lambda$pageLoadCheckReadingLists$3$PageFragmentLoadState(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageViewModel;->setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public synthetic lambda$pageLoadCheckReadingLists$4$PageFragmentLoadState(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageViewModel;->setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public synthetic lambda$pageLoadFromNetwork$5$PageFragmentLoadState(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageFragmentLoadState;->createPageModel(Lorg/wikipedia/dataclient/page/PageSummary;)V

    .line 197
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "X-Offline-Save"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    const-string v0, "date"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragmentLoadState;->showPageOfflineMessage(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->onPageMetadataLoaded()V

    return-void

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Summary response was invalid."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$pageLoadFromNetwork$6$PageFragmentLoadState(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Page details network response error: "

    .line 203
    invoke-static {v0, p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 204
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragmentLoadState;->commonSectionFetchOnCatch(Ljava/lang/Throwable;)V

    return-void
.end method

.method public load(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragmentLoadState;->updateCurrentBackStackItem()V

    .line 81
    iget-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    new-instance v0, Lorg/wikipedia/page/PageBackStackItem;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getCurEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/tabs/Tab;->pushBackStackItem(Lorg/wikipedia/page/PageBackStackItem;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/PageFragmentLoadState;->pageLoadCheckReadingLists()V

    return-void
.end method

.method public loadFromBackStack()V
    .locals 6

    .line 87
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 93
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getHistoryEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getScrollY()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZI)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from backstack"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 142
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTopMargin()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setTopMargin(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-virtual {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->setToolbarFadeEnabled(Z)V

    return-void
.end method

.method public setTab(Lorg/wikipedia/page/tabs/Tab;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    return-void
.end method

.method public setUp(Lorg/wikipedia/page/PageViewModel;Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/bridge/CommunicationBridge;Lorg/wikipedia/page/leadimages/LeadImagesHandler;Lorg/wikipedia/page/tabs/Tab;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    .line 69
    iput-object p2, p0, Lorg/wikipedia/page/PageFragmentLoadState;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 70
    iput-object p3, p0, Lorg/wikipedia/page/PageFragmentLoadState;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 71
    iput-object p4, p0, Lorg/wikipedia/page/PageFragmentLoadState;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 72
    iput-object p5, p0, Lorg/wikipedia/page/PageFragmentLoadState;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 74
    iput-object p6, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    return-void
.end method

.method public updateCurrentBackStackItem()V
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->currentTab:Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 102
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageBackStackItem;->setScrollY(I)V

    .line 103
    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragmentLoadState;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setThumbUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
