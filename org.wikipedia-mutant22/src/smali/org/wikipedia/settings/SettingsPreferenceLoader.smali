.class Lorg/wikipedia/settings/SettingsPreferenceLoader;
.super Lorg/wikipedia/settings/BasePreferenceLoader;
.source "SettingsPreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/settings/SettingsPreferenceLoader$DeleteRemoteListsYesListener;,
        Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method

.method static synthetic lambda$loadPreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 50
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setAppInstallId(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$loadPreferences$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/microsoft/appcenter/AppCenter;->setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public synthetic lambda$loadPreferences$1$SettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SETTINGS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {v1}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$2$SettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureActivity;->newIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$3$SettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$4$SettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lorg/wikipedia/settings/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public loadPreferences()V
    .locals 3

    const v0, 0x7f130004

    .line 37
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 39
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result v0

    const v1, 0x7f1002ae

    if-eqz v0, :cond_0

    const v0, 0x7f10022a

    .line 40
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 41
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 44
    :cond_0
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/SettingsPreferenceLoader$SyncReadingListsListener;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;Lorg/wikipedia/settings/SettingsPreferenceLoader$1;)V

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f10024e

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 48
    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$x0BixJBZ0Q0L6VyvoxVSiOMmfts;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$x0BixJBZ0Q0L6VyvoxVSiOMmfts;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f130005

    .line 55
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->updateLanguagePrefSummary()V

    const v0, 0x7f10025b

    .line 59
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$9e5DozN_Mjci8gAuwr4WroWsmpI;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$9e5DozN_Mjci8gAuwr4WroWsmpI;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f100245

    .line 66
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 67
    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$9qph5ZEduLEZwU1DHnE5NR8BmHo;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$9qph5ZEduLEZwU1DHnE5NR8BmHo;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f100242

    .line 72
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 73
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->getNameId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 74
    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$SwoXWqu7d8RXCSfDFlNYUUeEOGA;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$SwoXWqu7d8RXCSfDFlNYUUeEOGA;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f100237

    .line 79
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$6auKmrTyrdo9QfUPIbucnVT6vRM;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$6auKmrTyrdo9QfUPIbucnVT6vRM;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;)V

    .line 80
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f100240

    .line 85
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$EXk8ytwlR3FcF080P872rvCHUsE;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$SettingsPreferenceLoader$EXk8ytwlR3FcF080P872rvCHUsE;

    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method updateLanguagePrefSummary()V
    .locals 2

    const v0, 0x7f10025b

    .line 93
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 95
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateSyncReadingListsPrefSummary()V
    .locals 6

    const v0, 0x7f1002ae

    .line 132
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 133
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002c7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1002c6

    .line 136
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
