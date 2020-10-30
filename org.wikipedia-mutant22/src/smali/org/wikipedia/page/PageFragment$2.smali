.class Lorg/wikipedia/page/PageFragment$2;
.super Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;
.source "PageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageFragment;->initWebViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-direct {p0}, Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$600(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/LinkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$100(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onPageFinished$0$PageFragment$2(Ljava/lang/String;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "true"

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 466
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$800(Lorg/wikipedia/page/PageFragment;)V

    .line 467
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->onPcsReady()V

    .line 468
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->mobileWebChromeShim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    new-instance p2, Lorg/wikipedia/page/-$$Lambda$PageFragment$2$73nE1FA7ty__N5B3zw0USj9gUaY;

    invoke-direct {p2, p0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$2$73nE1FA7ty__N5B3zw0USj9gUaY;-><init>(Lorg/wikipedia/page/PageFragment$2;)V

    const-string v0, "(function() { return (typeof pcs !== \'undefined\'); })();"

    invoke-virtual {p1, v0, p2}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluateImmediate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 475
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageFragment;->onPageLoadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 480
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "page/mobile-html/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$2;->this$0:Lorg/wikipedia/page/PageFragment;

    new-instance v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/wikipedia/util/UriUtil;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageFragment;->onPageLoadError(Ljava/lang/Throwable;)V

    return-void
.end method
