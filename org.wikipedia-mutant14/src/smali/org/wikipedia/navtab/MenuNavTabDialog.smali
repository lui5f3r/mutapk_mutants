.class public Lorg/wikipedia/navtab/MenuNavTabDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "MenuNavTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;
    }
.end annotation


# instance fields
.field accountAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field accountNameView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

.field loginLogoutButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field notificationsContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field talkContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;)Lorg/wikipedia/navtab/MenuNavTabDialog;
    .locals 1

    .line 55
    new-instance v0, Lorg/wikipedia/navtab/MenuNavTabDialog;

    invoke-direct {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;-><init>()V

    .line 56
    iput-object p0, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    return-object v0
.end method


# virtual methods
.method onAboutClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;->aboutClick()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0c010e

    .line 62
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    return-void
.end method

.method onDonateClick()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.7.50333-r-2020-10-06"

    aput-object v3, v1, v2

    .line 134
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f1000db

    .line 133
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method onHelpClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method onLoginClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;->loginLogoutClick()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method onNotificationsClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;->notificationsClick()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->updateState()V

    return-void
.end method

.method onSettingsClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;->settingsClick()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 79
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const v1, 0x7f07016e

    .line 81
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method onTalkClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback:Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;->talkClick()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 5

    .line 85
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08009a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04027d

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 88
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountNameView:Landroid/widget/TextView;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountNameView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    const v3, 0x7f1002d0

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 92
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400cb

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->notificationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->talkContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400c5

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 101
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 103
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    const v2, 0x7f10017c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->notificationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->talkContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
