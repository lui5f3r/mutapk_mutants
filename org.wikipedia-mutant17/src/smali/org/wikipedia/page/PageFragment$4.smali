.class Lorg/wikipedia/page/PageFragment$4;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageFragment;->showFindInPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;

.field final synthetic val$findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

.field final synthetic val$funnel:Lorg/wikipedia/analytics/FindInPageFunnel;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/FindInWebPageActionProvider;Lorg/wikipedia/analytics/FindInPageFunnel;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$4;->val$findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$4;->val$funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const p1, 0x7f10019a

    .line 897
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 898
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment$4;->val$findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 899
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 900
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageFragment;->setToolbarElevationEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 917
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->val$funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/FindInPageFunnel;->setPageHeight(I)V

    .line 921
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->val$funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/FindInPageFunnel;->logDone()V

    .line 922
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearMatches()V

    .line 923
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->hideSoftKeyboard()V

    .line 924
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$4;->this$0:Lorg/wikipedia/page/PageFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageFragment;->setToolbarElevationEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const-string p2, "actionModeFindInPage"

    .line 906
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
