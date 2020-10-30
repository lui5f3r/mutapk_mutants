.class public Lorg/wikipedia/WikipediaApp;
.super Landroid/app/Application;
.source "WikipediaApp.java"


# static fields
.field private static INSTANCE:Lorg/wikipedia/WikipediaApp;


# instance fields
.field private activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

.field private appLanguageState:Lorg/wikipedia/language/AppLanguageState;

.field private bus:Lorg/wikipedia/concurrency/RxBus;

.field private connectivityReceiver:Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;

.field private crashListener:Lorg/wikipedia/crash/AppCenterCrashesListener;

.field private currentTheme:Lorg/wikipedia/theme/Theme;

.field private database:Lorg/wikipedia/database/Database;

.field private final databaseClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/wikipedia/database/DatabaseClient<",
            "*>;>;"
        }
    .end annotation
.end field

.field private funnelManager:Lorg/wikipedia/analytics/FunnelManager;

.field private mainThreadHandler:Landroid/os/Handler;

.field private final remoteConfig:Lorg/wikipedia/settings/RemoteConfig;

.field private sessionFunnel:Lorg/wikipedia/analytics/SessionFunnel;

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 70
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig;

    invoke-direct {v0}, Lorg/wikipedia/settings/RemoteConfig;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->remoteConfig:Lorg/wikipedia/settings/RemoteConfig;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->databaseClients:Ljava/util/Map;

    .line 76
    new-instance v0, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;

    invoke-direct {v0}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->connectivityReceiver:Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;

    .line 77
    new-instance v0, Lorg/wikipedia/ActivityLifecycleHandler;

    invoke-direct {v0}, Lorg/wikipedia/ActivityLifecycleHandler;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 83
    invoke-static {}, Lorg/wikipedia/theme/Theme;->getFallback()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    .line 89
    sput-object p0, Lorg/wikipedia/WikipediaApp;->INSTANCE:Lorg/wikipedia/WikipediaApp;

    return-void
.end method

.method private enableWebViewDebugging()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lorg/wikipedia/WikipediaApp;
    .locals 1

    .line 93
    sget-object v0, Lorg/wikipedia/WikipediaApp;->INSTANCE:Lorg/wikipedia/WikipediaApp;

    return-object v0
.end method

