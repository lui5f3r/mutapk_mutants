.class public Lorg/wikipedia/theme/ThemeFittingRoomActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "ThemeFittingRoomActivity.java"

# interfaces
.implements Lorg/wikipedia/theme/ThemeChooserDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/theme/ThemeFittingRoomFragment;",
        ">;",
        "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;"
    }
.end annotation


# instance fields
.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    .line 16
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/theme/ThemeFittingRoomActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->createFragment()Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/theme/ThemeFittingRoomFragment;
    .locals 1

    .line 38
    invoke-static {}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->newInstance()Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p1}, Lorg/wikipedia/theme/ThemeChooserDialog;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 28
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->themeChooserDialog:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    const p1, 0x106000c

    .line 32
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 33
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    return-void
.end method

.method public onToggleDimImages()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
