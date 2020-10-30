.class public final Lorg/wikipedia/json/GsonMarshaller;
.super Ljava/lang/Object;
.source "GsonMarshaller.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshal(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static marshal(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
