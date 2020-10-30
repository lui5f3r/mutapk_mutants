.class abstract Lorg/wikipedia/analytics/Funnel;
.super Ljava/lang/Object;
.source "Funnel.java"


# static fields
.field private static final DEFAULT_APP_INSTALL_ID_KEY:Ljava/lang/String; = "app_install_id"

.field private static final DEFAULT_SESSION_TOKEN_KEY:Ljava/lang/String; = "session_token"

.field private static final DEFAULT_TIMESTAMP_KEY:Ljava/lang/String; = "client_dt"

.field protected static final SAMPLE_LOG_10:I = 0xa

.field protected static final SAMPLE_LOG_100:I = 0x64

.field protected static final SAMPLE_LOG_1K:I = 0x3e8

.field protected static final SAMPLE_LOG_ALL:I = 0x1


# instance fields
.field private final app:Lorg/wikipedia/WikipediaApp;

.field private final revision:I

.field private final sampleRate:I

.field private final sampleRateRemoteParamName:Ljava/lang/String;

.field private final schemaName:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;

.field private final wiki:Lorg/wikipedia/dataclient/WikiSite;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "site"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 51
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/analytics/Funnel;->sessionToken:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    .line 56
    iput-object p2, p0, Lorg/wikipedia/analytics/Funnel;->schemaName:Ljava/lang/String;

    .line 57
    iput p3, p0, Lorg/wikipedia/analytics/Funnel;->revision:I

    .line 58
    iput p4, p0, Lorg/wikipedia/analytics/Funnel;->sampleRate:I

    .line 59
    iput-object p5, p0, Lorg/wikipedia/analytics/Funnel;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_rate"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/Funnel;->sampleRateRemoteParamName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 47
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method private getSampleRate()I
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getRemoteConfig()Lorg/wikipedia/settings/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/settings/RemoteConfig;->getConfig()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/analytics/Funnel;->sampleRateRemoteParamName:Ljava/lang/String;

    iget v2, p0, Lorg/wikipedia/analytics/Funnel;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static isUserInSamplingGroup(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 167
    rem-int/2addr p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 170
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method protected getApp()Lorg/wikipedia/WikipediaApp;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method protected varargs log(Lorg/wikipedia/dataclient/WikiSite;[Ljava/lang/Object;)V
    .locals 4

    .line 126
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isDevRelease()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    .line 127
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/analytics/Funnel;->getSampleRate()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wikipedia/analytics/Funnel;->isUserInSamplingGroup(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 130
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 133
    :cond_1
    new-instance p2, Lorg/wikipedia/analytics/EventLoggingEvent;

    iget-object v1, p0, Lorg/wikipedia/analytics/Funnel;->schemaName:Ljava/lang/String;

    iget v2, p0, Lorg/wikipedia/analytics/Funnel;->revision:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    .line 136
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/wikipedia/analytics/EventLoggingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 139
    invoke-static {}, Lorg/wikipedia/analytics/EventLoggingService;->getInstance()Lorg/wikipedia/analytics/EventLoggingService;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/analytics/EventLoggingEvent;->getData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/analytics/EventLoggingService;->log(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method protected varargs log([Ljava/lang/Object;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/analytics/Funnel;->log(Lorg/wikipedia/dataclient/WikiSite;[Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601LocalDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_dt"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lorg/wikipedia/analytics/Funnel;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_install_id"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessSessionToken(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " val="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_token"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
