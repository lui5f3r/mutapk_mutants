.class public Lorg/wikipedia/feed/announcement/AnnouncementClient;
.super Ljava/lang/Object;
.source "AnnouncementClient.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# static fields
.field private static final PLATFORM_CODE:Ljava/lang/String; = "AndroidApp"

.field private static final PLATFORM_CODE_NEW:Ljava/lang/String; = "AndroidAppV2"


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private static buildCards(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/announcement/Announcement;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/model/Card;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {}, Lorg/wikipedia/util/GeoUtil;->getGeoIPCountry()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/feed/announcement/Announcement;

    .line 61
    invoke-static {v3, v1, v2}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->shouldShow(Lorg/wikipedia/feed/announcement/Announcement;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v3}, Lorg/wikipedia/feed/announcement/Announcement;->type()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x351c58a6    # -7459757.0f

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2

    const v7, 0x7c171f44

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "fundraising"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "survey"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    .line 72
    new-instance v4, Lorg/wikipedia/feed/announcement/AnnouncementCard;

    invoke-direct {v4, v3}, Lorg/wikipedia/feed/announcement/AnnouncementCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v3}, Lorg/wikipedia/feed/announcement/Announcement;->placement()Ljava/lang/String;

    move-result-object v4

    const-string v5, "feed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    new-instance v4, Lorg/wikipedia/feed/announcement/FundraisingCard;

    invoke-direct {v4, v3}, Lorg/wikipedia/feed/announcement/FundraisingCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_5
    new-instance v4, Lorg/wikipedia/feed/announcement/SurveyCard;

    invoke-direct {v4, v3}, Lorg/wikipedia/feed/announcement/SurveyCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method static synthetic lambda$request$0(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/announcement/AnnouncementList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementList;->items()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->buildCards(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$request$1(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/Throwable;)V

    .line 46
    invoke-interface {p0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static matchesConditions(Lorg/wikipedia/feed/announcement/Announcement;)Z
    .locals 3

    .line 113
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->beta()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->beta()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreProdRelease()Z

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->loggedIn()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->loggedIn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->readingListSyncEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->readingListSyncEnabled()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    move-result v0

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static matchesCountryCode(Lorg/wikipedia/feed/announcement/Announcement;Ljava/lang/String;)Z
    .locals 2

    .line 92
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementsCountryOverride()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->countries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static matchesDate(Lorg/wikipedia/feed/announcement/Announcement;Ljava/util/Date;)Z
    .locals 3

    .line 103
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->ignoreDateForAnnouncements()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->startTime()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->startTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->endTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->endTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private static matchesVersionCodes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 123
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->announcementsVersionCode()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->announcementsVersionCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getVersionCode()I

    move-result v0

    .line 126
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le p0, v0, :cond_1

    return v2

    .line 129
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, v0, :cond_2

    return v2

    :catch_0
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldShow(Lorg/wikipedia/feed/announcement/Announcement;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->platforms()Ljava/util/List;

    move-result-object v0

    const-string v1, "AndroidApp"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->platforms()Ljava/util/List;

    move-result-object v0

    const-string v1, "AndroidAppV2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    invoke-static {p0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->matchesCountryCode(Lorg/wikipedia/feed/announcement/Announcement;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p0, p2}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->matchesDate(Lorg/wikipedia/feed/announcement/Announcement;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->minVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/Announcement;->maxVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->matchesVersionCodes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {p0}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->matchesConditions(Lorg/wikipedia/feed/announcement/Announcement;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->cancel()V

    .line 41
    iget-object p1, p0, Lorg/wikipedia/feed/announcement/AnnouncementClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object p2

    invoke-interface {p2}, Lorg/wikipedia/dataclient/RestService;->getAnnouncements()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 42
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 43
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$bEDv-CNCE5rH7PVwDJi89OG6J7M;

    invoke-direct {p3, p4}, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$bEDv-CNCE5rH7PVwDJi89OG6J7M;-><init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    new-instance v0, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$uyC5hZ3L5HVpIFQSb_K0OXEaEN8;

    invoke-direct {v0, p4}, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$uyC5hZ3L5HVpIFQSb_K0OXEaEN8;-><init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 44
    invoke-virtual {p2, p3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
