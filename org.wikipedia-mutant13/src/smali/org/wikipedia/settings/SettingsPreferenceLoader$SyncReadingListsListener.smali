.class final Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;
.super Ljava/lang/Object;
.source "SettingsPreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/SettingsPreferenceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncReadingListsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method private constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Lorg/wikipedia/settings/SettingsPreferenceLoader$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreferenceChange$0$SettingsPreferenceLoader$SyncReadingListsListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {p1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "settings"

    invoke-static {p1, p2}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {p2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 100
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-ne p2, v0, :cond_0

    .line 102
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->setSyncEnabledWithSetup()V

    goto/16 :goto_0

    .line 105
    :cond_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 106
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f100236

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 107
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f100235

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10035b

    new-instance v3, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;

    iget-object v4, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-direct {v3, v4, p1, v2}, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Landroidx/preference/Preference;Lorg/wikipedia/settings/SettingsPreferenceLoader$1;)V

    .line 108
    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10035a

    .line 109
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {p2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f10033c

    .line 114
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f10033b

    .line 115
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f10033a

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$SyncReadingListsListener$rlomNNVzXgKqRsr0JBY5GtV_yig;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$SyncReadingListsListener$rlomNNVzXgKqRsr0JBY5GtV_yig;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;)V

    .line 116
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f100339

    .line 123
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return v1
.end method
