.class Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditsStatsTypeAdapter;
.super Ljava/lang/Object;
.source "SuggestedEditsFunnel.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/analytics/SuggestedEditsFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestedEditsStatsTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditsStatsTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 178
    check-cast p1, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditsStatsTypeAdapter;->serialize(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 181
    invoke-virtual {p1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object p1

    :goto_0
    return-object p1
.end method