.method private getUserIdForLanguage(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 407
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getUserInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 412
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 413
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/-$$Lambda$WikipediaApp$c-kM932jLhlAgApxhkmtHQnQm0Y;

    invoke-direct {v1, p1}, Lorg/wikipedia/-$$Lambda$WikipediaApp$c-kM932jLhlAgApxhkmtHQnQm0Y;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/wikipedia/-$$Lambda$WikipediaApp$fOGGN0beQSLtaDbkwmaHuN-inqw;

    invoke-direct {v2, p1}, Lorg/wikipedia/-$$Lambda$WikipediaApp$fOGGN0beQSLtaDbkwmaHuN-inqw;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private initExceptionHandling()V
    .locals 4

    .line 370
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lorg/wikipedia/crash/AppCenterCrashesListener;

    invoke-direct {v0}, Lorg/wikipedia/crash/AppCenterCrashesListener;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->crashListener:Lorg/wikipedia/crash/AppCenterCrashesListener;

    .line 372
    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->setListener(Lcom/microsoft/appcenter/crashes/CrashesListener;)V

    const v0, 0x7f100042

    .line 373
    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 374
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isCrashReportAutoUploadEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/appcenter/AppCenter;->setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    .line 375
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isCrashReportAutoUploadEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    :cond_0
    return-void
.end method

.method private initTabs()V
    .locals 2

    .line 425
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    new-instance v1, Lorg/wikipedia/page/tabs/Tab;

    invoke-direct {v1}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$getUserIdForLanguage$3(Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 415
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id()I

    move-result p1

    .line 418
    invoke-static {p0, p1}, Lorg/wikipedia/auth/AccountUtil;->putUserIdForLanguage(Ljava/lang/String;I)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found user ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getUserIdForLanguage$4(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get user ID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$logOut$1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    invoke-static {}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->getInstance()Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->clearAllCookies()V

    return-void
.end method

.method static synthetic lambda$logOut$2(Lorg/wikipedia/dataclient/mwapi/MwPostResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p0, "Logout complete."

    .line 365
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCrashReportProps()V
    .locals 2

    .line 381
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_primary_language"

    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_languages"

    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public commitTabState()V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->clearTabs()V

    .line 323
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->initTabs()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setTabs(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public getAcceptLanguage(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 216
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    .line 217
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {p1, v0, v1}, Lorg/wikipedia/language/AcceptLanguageUtil;->getAcceptLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppInstallID()Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAppInstallId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setAppInstallId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getAppOrSystemLanguageCode()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lorg/wikipedia/auth/AccountUtil;->getUserIdForLanguage(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lorg/wikipedia/WikipediaApp;->getUserIdForLanguage(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getBus()Lorg/wikipedia/concurrency/RxBus;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->bus:Lorg/wikipedia/concurrency/RxBus;

    return-object v0
.end method

.method public getCurrentTheme()Lorg/wikipedia/theme/Theme;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    return-object v0
.end method

.method public getDatabase()Lorg/wikipedia/database/Database;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->database:Lorg/wikipedia/database/Database;

    return-object v0
.end method

.method public getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/wikipedia/database/DatabaseClient<",
            "TT;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->databaseClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    const-class v0, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lorg/wikipedia/database/DatabaseClient;

    sget-object v1, Lorg/wikipedia/history/HistoryEntry;->DATABASE_TABLE:Lorg/wikipedia/history/HistoryEntryDatabaseTable;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/DatabaseClient;-><init>(Landroid/content/Context;Lorg/wikipedia/database/DatabaseTable;)V

    goto :goto_0

    .line 242
    :cond_0
    const-class v0, Lorg/wikipedia/pageimages/PageImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lorg/wikipedia/database/DatabaseClient;

    sget-object v1, Lorg/wikipedia/pageimages/PageImage;->DATABASE_TABLE:Lorg/wikipedia/pageimages/PageImageDatabaseTable;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/DatabaseClient;-><init>(Landroid/content/Context;Lorg/wikipedia/database/DatabaseTable;)V

    goto :goto_0

    .line 244
    :cond_1
    const-class v0, Lorg/wikipedia/search/RecentSearch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Lorg/wikipedia/database/DatabaseClient;

    sget-object v1, Lorg/wikipedia/search/RecentSearch;->DATABASE_TABLE:Lorg/wikipedia/search/RecentSearchDatabaseTable;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/DatabaseClient;-><init>(Landroid/content/Context;Lorg/wikipedia/database/DatabaseTable;)V

    goto :goto_0

    .line 246
    :cond_2
    const-class v0, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    new-instance v0, Lorg/wikipedia/database/DatabaseClient;

    sget-object v1, Lorg/wikipedia/edit/summaries/EditSummary;->DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/DatabaseClient;-><init>(Landroid/content/Context;Lorg/wikipedia/database/DatabaseTable;)V

    .line 251
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/WikipediaApp;->databaseClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No persister found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->databaseClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/database/DatabaseClient;

    return-object p1
.end method

.method public getFontSize(Landroid/view/Window;)F
    .locals 2

    .line 348
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 347
    invoke-static {p1, v0}, Lorg/wikipedia/util/DimenUtil;->getFontSizeFromSp(Landroid/view/Window;F)F

    move-result p1

    .line 348
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0701b7

    .line 349
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getFloat(I)F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    mul-float p1, p1, v0

    return p1
.end method

.method public getFunnelManager()Lorg/wikipedia/analytics/FunnelManager;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->funnelManager:Lorg/wikipedia/analytics/FunnelManager;

    return-object v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->mainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->mainThreadHandler:Landroid/os/Handler;

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRemoteConfig()Lorg/wikipedia/settings/RemoteConfig;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->remoteConfig:Lorg/wikipedia/settings/RemoteConfig;

    return-object v0
.end method

.method public getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->sessionFunnel:Lorg/wikipedia/analytics/SessionFunnel;

    return-object v0
.end method

.method public getTabCount()I
    .locals 3

    .line 332
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    .line 333
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getTabList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/List;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    invoke-static {p0}, Lorg/wikipedia/util/ReleaseUtil;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.7.50333-r-2020-10-06"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 196
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f1000c5

    .line 199
    invoke-virtual {p0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "WikipediaApp/%s (Android %s; %s; %s Build/%s)%s"

    .line 196
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->userAgent:Ljava/lang/String;

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x14d

    return v0
.end method

.method public declared-synchronized getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    if-nez v0, :cond_1

    .line 227
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getMediaWikiBaseUriSupportsLangCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 228
    :goto_0
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/wikipedia/settings/SiteInfoClient;->updateFor(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 231
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->wiki:Lorg/wikipedia/dataclient/WikiSite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-object v0

    .line 234
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->wiki:Lorg/wikipedia/dataclient/WikiSite;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public haveMainActivity()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    invoke-virtual {v0}, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity()Z

    move-result v0

    return v0
.end method

.method public isAnyActivityResumed()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    invoke-virtual {v0}, Lorg/wikipedia/ActivityLifecycleHandler;->isAnyActivityResumed()Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->connectivityReceiver:Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;

    invoke-virtual {v0}, Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;->isOnline()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$logOut$0$WikipediaApp(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/dataclient/Service;->postLogout(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public language()Lorg/wikipedia/language/AppLanguageState;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    return-object v0
.end method

.method public logCrashManually(Ljava/lang/Throwable;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->crashListener:Lorg/wikipedia/crash/AppCenterCrashesListener;

    invoke-virtual {v0, p1}, Lorg/wikipedia/crash/AppCenterCrashesListener;->logCrashManually(Ljava/lang/Throwable;)V

    return-void
.end method

.method public logOut()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "Logging out"

    .line 359
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->removeAccount()V

    .line 361
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getCsrfToken()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 362
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/-$$Lambda$WikipediaApp$jWCN5-8uqCnEUracRUX7glFLnis;

    invoke-direct {v1, p0}, Lorg/wikipedia/-$$Lambda$WikipediaApp$jWCN5-8uqCnEUracRUX7glFLnis;-><init>(Lorg/wikipedia/WikipediaApp;)V

    .line 363
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/-$$Lambda$WikipediaApp$aN1YjFzR-z-fA6LB7XUn6DirQqQ;->INSTANCE:Lorg/wikipedia/-$$Lambda$WikipediaApp$aN1YjFzR-z-fA6LB7XUn6DirQqQ;

    .line 364
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/-$$Lambda$WikipediaApp$lN8vA79GsjZlENibrIkRCQvKmxY;->INSTANCE:Lorg/wikipedia/-$$Lambda$WikipediaApp$lN8vA79GsjZlENibrIkRCQvKmxY;

    sget-object v2, Lorg/wikipedia/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 365
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 141
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 143
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getMediaWikiBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->setDefaultBaseUrl(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->connectivityReceiver:Lorg/wikipedia/connectivity/NetworkConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->initExceptionHandling()V

    .line 151
    invoke-static {}, Lorg/wikipedia/LeakCanaryStubKt;->setupLeakCanary()V

    const/4 v0, 0x1

    .line 154
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 159
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 161
    new-instance v0, Lorg/wikipedia/concurrency/RxBus;

    invoke-direct {v0}, Lorg/wikipedia/concurrency/RxBus;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->bus:Lorg/wikipedia/concurrency/RxBus;

    .line 163
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/views/ViewAnimations;->init(Landroid/content/res/Resources;)V

    .line 164
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCurrentThemeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 166
    new-instance v0, Lorg/wikipedia/language/AppLanguageState;

    invoke-direct {v0, p0}, Lorg/wikipedia/language/AppLanguageState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->appLanguageState:Lorg/wikipedia/language/AppLanguageState;

    .line 167
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->updateCrashReportProps()V

    .line 169
    new-instance v0, Lorg/wikipedia/analytics/FunnelManager;

    invoke-direct {v0, p0}, Lorg/wikipedia/analytics/FunnelManager;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->funnelManager:Lorg/wikipedia/analytics/FunnelManager;

    .line 170
    new-instance v0, Lorg/wikipedia/analytics/SessionFunnel;

    invoke-direct {v0, p0}, Lorg/wikipedia/analytics/SessionFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->sessionFunnel:Lorg/wikipedia/analytics/SessionFunnel;

    .line 171
    new-instance v0, Lorg/wikipedia/database/Database;

    invoke-direct {v0, p0}, Lorg/wikipedia/database/Database;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->database:Lorg/wikipedia/database/Database;

    .line 173
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->initTabs()V

    .line 175
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->enableWebViewDebugging()V

    .line 177
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 180
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->startPollTask(Landroid/content/Context;)V

    .line 182
    invoke-static {p0}, Lorg/wikipedia/analytics/InstallReferrerListener;->newInstance(Landroid/content/Context;)V

    return-void
.end method

.method public putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 300
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->crashListener:Lorg/wikipedia/crash/AppCenterCrashesListener;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/crash/AppCenterCrashesListener;->putReportProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/crash/AppCenterCrashesListener;

    :cond_0
    return-void
.end method

.method public declared-synchronized resetWikiSite()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 353
    :try_start_0
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 354
    invoke-direct {p0}, Lorg/wikipedia/WikipediaApp;->updateCrashReportProps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentTheme(Lorg/wikipedia/theme/Theme;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    if-eq p1, v0, :cond_0

    .line 277
    iput-object p1, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 278
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setCurrentThemeId(I)V

    .line 279
    iget-object p1, p0, Lorg/wikipedia/WikipediaApp;->bus:Lorg/wikipedia/concurrency/RxBus;

    new-instance v0, Lorg/wikipedia/events/ThemeChangeEvent;

    invoke-direct {v0}, Lorg/wikipedia/events/ThemeChangeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setFontSizeMultiplier(I)Z
    .locals 3

    .line 284
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 291
    :cond_1
    :goto_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 292
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setTextSizeMultiplier(I)V

    .line 293
    iget-object p1, p0, Lorg/wikipedia/WikipediaApp;->bus:Lorg/wikipedia/concurrency/RxBus;

    new-instance v0, Lorg/wikipedia/events/ChangeTextSizeEvent;

    invoke-direct {v0}, Lorg/wikipedia/events/ChangeTextSizeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public unmarshalTheme(I)Lorg/wikipedia/theme/Theme;
    .locals 2

    .line 397
    invoke-static {p1}, Lorg/wikipedia/theme/Theme;->ofMarshallingId(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Theme id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, using fallback."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 400
    invoke-static {}, Lorg/wikipedia/theme/Theme;->getFallback()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    :cond_0
    return-object v0
.end method
