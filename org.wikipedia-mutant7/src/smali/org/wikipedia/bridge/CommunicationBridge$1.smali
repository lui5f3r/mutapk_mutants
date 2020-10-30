.class Lorg/wikipedia/bridge/CommunicationBridge$1;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/bridge/CommunicationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/bridge/CommunicationBridge;


# direct methods
.method constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge$1;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 159
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;

    .line 160
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$1;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$200(Lorg/wikipedia/bridge/CommunicationBridge;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such message type registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;)V

    return v1

    .line 165
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$1;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$200(Lorg/wikipedia/bridge/CommunicationBridge;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;

    .line 167
    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;->getData()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;->onMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method
