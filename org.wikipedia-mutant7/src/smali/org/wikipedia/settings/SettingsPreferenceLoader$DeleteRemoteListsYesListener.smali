.class final Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;
.super Ljava/lang/Object;
.source "SettingsPreferenceLoader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/SettingsPreferenceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteRemoteListsYesListener"
.end annotation


# instance fields
.field private preference:Landroidx/preference/Preference;

.field final synthetic this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method private constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Landroidx/preference/Preference;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;->this$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Landroidx/preference/Preference;Lorg/wikipedia/settings/SettingsPreferenceLoader$1;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 148
    iget-object p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;->preference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    invoke-static {p2}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 150
    invoke-static {p2}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteSetupPending(Z)V

    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteDeletePending(Z)V

    .line 152
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    return-void
.end method
