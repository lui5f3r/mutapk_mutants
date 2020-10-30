.class public final Lorg/wikipedia/json/SessionUnmarshaller;
.super Ljava/lang/Object;
.source "SessionUnmarshaller.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmarshal(Ljava/lang/String;)Lorg/wikipedia/analytics/SessionData;
    .locals 2

    .line 14
    :try_start_0
    const-class v0, Lorg/wikipedia/analytics/SessionData;

    invoke-static {v0, p0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/analytics/SessionData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lorg/wikipedia/crash/RemoteLogException;

    invoke-direct {v1, v0}, Lorg/wikipedia/crash/RemoteLogException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "json"

    invoke-virtual {v1, v0, p0}, Lorg/wikipedia/crash/RemoteLogException;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/crash/RemoteLogException;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lorg/wikipedia/analytics/SessionData;

    invoke-direct {v0}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    :cond_0
    return-object v0
.end method
