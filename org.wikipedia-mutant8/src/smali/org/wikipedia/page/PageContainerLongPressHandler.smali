.class public Lorg/wikipedia/page/PageContainerLongPressHandler;
.super Ljava/lang/Object;
.source "PageContainerLongPressHandler.java"

# interfaces
.implements Lorg/wikipedia/LongPressHandler$OverflowMenuListener;
.implements Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;


# instance fields
.field private final fragment:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    return-void
.end method

.method private copyLink(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/wikipedia/util/ClipboardUtil;->setPlainText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showCopySuccessMessage()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100032

    invoke-static {v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    return-object v0
.end method

.method public onAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment;->addToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageContainerLongPressHandler;->copyLink(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/page/PageContainerLongPressHandler;->showCopySuccessMessage()V

    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment;->openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public onShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/wikipedia/page/PageContainerLongPressHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method
