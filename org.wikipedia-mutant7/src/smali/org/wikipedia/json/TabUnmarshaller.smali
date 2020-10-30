.class public final Lorg/wikipedia/json/TabUnmarshaller;
.super Ljava/lang/Object;
.source "TabUnmarshaller.java"


# static fields
.field private static final TYPE_TOKEN:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken<",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/wikipedia/json/TabUnmarshaller$1;

    invoke-direct {v0}, Lorg/wikipedia/json/TabUnmarshaller$1;-><init>()V

    sput-object v0, Lorg/wikipedia/json/TabUnmarshaller;->TYPE_TOKEN:Lcom/google/gson/reflect/TypeToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmarshal(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;"
        }
    .end annotation

    .line 21
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/TabUnmarshaller;->TYPE_TOKEN:Lcom/google/gson/reflect/TypeToken;

    invoke-static {v0, p0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lorg/wikipedia/crash/RemoteLogException;

    invoke-direct {v1, v0}, Lorg/wikipedia/crash/RemoteLogException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "json"

    invoke-virtual {v1, v0, p0}, Lorg/wikipedia/crash/RemoteLogException;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/crash/RemoteLogException;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
