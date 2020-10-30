.class Lorg/wikipedia/page/PageFragment$5;
.super Lorg/wikipedia/page/LinkHandler;
.source "PageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageFragment;->setupMessageHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 1045
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$100(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    return-object v0
.end method

.method public onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/page/PageFragment;->access$1100(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/page/PageFragment;->access$1200(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1032
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p2}, Lorg/wikipedia/page/PageFragment;->access$1000(Lorg/wikipedia/page/PageFragment;)V

    .line 1033
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment$5;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p2}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->prepareToScrollTo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    return-void
.end method
