.class abstract Lorg/wikipedia/settings/BasePreferenceLoader;
.super Ljava/lang/Object;
.source "BasePreferenceLoader.java"

# interfaces
.implements Lorg/wikipedia/settings/PreferenceLoader;


# instance fields
.field private final preferenceHost:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->preferenceHost:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected findPreference(I)Landroidx/preference/Preference;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method protected findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->preferenceHost:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->preferenceHost:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceHost()Landroidx/preference/PreferenceFragmentCompat;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->preferenceHost:Landroidx/preference/PreferenceFragmentCompat;

    return-object v0
.end method

.method protected loadPreferences(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->preferenceHost:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method
