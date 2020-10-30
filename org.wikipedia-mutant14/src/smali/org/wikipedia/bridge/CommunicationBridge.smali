.class public Lorg/wikipedia/bridge/CommunicationBridge;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/bridge/CommunicationBridge$BridgeMessage;,
        Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;,
        Lorg/wikipedia/bridge/CommunicationBridge$CommunicatingChrome;,
        Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;,
        Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_HANDLE_MESSAGE_FROM_JS:I = 0x1


# instance fields
.field private final communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

.field private final eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private incomingMessageHandler:Landroid/os/Handler;

.field private isMetadataReady:Z

.field private isPcsReady:Z

.field private final pendingEvals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingJSMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/bridge/CommunicationBridge$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/bridge/CommunicationBridge$1;-><init>(Lorg/wikipedia/bridge/CommunicationBridge;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 63
    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    iget-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 65
    iget-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 66
    iget-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/bridge/CommunicationBridge$CommunicatingChrome;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicatingChrome;-><init>(Lorg/wikipedia/bridge/CommunicationBridge$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67
    iget-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {p1}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/bridge/CommunicationBridge$PcsClientJavascriptInterface;-><init>(Lorg/wikipedia/bridge/CommunicationBridge;Lorg/wikipedia/bridge/CommunicationBridge$1;)V

    const-string v1, "pcsClient"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/bridge/CommunicationBridge;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/bridge/CommunicationBridge;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/bridge/CommunicationBridge;)Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    return-object p0
.end method

.method private flushMessages()V
    .locals 4

    .line 142
    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v2}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v2}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/ValueCallback;

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 152
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p2, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->eventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    iput-object v1, p0, Lorg/wikipedia/bridge/CommunicationBridge;->incomingMessageHandler:Landroid/os/Handler;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "pcsClient"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->loadBlankPage()V

    return-void
.end method

.method public evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    return-void
.end method

.method public evaluateImmediate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadBlankPage()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onMetadataReady()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 82
    invoke-direct {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    return-void
.end method

.method public onPcsReady()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 73
    invoke-direct {p0}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    return-void
.end method

.method public resetHtml(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 91
    iput-boolean v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 92
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingJSMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->pendingEvals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getModel()Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->shouldLoadAsMobileWeb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getMobileUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    invoke-interface {v0}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "page/mobile-html/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
