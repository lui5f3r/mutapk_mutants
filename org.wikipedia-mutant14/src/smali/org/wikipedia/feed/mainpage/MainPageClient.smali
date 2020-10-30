.class public Lorg/wikipedia/feed/mainpage/MainPageClient;
.super Lorg/wikipedia/feed/dataclient/DummyClient;
.source "MainPageClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/feed/dataclient/DummyClient;-><init>()V

    return-void
.end method

.method public static getMainPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 3

    .line 19
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 20
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/settings/SiteInfoClient;->getMainPageForLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    return-object v1
.end method


# virtual methods
.method public getNewCard(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/model/Card;
    .locals 0

    .line 14
    new-instance p1, Lorg/wikipedia/feed/mainpage/MainPageCard;

    invoke-direct {p1}, Lorg/wikipedia/feed/mainpage/MainPageCard;-><init>()V

    return-object p1
.end method
