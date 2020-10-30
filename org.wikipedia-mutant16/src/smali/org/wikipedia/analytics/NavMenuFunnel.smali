.class public Lorg/wikipedia/analytics/NavMenuFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "NavMenuFunnel.java"


# static fields
.field private static final NAV_MENU_FEED:Ljava/lang/String; = "Feed"

.field private static final NAV_MENU_HISTORY:Ljava/lang/String; = "Recent"

.field private static final NAV_MENU_LOGIN:Ljava/lang/String; = "Login"

.field private static final NAV_MENU_MORE:Ljava/lang/String; = "More"

.field private static final NAV_MENU_RANDOM:Ljava/lang/String; = "Random"

.field private static final NAV_MENU_READING_LISTS:Ljava/lang/String; = "ReadingLists"

.field private static final REV_ID:I = 0x1147775

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppNavMenu"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppNavMenu"

    const v2, 0x1147775

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    return-void
.end method

.method private logSelect(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "select"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "menuItem"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 57
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 5
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logCancel()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancel"

    aput-object v2, v0, v1

    .line 51
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logFeed()V
    .locals 1

    const-string v0, "Feed"

    .line 21
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method

.method public logHistory()V
    .locals 1

    const-string v0, "Recent"

    .line 25
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method

.method public logLogin()V
    .locals 1

    const-string v0, "Login"

    .line 37
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method

.method public logMore()V
    .locals 1

    const-string v0, "More"

    .line 33
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method

.method public logOpen()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "open"

    aput-object v2, v0, v1

    .line 45
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logRandom()V
    .locals 1

    const-string v0, "Random"

    .line 41
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method

.method public logReadingLists()V
    .locals 1

    const-string v0, "ReadingLists"

    .line 29
    invoke-direct {p0, v0}, Lorg/wikipedia/analytics/NavMenuFunnel;->logSelect(Ljava/lang/String;)V

    return-void
.end method
