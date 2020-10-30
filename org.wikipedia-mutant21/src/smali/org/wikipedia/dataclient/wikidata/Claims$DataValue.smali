.class public Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataValue"
.end annotation


# instance fields
.field private type:Ljava/lang/String;

.field private value:Lcom/google/gson/JsonElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    const-string v1, "wikibase-entityid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Claims$EntityIdValue;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    const-string v1, "monolingualtext"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->type:Ljava/lang/String;

    const-string v1, "globecoordinate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->value:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method
