.class public Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "InitialOnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/InitialOnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;
    .locals 1

    .line 143
    const-class v0, Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    return-object v0
.end method

.method public static newInstance(I)Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;
    .locals 3

    .line 122
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;

    invoke-direct {v0}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 124
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 133
    invoke-static {p3}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->of(I)Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->getLayout()I

    move-result v0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/onboarding/OnboardingPageView;

    .line 134
    sget-object p2, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_USAGE_DATA:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    invoke-virtual {p2}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->code()I

    move-result p2

    if-ne p2, p3, :cond_0

    .line 135
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isEventLoggingEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/onboarding/OnboardingPageView;->setSwitchChecked(Z)V

    .line 137
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;->getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/onboarding/OnboardingPageView;->setCallback(Lorg/wikipedia/onboarding/OnboardingPageView$Callback;)V

    return-object p1
.end method
