.class public final Lorg/wikipedia/settings/SiteInfoClient;
.super Ljava/lang/Object;
.source "SiteInfoClient.java"


# static fields
.field private static SITE_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/settings/SiteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/wikipedia/settings/SiteInfoClient;->SITE_INFO_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainPageForLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {p0}, Lorg/wikipedia/settings/SiteInfoClient;->getSiteInfoForLang(Ljava/lang/String;)Lorg/wikipedia/settings/SiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->mainPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->mainPage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxPagesPerReadingList()I
    .locals 2

    .line 34
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/SiteInfoClient;->getSiteInfoForLang(Ljava/lang/String;)Lorg/wikipedia/settings/SiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->readingListsConfig()Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->readingListsConfig()Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;->maxEntriesPerList()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->readingListsConfig()Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;->maxEntriesPerList()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method private static getSiteInfoForLang(Ljava/lang/String;)Lorg/wikipedia/settings/SiteInfo;
    .locals 1

    .line 44
    sget-object v0, Lorg/wikipedia/settings/SiteInfoClient;->SITE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lorg/wikipedia/settings/SiteInfoClient;->SITE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/settings/SiteInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$updateFor$0(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/wikipedia/settings/SiteInfoClient;->SITE_INFO_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo()Lorg/wikipedia/settings/SiteInfo;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/settings/SiteInfo;

    return-void
.end method

.method public static updateFor(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/wikipedia/settings/SiteInfoClient;->SITE_INFO_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getSiteInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 57
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 58
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SiteInfoClient$lqbBYqkM5ERplvYn0aanBASFZJ8;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SiteInfoClient$lqbBYqkM5ERplvYn0aanBASFZJ8;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    sget-object p0, Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 59
    invoke-virtual {v0, v1, p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
