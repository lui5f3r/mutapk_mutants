.class public Lorg/wikipedia/analytics/InstallReferrerFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "InstallReferrerFunnel.java"


# static fields
.field static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field static final PARAM_REFERRER_URL:Ljava/lang/String; = "referrer_url"

.field static final PARAM_UTM_CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field static final PARAM_UTM_MEDIUM:Ljava/lang/String; = "utm_medium"

.field static final PARAM_UTM_SOURCE:Ljava/lang/String; = "utm_source"

.field private static final REV_ID:I = 0x1146be2

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppInstallReferrer"


# direct methods
.method constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 2

    const-string v0, "MobileWikiAppInstallReferrer"

    const v1, 0x1146be2

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "referrer_url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "utm_medium"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "utm_campaign"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p3, v0, p1

    const/4 p1, 0x6

    const-string p2, "utm_source"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p4, v0, p1

    .line 27
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
