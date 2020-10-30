.class public Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "AppLanguageSearchingFunnel.java"


# static fields
.field private static final REV_ID:I = 0x115c766

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppLanguageSearching"


# instance fields
.field private final settingsSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppLanguageSearching"

    const v2, 0x115c766

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 15
    iput-object p1, p0, Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;->settingsSessionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logLanguageAdded(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "language_settings_token"

    aput-object v2, v0, v1

    .line 19
    iget-object v1, p0, Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;->settingsSessionToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "added"

    aput-object v2, v0, v1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "language"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    const/4 p1, 0x6

    const-string p2, "search_string"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p3, v0, p1

    .line 19
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logNoLanguageAdded(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "language_settings_token"

    aput-object v2, v0, v1

    .line 28
    iget-object v1, p0, Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;->settingsSessionToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "added"

    aput-object v2, v0, v1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "search_string"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 28
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 8
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 8
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
