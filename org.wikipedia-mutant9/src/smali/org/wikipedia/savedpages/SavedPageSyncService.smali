.class public Lorg/wikipedia/savedpages/SavedPageSyncService;
.super Landroidx/core/app/JobIntentService;
.source "SavedPageSyncService.java"


# static fields
.field private static final ENQUEUE_DELAY_MILLIS:I = 0x7d0

.field private static ENQUEUE_RUNNABLE:Ljava/lang/Runnable; = null

.field private static final JOB_ID:I = 0x3e8

.field public static final MEDIA_LIST_PROGRESS:I = 0x1e

.field public static final MOBILE_HTML_SECTION_PROGRESS:I = 0x14

.field public static final SUMMARY_PROGRESS:I = 0xa


# instance fields
.field private savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$sQU_kBIKFS13A3LK_CGTSE-tkXc;->INSTANCE:Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$sQU_kBIKFS13A3LK_CGTSE-tkXc;

    sput-object v0, Lorg/wikipedia/savedpages/SavedPageSyncService;->ENQUEUE_RUNNABLE:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 68
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    return-void
.end method

.method private deletePageContents(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$lJCCc5yV1-oDauPIfR7N9wCTCtE;

    invoke-direct {v0, p1}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$lJCCc5yV1-oDauPIfR7N9wCTCtE;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;->INSTANCE:Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;

    sget-object v1, Lorg/wikipedia/savedpages/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/savedpages/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 147
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static enqueue()V
    .locals 4

    .line 72
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/savedpages/SavedPageSyncService;->ENQUEUE_RUNNABLE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/savedpages/SavedPageSyncService;->ENQUEUE_RUNNABLE:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isRetryable(Ljava/lang/Throwable;)Z
    .locals 1

    .line 375
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_0

    .line 376
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->is404(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$deletePageContents$1(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    invoke-static {}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->instance()Lorg/wikipedia/offline/OfflineObjectDbHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->deleteObjectsForPageId(J)V

    return-void
.end method

.method static synthetic lambda$deletePageContents$2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$reqMobileHTML$7(Lokhttp3/Request;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 302
    :try_start_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    .line 304
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$savePageFor$5([Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    aput-object p1, p0, v0

    return-void
.end method

.method static synthetic lambda$savePageFor$6([Ljava/lang/Exception;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 275
    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 5

    .line 62
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-class v1, Lorg/wikipedia/savedpages/SavedPageSyncService;

    new-instance v2, Landroid/content/Intent;

    .line 63
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    const-class v4, Lorg/wikipedia/savedpages/SavedPageSyncService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e8

    .line 62
    invoke-static {v0, v1, v3, v2}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;
    .locals 2

    .line 356
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 357
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/WikipediaApp;->getAcceptLanguage(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Accept-Language"

    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p1, "X-Offline-Save"

    const-string p2, "save"

    .line 358
    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 359
    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Offline-Lang"

    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 360
    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Offline-Title"

    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v0
.end method

.method private persistPageThumbnail(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 2

    .line 364
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-class v1, Lorg/wikipedia/pageimages/PageImage;

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/pageimages/PageImage;

    invoke-direct {v1, p1, p2}, Lorg/wikipedia/pageimages/PageImage;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    sget-object p1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/database/DatabaseClient;->upsert(Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method private reqMediaList(Lorg/wikipedia/page/PageTitle;J)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            "J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/gallery/MediaList;",
            ">;>;"
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "save"

    move-wide v3, p2

    .line 292
    invoke-interface/range {v1 .. v8}, Lorg/wikipedia/dataclient/RestService;->getMediaListResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private reqMobileHTML(Lorg/wikipedia/page/PageTitle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "page/mobile-html/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-direct {p0, v0, v1, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 300
    new-instance v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$Vd_YeP5DiBxWzENoiuDlltqSOp0;

    invoke-direct {v0, p1}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$Vd_YeP5DiBxWzENoiuDlltqSOp0;-><init>(Lokhttp3/Request;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private reqPageSummary(Lorg/wikipedia/page/PageTitle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;>;"
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v5, "save"

    .line 286
    invoke-interface/range {v1 .. v7}, Lorg/wikipedia/dataclient/RestService;->getSummaryResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private reqSaveFiles(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;Ljava/util/Set;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            "Lorg/wikipedia/page/PageTitle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    int-to-float p4, p4

    int-to-float v1, p5

    sub-float/2addr v1, p4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 319
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    :try_start_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {p0, p2, v2, v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqSaveUrl(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    add-float/2addr p4, v1

    float-to-int v0, p4

    .line 326
    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 327
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-direct {v2, p1}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-virtual {v0, v2}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-direct {p0, v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->isRetryable(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    throw v0

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "Sync paused or cancelled."

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_2
    invoke-virtual {p1, p5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 336
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-direct {p3, p1}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private reqSaveUrl(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-direct {p0, p2, p3, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 341
    invoke-static {}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/savedpages/SavedPageSyncService$1;

    invoke-direct {p3, p0}, Lorg/wikipedia/savedpages/SavedPageSyncService$1;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;)V

    invoke-interface {p2, p3}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 352
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method private savePageFor(Lorg/wikipedia/readinglist/database/ReadingListPage;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Long;

    new-array v1, v1, [Ljava/lang/Exception;

    .line 220
    invoke-direct {p0, v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqPageSummary(Lorg/wikipedia/page/PageTitle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;

    invoke-direct {v4, p0, v0, p1}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 221
    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 274
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$RgJpIIoTu70dogAEKQnLIXnedvY;

    invoke-direct {v0, v2}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$RgJpIIoTu70dogAEKQnLIXnedvY;-><init>([Ljava/lang/Long;)V

    new-instance v3, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$bfFncbkCOgoSPRb2MKxy8j_0bsQ;

    invoke-direct {v3, v1}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$bfFncbkCOgoSPRb2MKxy8j_0bsQ;-><init>([Ljava/lang/Exception;)V

    .line 275
    invoke-virtual {p1, v0, v3}, Lio/reactivex/rxjava3/core/Observable;->blockingSubscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    const/4 p1, 0x0

    .line 277
    aget-object v0, v1, p1

    if-nez v0, :cond_0

    .line 281
    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 278
    :cond_0
    aget-object p1, v1, p1

    throw p1
.end method

.method private savePages(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;)I"
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 153
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 156
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 158
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v4}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 161
    :cond_1
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v4}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForOffline(Ljava/util/List;ZZ)V

    goto :goto_2

    .line 167
    :cond_2
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setNotificationProgress(Landroid/content/Context;II)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 174
    :try_start_0
    invoke-direct {p0, v3}, Lorg/wikipedia/savedpages/SavedPageSyncService;->savePageFor(Lorg/wikipedia/readinglist/database/ReadingListPage;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 182
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    invoke-static {v7}, Lorg/wikipedia/util/ThrowableUtil;->isOffline(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Lorg/wikipedia/util/ThrowableUtil;->isTimeout(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Lorg/wikipedia/util/ThrowableUtil;->isNetworkError(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 191
    instance-of v8, v7, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-nez v8, :cond_4

    .line 193
    invoke-static {v7}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    :cond_3
    const/4 v6, 0x0

    .line 198
    :cond_4
    :goto_1
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->inProgress()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_0

    const-wide/16 v6, 0x1

    .line 204
    invoke-virtual {v3, v6, v7}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status(J)V

    .line 205
    invoke-virtual {v3, v4, v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes(J)V

    .line 206
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    add-int/lit8 v2, v2, 0x1

    .line 208
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent()V

    goto :goto_0

    :cond_6
    :goto_2
    return v2
.end method

.method public static sendSyncEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent(Z)V

    return-void
.end method

.method public static sendSyncEvent(Z)V
    .locals 2

    .line 141
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$3$SavedPageSyncService(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;Lretrofit2/Response;Lretrofit2/Response;Lokhttp3/Response;)Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0xa

    .line 226
    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 227
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-direct {v1, p1}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    const/16 v0, 0x14

    .line 228
    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 229
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-direct {v1, p1}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    const/16 v0, 0x1e

    .line 230
    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 231
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-direct {v1, p1}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    .line 232
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 235
    invoke-virtual {p5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p5

    invoke-virtual {p5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p5

    .line 237
    new-instance v0, Lorg/wikipedia/savedpages/PageComponentsUrlParser;

    invoke-direct {v0}, Lorg/wikipedia/savedpages/PageComponentsUrlParser;-><init>()V

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Lorg/wikipedia/savedpages/PageComponentsUrlParser;->parse(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;

    move-result-object p5

    .line 238
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 247
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p5}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 248
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p5

    .line 249
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {p5, v0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p2, p5}, Lorg/wikipedia/savedpages/SavedPageSyncService;->persistPageThumbnail(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->calculateLeadImageWidth()I

    move-result v0

    invoke-static {p5, v0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    .line 251
    invoke-static {p5}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {v5, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    invoke-virtual {p4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/gallery/MediaList;

    const-string p5, "image"

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/wikipedia/gallery/MediaListItem;

    .line 257
    invoke-virtual {p5}, Lorg/wikipedia/gallery/MediaListItem;->getSrcSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    invoke-virtual {p5, v0}, Lorg/wikipedia/gallery/MediaListItem;->getImageUrl(F)Ljava/lang/String;

    move-result-object p5

    invoke-interface {v5, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p4}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description(Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/16 v7, 0x64

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 266
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqSaveFiles(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;Ljava/util/Set;II)V

    .line 268
    invoke-static {}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->instance()Lorg/wikipedia/offline/OfflineObjectDbHelper;

    move-result-object p3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->getTotalBytesForPageId(J)J

    move-result-wide p3

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Saved page "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->i(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$savePageFor$4$SavedPageSyncService(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;Lretrofit2/Response;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 222
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getRevision()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 223
    :goto_0
    invoke-static {p3}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    .line 224
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqMediaList(Lorg/wikipedia/page/PageTitle;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 225
    invoke-direct {p0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqMobileHTML(Lorg/wikipedia/page/PageTitle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V

    .line 223
    invoke-static {p3, v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function3;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 7

    .line 80
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->inProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllPagesToBeForcedSave()Ljava/util/List;

    move-result-object p1

    .line 86
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadOnlyOverWiFiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadingReadingListArticlesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllPagesToBeSaved()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_2
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllPagesToBeUnsaved()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllPagesToBeDeleted()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 95
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 96
    invoke-direct {p0, v5}, Lorg/wikipedia/savedpages/SavedPageSyncService;->deletePageContents(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 99
    invoke-direct {p0, v5}, Lorg/wikipedia/savedpages/SavedPageSyncService;->deletePageContents(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 105
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->purgeDeletedPages()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 108
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    :goto_3
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->resetUnsavedPageStatus()V

    const/4 v1, 0x1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception v4

    .line 102
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while deleting page: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->purgeDeletedPages()V

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 108
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 114
    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_6

    :cond_8
    move v3, v1

    .line 120
    :goto_6
    :try_start_2
    invoke-direct {p0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->savePages(Ljava/util/List;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setNotificationPaused(Landroid/content/Context;II)V

    goto :goto_7

    .line 125
    :cond_9
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->cancelNotification(Landroid/content/Context;)V

    .line 126
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p1, v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncCanceled(Z)V

    if-eqz v3, :cond_a

    .line 128
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent()V

    :cond_a
    :goto_7
    return-void

    :catchall_1
    move-exception p1

    .line 122
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result v1

    if-nez v1, :cond_b

    .line 125
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->cancelNotification(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v0, v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncCanceled(Z)V

    if-eqz v3, :cond_c

    .line 128
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent()V

    goto :goto_8

    .line 123
    :cond_b
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setNotificationPaused(Landroid/content/Context;II)V

    .line 131
    :cond_c
    :goto_8
    throw p1

    .line 104
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 105
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->purgeDeletedPages()V

    .line 108
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 109
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->resetUnsavedPageStatus()V

    .line 112
    :cond_e
    throw p1
.end method
