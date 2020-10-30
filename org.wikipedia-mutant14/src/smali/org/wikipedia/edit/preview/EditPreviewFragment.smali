.class public Lorg/wikipedia/edit/preview/EditPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "EditPreviewFragment.java"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
.implements Lorg/wikipedia/page/references/ReferenceDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;
    }
.end annotation


# instance fields
.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private funnel:Lorg/wikipedia/analytics/EditFunnel;

.field private linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

.field private model:Lorg/wikipedia/page/PageViewModel;

.field private otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

.field private previewContainer:Landroid/widget/ScrollView;

.field private references:Lorg/wikipedia/page/references/PageReferences;

.field private summaryTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/summaries/EditSummaryTag;",
            ">;"
        }
    .end annotation
.end field

.field private webview:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lorg/wikipedia/page/PageViewModel;

    invoke-direct {v0}, Lorg/wikipedia/page/PageViewModel;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 71
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 72
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/bridge/CommunicationBridge;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    return-object p0
.end method

.method private initWebView()V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    new-instance v1, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$1;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    sget-object v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$dRzu4Xs-weWfF4MBDMiSjQPUXgQ;->INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$dRzu4Xs-weWfF4MBDMiSjQPUXgQ;

    const-string v2, "setup"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 212
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    sget-object v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;->INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;

    const-string v2, "final_setup"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 215
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 216
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    sget-object v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6_bDY--Ohw1Ot_ZA6_Bschue5sI;->INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6_bDY--Ohw1Ot_ZA6_Bschue5sI;

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 219
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    sget-object v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$HMZSmnndcazWaGm-oEF3mxt7o4M;->INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$HMZSmnndcazWaGm-oEF3mxt7o4M;

    const-string v2, "media"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 222
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    new-instance v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$vRqcCfsFogZw2PreOUSfzFH-qtw;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$vRqcCfsFogZw2PreOUSfzFH-qtw;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    const-string v2, "reference"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    return-void
.end method

