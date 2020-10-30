.class public Lorg/wikipedia/notifications/Notification$Links;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Links"
.end annotation


# instance fields
.field private primary:Lcom/google/gson/JsonElement;

.field private primaryLink:Lorg/wikipedia/notifications/Notification$Link;

.field private secondary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification$Link;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrimary()Lorg/wikipedia/notifications/Notification$Link;
    .locals 3

    .line 173
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Links;->primary:Lcom/google/gson/JsonElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/notifications/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/Notification$Link;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/notifications/Notification$Links;->primary:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/notifications/Notification$Link;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification$Link;

    iput-object v0, p0, Lorg/wikipedia/notifications/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/Notification$Link;

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Links;->primaryLink:Lorg/wikipedia/notifications/Notification$Link;

    return-object v0
.end method

.method public getSecondary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification$Link;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Links;->secondary:Ljava/util/List;

    return-object v0
.end method
