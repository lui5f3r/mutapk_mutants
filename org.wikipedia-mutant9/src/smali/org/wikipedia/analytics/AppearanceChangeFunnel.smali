.class public Lorg/wikipedia/analytics/AppearanceChangeFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "AppearanceChangeFunnel.java"


# static fields
.field private static final REV_ID:I = 0x11464bf

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppAppearanceSettings"


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 2

    const-string v0, "MobileWikiAppAppearanceSettings"

    const v1, 0x11464bf

    .line 15
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;ILorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logFontSizeChange(FF)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fontSizeChange"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_value"

    aput-object v2, v0, v1

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "new_value"

    aput-object v1, v0, p1

    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 19
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logThemeChange(Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/Theme;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "themeChange"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_value"

    aput-object v2, v0, v1

    .line 29
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getFunnelName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "new_value"

    aput-object v1, v0, p1

    .line 30
    invoke-virtual {p2}, Lorg/wikipedia/theme/Theme;->getFunnelName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 27
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
