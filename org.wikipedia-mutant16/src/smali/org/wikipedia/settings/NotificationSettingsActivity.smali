.class public Lorg/wikipedia/settings/NotificationSettingsActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/settings/NotificationSettingsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$promptEnablePollDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x1

    .line 47
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setNotificationPollEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$promptEnablePollDialog$1(Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setNotificationPollReminderEnabled(Z)V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/settings/NotificationSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static promptEnablePollDialog(Landroid/app/Activity;)V
    .locals 5

    .line 34
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationPollReminderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationPollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090104

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090100

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f1002bd

    .line 40
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 42
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1001f2

    .line 43
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1001f1

    sget-object v0, Lorg/wikipedia/settings/-$$Lambda$NotificationSettingsActivity$paAky7qPEONNChKhVmetYOczd50;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$NotificationSettingsActivity$paAky7qPEONNChKhVmetYOczd50;

    .line 45
    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1001f0

    .line 49
    invoke-virtual {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p0, Lorg/wikipedia/settings/-$$Lambda$NotificationSettingsActivity$O33UmVXnPqgH5yDtM5HqHg_VFeE;

    invoke-direct {p0, v3}, Lorg/wikipedia/settings/-$$Lambda$NotificationSettingsActivity$O33UmVXnPqgH5yDtM5HqHg_VFeE;-><init>(Landroid/widget/CheckBox;)V

    .line 50
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/settings/NotificationSettingsActivity;->createFragment()Lorg/wikipedia/settings/NotificationSettingsFragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment()Lorg/wikipedia/settings/NotificationSettingsFragment;
    .locals 1

    .line 25
    invoke-static {}, Lorg/wikipedia/settings/NotificationSettingsFragment;->newInstance()Lorg/wikipedia/settings/NotificationSettingsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 29
    new-instance v0, Lorg/wikipedia/analytics/NotificationPreferencesFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/NotificationPreferencesFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/NotificationPreferencesFunnel;->done()V

    .line 30
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method
