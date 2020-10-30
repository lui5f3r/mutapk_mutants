.class public Lorg/wikipedia/settings/SettingsFragment;
.super Lorg/wikipedia/settings/PreferenceLoaderFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/settings/SettingsFragment$EventBusConsumer;
    }
.end annotation


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;-><init>()V

    .line 25
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/settings/SettingsFragment;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/SettingsFragment;->setReadingListSyncPref(Z)V

    return-void
.end method

.method private launchDeveloperSettingsActivity()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/DeveloperSettingsActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/settings/SettingsFragment;
    .locals 1

    .line 21
    new-instance v0, Lorg/wikipedia/settings/SettingsFragment;

    invoke-direct {v0}, Lorg/wikipedia/settings/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private prepareDeveloperSettingsMenuItem(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f0900fd

    .line 93
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private setReadingListSyncPref(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    if-eqz v0, :cond_0

    const v1, 0x7f1002ae

    .line 98
    invoke-virtual {v0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    .line 99
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$SettingsFragment()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {v0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->updateSyncReadingListsPrefSummary()V

    .line 60
    iget-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-virtual {v0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->updateLanguagePrefSummary()V

    return-void
.end method

.method public loadPreferences()V
    .locals 1

    .line 48
    new-instance v0, Lorg/wikipedia/settings/SettingsPreferenceLoader;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 49
    invoke-virtual {v0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->loadPreferences()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lorg/wikipedia/settings/SettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/SettingsFragment$EventBusConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/SettingsFragment$EventBusConsumer;-><init>(Lorg/wikipedia/settings/SettingsFragment;Lorg/wikipedia/settings/SettingsFragment$1;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0012

    .line 68
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lorg/wikipedia/settings/PreferenceLoaderFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lorg/wikipedia/settings/PreferenceLoaderFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 38
    iget-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900fd

    if-eq v0, v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 81
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/settings/SettingsFragment;->launchDeveloperSettingsActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 74
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/SettingsFragment;->prepareDeveloperSettingsMenuItem(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SettingsFragment$NUYPp1iaXA2Vgcd5jE1-Zs-7OWE;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsFragment$NUYPp1iaXA2Vgcd5jE1-Zs-7OWE;-><init>(Lorg/wikipedia/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
