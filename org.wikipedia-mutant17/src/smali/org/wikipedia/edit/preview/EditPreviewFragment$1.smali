.class Lorg/wikipedia/edit/preview/EditPreviewFragment$1;
.super Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;
.source "EditPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/edit/preview/EditPreviewFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-direct {p0}, Lorg/wikipedia/dataclient/okhttp/OkHttpWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-static {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->access$100(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-static {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->access$000(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/edit/EditSectionActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 205
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 206
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-static {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->access$200(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    invoke-static {p2}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->setTopMargin(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    return-void
.end method
