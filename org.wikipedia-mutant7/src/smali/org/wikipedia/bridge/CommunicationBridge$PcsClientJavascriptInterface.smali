.class Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/bridge/CommunicationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcsClientJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/bridge/CommunicationBridge;


# direct methods
.method private constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge;Lorg/wikipedia/bridge/CommunicationBridge$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;-><init>(Lorg/wikipedia/bridge/CommunicationBridge;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSetupSettings()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$400(Lorg/wikipedia/bridge/CommunicationBridge;)Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 204
    invoke-static {v1}, Lorg/wikipedia/bridge/CommunicationBridge;->access$400(Lorg/wikipedia/bridge/CommunicationBridge;)Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getModel()Lorg/wikipedia/page/PageViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v2}, Lorg/wikipedia/bridge/CommunicationBridge;->access$400(Lorg/wikipedia/bridge/CommunicationBridge;)Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    move-result-object v2

    invoke-interface {v2}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->isPreview()Z

    move-result v2

    iget-object v3, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 205
    invoke-static {v3}, Lorg/wikipedia/bridge/CommunicationBridge;->access$400(Lorg/wikipedia/bridge/CommunicationBridge;)Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getToolbarMargin()I

    move-result v3

    .line 203
    invoke-static {v0, v1, v2, v3}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setUp(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;ZI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceiveMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$300(Lorg/wikipedia/bridge/CommunicationBridge;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$300(Lorg/wikipedia/bridge/CommunicationBridge;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 196
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 195
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;->this$0:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->access$300(Lorg/wikipedia/bridge/CommunicationBridge;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
