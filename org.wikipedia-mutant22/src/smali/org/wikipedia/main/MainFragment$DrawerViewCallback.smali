.class Lorg/wikipedia/main/MainFragment$DrawerViewCallback;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/main/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/main/MainFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/main/MainFragment;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;-><init>(Lorg/wikipedia/main/MainFragment;)V

    return-void
.end method


# virtual methods
.method public aboutClick()V
    .locals 4

    .line 587
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/wikipedia/settings/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$loginLogoutClick$0$MainFragment$DrawerViewCallback(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 554
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->logOut()V

    .line 555
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100448

    invoke-static {p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 556
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListsLastSyncTime(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 557
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 558
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsHighestPriorityEnabled(Z)V

    .line 559
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-static {p1}, Lorg/wikipedia/main/MainFragment;->access$500(Lorg/wikipedia/main/MainFragment;)V

    return-void
.end method

.method public loginLogoutClick()V
    .locals 3

    .line 549
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10017a

    .line 551
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100179

    const/4 v2, 0x0

    .line 552
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1002d0

    new-instance v2, Lorg/wikipedia/main/-$$Lambda$MainFragment$DrawerViewCallback$CIDoHLKth5RoUZZKAHVxIMD6_nY;

    invoke-direct {v2, p0}, Lorg/wikipedia/main/-$$Lambda$MainFragment$DrawerViewCallback$CIDoHLKth5RoUZZKAHVxIMD6_nY;-><init>(Lorg/wikipedia/main/MainFragment$DrawerViewCallback;)V

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->onLoginRequested()V

    :goto_0
    return-void
.end method

.method public notificationsClick()V
    .locals 2

    .line 568
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/notifications/NotificationActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public settingsClick()V
    .locals 3

    .line 582
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/settings/SettingsActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public talkClick()V
    .locals 4

    .line 575
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$DrawerViewCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
