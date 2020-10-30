.class public Lorg/wikipedia/edit/EditHandler;
.super Ljava/lang/Object;
.source "EditHandler.java"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;
    }
.end annotation


# static fields
.field public static final RESULT_REFRESH_PAGE:I = 0x1


# instance fields
.field private currentPage:Lorg/wikipedia/page/Page;

.field private final fragment:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    const-string p1, "edit_section"

    .line 32
    invoke-virtual {p2, p1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    const-string p1, "add_title_description"

    .line 33
    invoke-virtual {p2, p1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/edit/EditHandler;)Lorg/wikipedia/page/PageFragment;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onMessage$0$EditHandler(Landroid/view/View;Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    .line 89
    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 8

    .line 76
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "edit_section"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string p1, "sectionId"

    .line 80
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    if-nez p1, :cond_1

    .line 81
    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-static {p2}, Lorg/wikipedia/descriptions/DescriptionEditUtil;->isEditAllowed(Lorg/wikipedia/page/Page;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/views/ObservableWebView;->getTouchStartX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 84
    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/views/ObservableWebView;->getTouchStartY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 85
    iget-object p2, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    new-instance p2, Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f110130

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 87
    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d000c

    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    new-instance v0, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;-><init>(Lorg/wikipedia/edit/EditHandler;Lorg/wikipedia/edit/EditHandler$1;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 89
    new-instance v0, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;-><init>(Lorg/wikipedia/edit/EditHandler;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    .line 90
    invoke-virtual {p2}, Landroidx/appcompat/widget/PopupMenu;->show()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "add_title_description"

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-static {p1}, Lorg/wikipedia/descriptions/DescriptionEditUtil;->isEditAllowed(Lorg/wikipedia/page/Page;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, v1}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPage(Lorg/wikipedia/page/Page;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    return-void
.end method

.method public showUneditableDialog()V
    .locals 3

    .line 64
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f10021e

    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10021c

    goto :goto_0

    :cond_0
    const v1, 0x7f10021d

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f100303

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public startEditingSection(ILjava/lang/String;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->canEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditHandler;->showUneditableDialog()V

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 48
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/Section;

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/wikipedia/edit/EditSectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.wikipedia.edit_section"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/page/Section;->getId()I

    move-result v1

    const-string v2, "org.wikipedia.edit_section.sectionid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/page/Section;->getHeading()Ljava/lang/String;

    move-result-object p1

    const-string v1, "org.wikipedia.edit_section.sectionheading"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    const-string v1, "org.wikipedia.edit_section.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object p1

    const-string v1, "org.wikipedia.edit_section.pageprops"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.wikipedia.edit_section.highlight"

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    const/16 p2, 0x33

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Attempting to edit a mismatched section ID."

    .line 49
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    return-void
.end method
