.class public Lorg/wikipedia/analytics/EventLoggingEvent;
.super Ljava/lang/Object;
.source "EventLoggingEvent.java"


# instance fields
.field private final data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/analytics/EventLoggingEvent;->data:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "schema"

    .line 29
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lorg/wikipedia/analytics/EventLoggingEvent;->data:Lorg/json/JSONObject;

    const-string v0, "revision"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lorg/wikipedia/analytics/EventLoggingEvent;->data:Lorg/json/JSONObject;

    const-string p2, "wiki"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object p1, p0, Lorg/wikipedia/analytics/EventLoggingEvent;->data:Lorg/json/JSONObject;

    const-string p2, "event"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/analytics/EventLoggingEvent;->data:Lorg/json/JSONObject;

    return-object v0
.end method
