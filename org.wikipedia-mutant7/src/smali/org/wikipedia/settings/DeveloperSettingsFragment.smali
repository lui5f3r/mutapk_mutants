.class public Lorg/wikipedia/settings/DeveloperSettingsFragment;
.super Lorg/wikipedia/settings/PreferenceLoaderFragment;
.source "DeveloperSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/settings/DeveloperSettingsFragment;
    .locals 1

    .line 5
    new-instance v0, Lorg/wikipedia/settings/DeveloperSettingsFragment;

    invoke-direct {v0}, Lorg/wikipedia/settings/DeveloperSettingsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public loadPreferences()V
    .locals 1

    .line 10
    new-instance v0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 11
    invoke-interface {v0}, Lorg/wikipedia/settings/PreferenceLoader;->loadPreferences()V

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
