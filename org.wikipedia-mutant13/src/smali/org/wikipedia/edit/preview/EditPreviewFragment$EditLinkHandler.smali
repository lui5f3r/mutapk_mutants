.class Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "EditPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/preview/EditPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditLinkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Landroid/content/Context;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 337
    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$showLeavingEditDialogue$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 374
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private showLeavingEditDialogue(Ljava/lang/Runnable;)V
    .locals 2

    .line 369
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000ce

    .line 370
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$FZl5xmhbCrAtu2hOKFOztdW5aJo;

    invoke-direct {v1, p1}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$FZl5xmhbCrAtu2hOKFOztdW5aJo;-><init>(Ljava/lang/Runnable;)V

    const p1, 0x7f1000cf

    .line 371
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000d0

    const/4 v1, 0x0

    .line 376
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-static {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->access$000(Lorg/wikipedia/edit/preview/EditPreviewFragment;)Lorg/wikipedia/page/PageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageViewModel;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onExternalLinkClicked$1$EditPreviewFragment$EditLinkHandler(Landroid/net/Uri;)V
    .locals 1

    .line 353
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onInternalLinkClicked$0$EditPreviewFragment$EditLinkHandler(Lorg/wikipedia/page/PageTitle;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {v1, v2, p1}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onExternalLinkClicked(Landroid/net/Uri;)V
    .locals 1

    .line 353
    new-instance v0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->showLeavingEditDialogue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 347
    new-instance v0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$kT6sx4Fv4BtoOo7RWnXNzoGpjlw;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$kT6sx4Fv4BtoOo7RWnXNzoGpjlw;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;Lorg/wikipedia/page/PageTitle;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->showLeavingEditDialogue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    return-void
.end method

.method public onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