.method static synthetic lambda$initWebView$3(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$initWebView$4(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$initWebView$5(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$initWebView$6(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    return-object v0
.end method

.method public getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    return-object v0
.end method

.method public getReferencesGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    invoke-virtual {v0}, Lorg/wikipedia/page/references/PageReferences;->getReferencesGroup()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedReferenceIndex()I
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    invoke-virtual {v0}, Lorg/wikipedia/page/references/PageReferences;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/edit/summaries/EditSummaryTag;

    .line 239
    invoke-virtual {v2}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 3

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->previewContainer:Landroid/widget/ScrollView;

    new-instance v2, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tSApdbtl0momg-zmDMitfU2SPjs;

    invoke-direct {v2, p0}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tSApdbtl0momg-zmDMitfU2SPjs;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    invoke-static {v1, v0, v2}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->previewContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$hide$8$EditPreviewFragment()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public synthetic lambda$initWebView$7$EditPreviewFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 223
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lorg/wikipedia/page/references/PageReferences;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/references/PageReferences;

    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 224
    invoke-virtual {p1}, Lorg/wikipedia/page/references/PageReferences;->getReferencesGroup()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    new-instance v0, Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-direct {v0}, Lorg/wikipedia/page/references/ReferenceDialog;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$0$EditPreviewFragment(Lorg/wikipedia/edit/summaries/EditSummaryTag;Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/wikipedia/analytics/EditFunnel;->logEditSummaryTap(I)V

    .line 125
    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$EditPreviewFragment(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    const v0, 0x7f1000f3

    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/EditFunnel;->logEditSummaryTap(I)V

    .line 136
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setSelected(Z)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/edit/EditSectionActivity;

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditSectionActivity;->showCustomSummary()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showPreview$2$EditPreviewFragment()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const v2, 0x7f0c005a

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 76
    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f090122

    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/ObservableWebView;

    iput-object v4, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    const v4, 0x7f090121

    .line 78
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->previewContainer:Landroid/widget/ScrollView;

    const v4, 0x7f090131

    .line 79
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 80
    new-instance v5, Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-direct {v5, v0}, Lorg/wikipedia/bridge/CommunicationBridge;-><init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V

    iput-object v5, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 81
    new-instance v5, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 82
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->initWebView()V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/EditSectionActivity;

    invoke-virtual {v5}, Lorg/wikipedia/edit/EditSectionActivity;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    .line 85
    iget-object v6, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v6, v5}, Lorg/wikipedia/page/PageViewModel;->setTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 86
    iget-object v6, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v6, v5}, Lorg/wikipedia/page/PageViewModel;->setTitleOriginal(Lorg/wikipedia/page/PageTitle;)V

    .line 87
    iget-object v6, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    new-instance v7, Lorg/wikipedia/history/HistoryEntry;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v8}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-virtual {v6, v7}, Lorg/wikipedia/page/PageViewModel;->setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 88
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getFunnelManager()Lorg/wikipedia/analytics/FunnelManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/wikipedia/analytics/FunnelManager;->getEditFunnel(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/analytics/EditFunnel;

    move-result-object v6

    iput-object v6, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 100
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 101
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v9

    .line 102
    new-instance v10, Ljava/util/Locale;

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 105
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 106
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "test"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 107
    invoke-static {v5, v10}, Lorg/wikipedia/util/L10nUtil;->setDesiredLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 108
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v7, v8, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v10, 0x3

    new-array v12, v10, [I

    .line 112
    fill-array-data v12, :array_0

    .line 118
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_1

    .line 119
    aget v14, v12, v13

    .line 120
    new-instance v15, Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v15, v10}, Lorg/wikipedia/edit/summaries/EditSummaryTag;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 123
    new-instance v10, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$NnHpt_4tAGHscW9GnDsVp7b6SyM;

    invoke-direct {v10, v0, v15}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$NnHpt_4tAGHscW9GnDsVp7b6SyM;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/edit/summaries/EditSummaryTag;)V

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    iget-object v10, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x3

    goto :goto_0

    .line 131
    :cond_1
    new-instance v10, Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/wikipedia/edit/summaries/EditSummaryTag;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    const v12, 0x7f1000f3

    .line 132
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    new-instance v6, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$8AVaQodUjCVh3t3iIrMe9sSWh74;

    invoke-direct {v6, v0}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$8AVaQodUjCVh3t3iIrMe9sSWh74;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v11, :cond_2

    .line 148
    invoke-virtual {v5, v9}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 149
    new-instance v4, Landroid/content/res/Resources;

    invoke-direct {v4, v7, v8, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_2
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    .line 153
    :goto_1
    iget-object v5, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 154
    iget-object v5, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/summaries/EditSummaryTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "summaryTag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setSelected(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "otherTag"

    .line 156
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    iget-object v4, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setSelected(Z)V

    .line 158
    iget-object v4, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_4
    iget-object v1, v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->previewContainer:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x7f1000f5
        0x7f1000f1
        0x7f1000f2
    .end array-data
.end method

.method public onDestroyView()V
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 259
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lorg/wikipedia/views/ObservableWebView;->clearAllListeners()V

    .line 261
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->cleanup()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    .line 265
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 291
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summaryTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->summaryTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v2}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "otherTag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCustomSummary(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const v1, 0x7f1000f3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->otherTag:Lorg/wikipedia/edit/summaries/EditSummaryTag;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setSelected(Z)V

    return-void
.end method

.method public showPreview(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/EditSectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "transform/wikitext/to/mobile-html/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wikitext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->webview:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 185
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->previewContainer:Landroid/widget/ScrollView;

    new-instance p2, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tRtoh_HiFhtb3lP9NAC-HoXWiwI;

    invoke-direct {p2, p0}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tRtoh_HiFhtb3lP9NAC-HoXWiwI;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    invoke-static {p1, p2}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f090129

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;)V

    return-void
.end method
