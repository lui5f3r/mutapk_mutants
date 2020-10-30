.class public Lorg/wikipedia/descriptions/DescriptionEditFragment;
.super Landroidx/fragment/app/Fragment;
.source "DescriptionEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;,
        Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_ACTION:Ljava/lang/String; = "action"

.field private static final ARG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ARG_HIGHLIGHT_TEXT:Ljava/lang/String; = "highlightText"

.field private static final ARG_INVOKE_SOURCE:Ljava/lang/String; = "invokeSource"

.field private static final ARG_REVIEWING:Ljava/lang/String; = "inReviewing"

.field private static final ARG_SOURCE_SUMMARY:Ljava/lang/String; = "sourceSummary"

.field private static final ARG_TARGET_SUMMARY:Ljava/lang/String; = "targetSummary"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field editView:Lorg/wikipedia/descriptions/DescriptionEditView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/DescriptionEditFunnel;

.field private highlightText:Ljava/lang/String;

.field private invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field private sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private successRunnable:Ljava/lang/Runnable;

.field private targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 98
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 100
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->successRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/Constants$InvokeSource;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->successRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->cancelCalls()V

    return-void
.end method

.method static synthetic access$400(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/csrf/CsrfTokenClient;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    return-object p0
.end method

.method static synthetic access$402(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lorg/wikipedia/csrf/CsrfTokenClient;)Lorg/wikipedia/csrf/CsrfTokenClient;
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    return-object p1
.end method

.method static synthetic access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->funnel:Lorg/wikipedia/analytics/DescriptionEditFunnel;

    return-object p0
.end method

.method static synthetic access$900(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method private callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;
    .locals 1

    .line 258
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    return-object v0
.end method

.method private cancelCalls()V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->cancel()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private loadPageSummaryIfNeeded(Landroid/os/Bundle;)V
    .locals 4

    .line 232
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 233
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getExtractHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 235
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 236
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$dQgcbn_0uIhGK44rqmmV37XQmrg;

    invoke-direct {v1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$dQgcbn_0uIhGK44rqmmV37XQmrg;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V

    sget-object v2, Lorg/wikipedia/descriptions/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/descriptions/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 238
    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 234
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->setUpEditView(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/descriptions/DescriptionEditFragment;
    .locals 3

    .line 141
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-direct {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;-><init>()V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "highlightText"

    .line 144
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sourceSummary"

    .line 145
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "targetSummary"

    .line 146
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "action"

    .line 147
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "invokeSource"

    .line 148
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setUpEditView(Landroid/os/Bundle;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setAction(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 246
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setPageTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 247
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->highlightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setHighlightText(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lorg/wikipedia/descriptions/DescriptionEditFragment$1;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V

    .line 249
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iget-object v3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSummaries(Landroid/app/Activity;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDescription(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const-string v1, "inReviewing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 254
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadPageSummaryIfNeeded$0$DescriptionEditFragment(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->setUpEditView(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$loadPageSummaryIfNeeded$1$DescriptionEditFragment(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->setExtractHtml(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x36

    if-ne p1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;->onDescriptionEditSuccess()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    .line 217
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 219
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {p2, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDescription(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 154
    const-class v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const-class p1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 156
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->NEW:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->EXISTING:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "highlightText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->highlightText:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invokeSource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sourceSummary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "targetSummary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 171
    :cond_2
    new-instance v0, Lorg/wikipedia/analytics/DescriptionEditFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    iget-object v3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/wikipedia/analytics/DescriptionEditFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;Lorg/wikipedia/Constants$InvokeSource;)V

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->funnel:Lorg/wikipedia/analytics/DescriptionEditFunnel;

    .line 172
    invoke-virtual {v0}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logStart()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0c004d

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 180
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->unbinder:Lbutterknife/Unbinder;

    .line 181
    invoke-direct {p0, p3}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->loadPageSummaryIfNeeded(Landroid/os/Bundle;)V

    .line 183
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->funnel:Lorg/wikipedia/analytics/DescriptionEditFunnel;

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p2}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logReady()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->cancelCalls()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 200
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V

    .line 192
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 193
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->unbinder:Lbutterknife/Unbinder;

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    move-result v0

    const-string v1, "inReviewing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
