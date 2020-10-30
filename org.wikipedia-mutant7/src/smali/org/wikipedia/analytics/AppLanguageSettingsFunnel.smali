.class public Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "AppLanguageSettingsFunnel.java"


# static fields
.field private static final REV_ID:I = 0x11464b8

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppLanguageSettings"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 10
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppLanguageSettings"

    const v2, 0x11464b8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

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

.method public logLanguageSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "initial"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "final"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p3, v0, p1

    const/4 p1, 0x6

    const-string p2, "interactions"

    aput-object p2, v0, p1

    .line 18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/16 p1, 0x8

    const-string p2, "searched"

    aput-object p2, v0, p1

    .line 19
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v0, p2

    .line 14
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 5
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 5
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
