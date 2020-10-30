.class Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/bridge/CommunicationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgeMessage"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private data:Lcom/google/gson/JsonObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->action:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/gson/JsonObject;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->data:Lcom/google/gson/JsonObject;

    return-object v0
.end method
