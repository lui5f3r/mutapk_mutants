.class public Lorg/wikipedia/settings/NotificationSettingsFragment;
.super Lorg/wikipedia/settings/PreferenceLoaderFragment;
.source "NotificationSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/settings/NotificationSettingsFragment;
    .locals 1

    .line 5
    new-instance v0, Lorg/wikipedia/settings/NotificationSettingsFragment;

    invoke-direct {v0}, Lorg/wikipedia/settings/NotificationSettingsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public loadPreferences()V
    .locals 1

    .line 10
    new-instance v0, Lorg/wikipedia/settings/NotificationSettingsPreferenceLoader;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/NotificationSettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-virtual {v0}, Lorg/wikipedia/settings/NotificationSettingsPreferenceLoader;->loadPreferences()V

    return-void
.end method

.method public bridge synthetic onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/wikipedia/settings/PreferenceLoaderFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/wikipedia/settings/PreferenceLoaderFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method
