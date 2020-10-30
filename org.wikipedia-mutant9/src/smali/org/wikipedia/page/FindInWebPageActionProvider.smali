.class public Lorg/wikipedia/page/FindInWebPageActionProvider;
.super Lorg/wikipedia/views/FindInPageActionProvider;
.source "FindInWebPageActionProvider.java"

# interfaces
.implements Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;


# instance fields
.field private final fragment:Lorg/wikipedia/page/PageFragment;

.field private final funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/FindInPageFunnel;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/views/FindInPageActionProvider;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 18
    iput-object p2, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    .line 19
    invoke-virtual {p0, p0}, Lorg/wikipedia/views/FindInPageActionProvider;->setListener(Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider;->setEnableLastOccurrenceSearchFlag(Z)V

    return-void
.end method


# virtual methods
.method public findInPage(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$FindInWebPageActionProvider$RUCNam6pl2P9cUAOSKstTx2mt5Y;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$FindInWebPageActionProvider$RUCNam6pl2P9cUAOSKstTx2mt5Y;-><init>(Lorg/wikipedia/page/FindInWebPageActionProvider;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 31
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$findInPage$0$FindInWebPageActionProvider(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/views/FindInPageActionProvider;->setMatchesResults(II)V

    return-void
.end method

.method public onCloseClicked()V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageCloseActionMode()V

    return-void
.end method

.method public onFindNextClicked()V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FindInPageFunnel;->addFindNext()V

    .line 37
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    return-void
.end method

.method public onFindNextLongClicked()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FindInPageFunnel;->addFindPrev()V

    .line 44
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 45
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public onFindPrevClicked()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FindInPageFunnel;->addFindPrev()V

    .line 51
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    return-void
.end method

.method public onFindPrevLongClicked()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FindInPageFunnel;->addFindNext()V

    .line 58
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 59
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchTextChanged(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->funnel:Lorg/wikipedia/analytics/FindInPageFunnel;

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/FindInPageFunnel;->setFindText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/FindInWebPageActionProvider;->findInPage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearMatches()V

    :goto_0
    return-void
.end method
