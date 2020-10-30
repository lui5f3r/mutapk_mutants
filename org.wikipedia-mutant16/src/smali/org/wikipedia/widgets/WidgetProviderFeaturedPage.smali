.class public Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProviderFeaturedPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private findFeaturedArticleTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 129
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 132
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 133
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/wiki/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    .line 138
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/UriUtil;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/wikipedia/dataclient/WikiSite;->titleForInternalLink(Ljava/lang/String;)Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->isFilePage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public static forceUpdateWidget(Landroid/content/Context;)V
    .locals 5

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "appWidgetIds"

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private getFeaturedArticleInformation(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 89
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 92
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    const/4 v2, 0x0

    .line 95
    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->getUtcRequestDateFor(I)Lorg/wikipedia/feed/model/UtcDate;

    move-result-object v2

    .line 97
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/feed/model/UtcDate;->year()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/wikipedia/feed/model/UtcDate;->month()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/wikipedia/feed/model/UtcDate;->date()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lorg/wikipedia/dataclient/RestService;->getAggregatedFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jWsey0dRTJwFjV106QSt32pg-8k;

    invoke-direct {v3, v1}, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jWsey0dRTJwFjV106QSt32pg-8k;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 98
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 106
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;

    invoke-direct {v3, p0, v1}, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;-><init>(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;Lorg/wikipedia/page/PageTitle;)V

    .line 107
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;

    invoke-direct {v3, v0, p1}, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;)V

    new-instance v0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;-><init>(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Lorg/wikipedia/page/PageTitle;)V

    .line 114
    invoke-virtual {v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method static synthetic lambda$getFeaturedArticleInformation$1(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa()Lorg/wikipedia/dataclient/page/PageSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa()Lorg/wikipedia/dataclient/page/PageSummary;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/wikipedia/dataclient/Service;->parseTextForMainPage(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getFeaturedArticleInformation$3(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    check-cast p2, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object p0

    .line 117
    invoke-interface {p1, p0, v0}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;->onFeaturedArticleReceived(Lorg/wikipedia/page/PageTitle;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$getFeaturedArticleInformation$4(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Lorg/wikipedia/page/PageTitle;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;->onFeaturedArticleReceived(Lorg/wikipedia/page/PageTitle;Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onUpdate$0([ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Lorg/wikipedia/page/PageTitle;Ljava/lang/CharSequence;)V
    .locals 7

    .line 57
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    const-string v3, "updating widget..."

    .line 58
    invoke-static {v3}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0128

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0904b3

    .line 63
    invoke-virtual {v3, v4, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    :cond_0
    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/wikipedia/page/PageActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "org.wikipedia.pagetitle"

    .line 70
    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "featuredArticleFromWidget"

    const/4 v6, 0x1

    .line 71
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    .line 72
    invoke-static {p1, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f0904b2

    .line 81
    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$getFeaturedArticleInformation$2$WidgetProviderFeaturedPage(Lorg/wikipedia/page/PageTitle;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 108
    instance-of v0, p2, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloaded page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object p1

    const/4 v0, 0x0

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->findFeaturedArticleTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 53
    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    .line 56
    new-instance v0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;

    invoke-direct {v0, p3, p1, p2}, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;-><init>([ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->getFeaturedArticleInformation(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;)V

    return-void
.end method
