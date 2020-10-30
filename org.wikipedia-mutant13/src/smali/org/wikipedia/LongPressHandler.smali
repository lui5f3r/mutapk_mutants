.class public Lorg/wikipedia/LongPressHandler;
.super Ljava/lang/Object;
.source "LongPressHandler.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;,
        Lorg/wikipedia/LongPressHandler$OverflowMenuListener;
    }
.end annotation


# instance fields
.field private clickPositionX:F

.field private clickPositionY:F

.field private entry:Lorg/wikipedia/history/HistoryEntry;

.field private final historySource:I

.field private final overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

.field private referrer:Ljava/lang/String;

.field private title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Landroid/view/View;ILorg/wikipedia/LongPressHandler$OverflowMenuListener;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/wikipedia/LongPressHandler;->referrer:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/wikipedia/LongPressHandler;->historySource:I

    .line 38
    iput-object p3, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/wikipedia/page/PageTitle;ILorg/wikipedia/LongPressHandler$OverflowMenuListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3, p4}, Lorg/wikipedia/LongPressHandler;-><init>(Landroid/view/View;ILorg/wikipedia/LongPressHandler$OverflowMenuListener;)V

    .line 45
    iput-object p2, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    return-void
.end method

.method static synthetic lambda$showPopupMenu$0(Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Z)V
    .locals 3

    .line 83
    iget-object v0, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    .line 85
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    iget v2, p0, Lorg/wikipedia/LongPressHandler;->historySource:I

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    iput-object v0, p0, Lorg/wikipedia/LongPressHandler;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 86
    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/history/HistoryEntry;->setReferrer(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 89
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    iget v0, p0, Lorg/wikipedia/LongPressHandler;->clickPositionX:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setX(F)V

    .line 91
    iget v0, p0, Lorg/wikipedia/LongPressHandler;->clickPositionY:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 94
    new-instance v1, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;

    invoke-direct {v1, p1, p2}, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x800005

    invoke-direct {v0, p2, p1, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 98
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d000d

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 100
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 50
    instance-of p1, p2, Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 52
    move-object p1, p2

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p3

    const/4 v0, 0x7

    if-ne p3, v0, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->isValidPageLink(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 56
    new-instance p3, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {p3, p1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 58
    invoke-virtual {p3}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    check-cast v1, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;

    invoke-interface {v1}, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    check-cast v1, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;

    invoke-interface {v1}, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object p3, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    check-cast p3, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;

    invoke-interface {p3}, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p3

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/wikipedia/dataclient/WikiSite;->titleForInternalLink(Ljava/lang/String;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 63
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    check-cast p1, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;

    invoke-interface {p1}, Lorg/wikipedia/LongPressHandler$WebViewOverflowMenuListener;->getReferrer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->referrer:Ljava/lang/String;

    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/LongPressHandler;->showPopupMenu(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/LongPressHandler;->showPopupMenu(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 117
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    invoke-interface {p1, v1}, Lorg/wikipedia/LongPressHandler$OverflowMenuListener;->onShareLink(Lorg/wikipedia/page/PageTitle;)V

    return v0

    .line 108
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/LongPressHandler;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-interface {p1, v1, v2}, Lorg/wikipedia/LongPressHandler$OverflowMenuListener;->onOpenLink(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return v0

    .line 111
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/LongPressHandler;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-interface {p1, v1, v2}, Lorg/wikipedia/LongPressHandler$OverflowMenuListener;->onOpenInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return v0

    .line 114
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    invoke-interface {p1, v1}, Lorg/wikipedia/LongPressHandler$OverflowMenuListener;->onCopyLink(Lorg/wikipedia/page/PageTitle;)V

    return v0

    .line 120
    :pswitch_4
    iget-object p1, p0, Lorg/wikipedia/LongPressHandler;->overflowMenuListener:Lorg/wikipedia/LongPressHandler$OverflowMenuListener;

    iget-object v1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

    invoke-interface {p1, v1, v2}, Lorg/wikipedia/LongPressHandler$OverflowMenuListener;->onAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x7f090236
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/wikipedia/LongPressHandler;->clickPositionX:F

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/wikipedia/LongPressHandler;->clickPositionY:F

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
