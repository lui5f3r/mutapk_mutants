.class public Lorg/wikipedia/settings/RemoteConfig;
.super Ljava/lang/Object;
.source "RemoteConfig.java"


# instance fields
.field private curConfig:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/json/JSONObject;
    .locals 2

    .line 19
    iget-object v0, p0, Lorg/wikipedia/settings/RemoteConfig;->curConfig:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRemoteConfigJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig;->curConfig:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/settings/RemoteConfig;->curConfig:Lorg/json/JSONObject;

    return-object v0
.end method

.method public updateConfig(Lorg/json/JSONObject;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setRemoteConfigJson(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lorg/wikipedia/settings/RemoteConfig;->curConfig:Lorg/json/JSONObject;

    return-void
.end method
