.class public Lorg/wikipedia/dataclient/mwapi/SiteMatrix;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "SiteMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;
    }
.end annotation


# instance fields
.field private sitematrix:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method

.method public static getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/SiteMatrix;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->siteMatrix()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "count"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->siteMatrix()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-class v4, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public siteMatrix()Lcom/google/gson/JsonObject;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->sitematrix:Lcom/google/gson/JsonObject;

    return-object v0
.end method
