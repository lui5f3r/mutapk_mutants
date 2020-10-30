.class public Lorg/wikipedia/page/shareafact/ShareHandler;
.super Ljava/lang/Object;
.source "ShareHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final PAYLOAD_PURPOSE_DEFINE:Ljava/lang/String; = "define"

.field private static final PAYLOAD_PURPOSE_EDIT_HERE:Ljava/lang/String; = "edit_here"

.field private static final PAYLOAD_PURPOSE_SHARE:Ljava/lang/String; = "share"

.field private static final PAYLOAD_TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field private final bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final fragment:Lorg/wikipedia/page/PageFragment;

.field private funnel:Lorg/wikipedia/analytics/ShareAFactFunnel;

.field private webViewActionMode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 53
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 54
    iput-object p2, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/page/shareafact/ShareHandler;)Lorg/wikipedia/bridge/CommunicationBridge;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/page/shareafact/ShareHandler;)Lorg/wikipedia/page/PageFragment;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/shareafact/ShareHandler;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->leaveActionMode()V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/page/shareafact/ShareHandler;ILjava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/page/shareafact/ShareHandler;->onEditHerePayload(ILjava/lang/String;Z)V

    return-void
.end method

.method private createFunnel()V
    .locals 9

    .line 45
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v2

    .line 48
    new-instance v6, Lorg/wikipedia/analytics/ShareAFactFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/page/PageProperties;->getPageId()I

    move-result v4

    .line 49
    invoke-virtual {v2}, Lorg/wikipedia/page/PageProperties;->getRevisionId()J

    move-result-wide v7

    move-object v0, v6

    move-object v2, v3

    move v3, v4

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/ShareAFactFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;IJ)V

    iput-object v6, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->funnel:Lorg/wikipedia/analytics/ShareAFactFunnel;

    return-void
.end method

.method private finishWebViewActionMode()V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method

.method private hasWebViewActionMode()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private leaveActionMode()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->hasWebViewActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->finishWebViewActionMode()V

    .line 108
    invoke-direct {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->nullifyWebViewActionMode()V

    :cond_0
    return-void
.end method

.method private nullifyWebViewActionMode()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method private onEditHerePayload(ILjava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 68
    iget-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 71
    iget-object p3, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p3}, Lorg/wikipedia/page/PageFragment;->getEditHandler()Lorg/wikipedia/edit/EditHandler;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onTextSelected(Landroid/view/ActionMode;)V
    .locals 3

    .line 80
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Landroid/view/ActionMode;

    .line 81
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f090257

    .line 83
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->shouldEnableWiktionaryDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 85
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    new-instance v1, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;

    const-string v2, "define"

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;-><init>(Lorg/wikipedia/page/shareafact/ShareHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f090256

    .line 88
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 89
    new-instance v0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;

    const-string v1, "edit_here"

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;-><init>(Lorg/wikipedia/page/shareafact/ShareHandler;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->isArticle()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 91
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->funnel:Lorg/wikipedia/analytics/ShareAFactFunnel;

    if-nez p1, :cond_2

    .line 95
    invoke-direct {p0}, Lorg/wikipedia/page/shareafact/ShareHandler;->createFunnel()V

    .line 97
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->funnel:Lorg/wikipedia/analytics/ShareAFactFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logHighlight()V

    return-void
.end method

.method public shouldEnableWiktionaryDialog()Z
    .locals 2

    .line 101
    invoke-static {}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 102
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showWiktionaryDefinition(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)Lorg/wikipedia/wiktionary/WiktionaryDialog;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method
