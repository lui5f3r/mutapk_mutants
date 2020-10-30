.class public Lorg/wikipedia/onboarding/InitialOnboardingFragment;
.super Lorg/wikipedia/onboarding/OnboardingFragment;
.source "InitialOnboardingFragment.java"

# interfaces
.implements Lorg/wikipedia/onboarding/OnboardingPageView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;,
        Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;,
        Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPagerAdapter;
    }
.end annotation


# instance fields
.field private onboardingPageView:Lorg/wikipedia/onboarding/OnboardingPageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/onboarding/InitialOnboardingFragment;
    .locals 1

    .line 35
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment;

    invoke-direct {v0}, Lorg/wikipedia/onboarding/InitialOnboardingFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 1

    .line 40
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPagerAdapter;

    invoke-direct {v0, p0}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected getDoneButtonText()I
    .locals 1

    const v0, 0x7f100209

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x35

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p1, 0x7f100177

    .line 52
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;I)V

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->advancePage()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onLinkClick(Lorg/wikipedia/onboarding/OnboardingPageView;Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "#login"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string p1, "#about"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p1, "#privacy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string p1, "#offline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->showOfflineReadingAndData(Landroid/content/Context;)V

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->showAboutWikipedia(Landroid/content/Context;)V

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->showPrivacyPolicy(Landroid/content/Context;)V

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "onboarding"

    invoke-static {p1, p2}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x35

    .line 70
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2884cfa0 -> :sswitch_3
        0x210a4605 -> :sswitch_2
        0x413ec14a -> :sswitch_1
        0x41df8d26 -> :sswitch_0
    .end sparse-switch
.end method

.method public onListActionButtonClicked(Lorg/wikipedia/onboarding/OnboardingPageView;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment;->onboardingPageView:Lorg/wikipedia/onboarding/OnboardingPageView;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ONBOARDING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {v1}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 98
    iget-object v0, p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment;->onboardingPageView:Lorg/wikipedia/onboarding/OnboardingPageView;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lorg/wikipedia/onboarding/OnboardingPageView;->refreshLanguageList()V

    :cond_0
    return-void
.end method

.method public onSwitchChange(Lorg/wikipedia/onboarding/OnboardingPageView;Z)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->of(I)Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_USAGE_DATA:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-static {p2}, Lorg/wikipedia/settings/Prefs;->setEventLoggingEnabled(Z)V

    :cond_0
    return-void
.end method
