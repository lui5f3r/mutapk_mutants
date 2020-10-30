.class Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "InitialOnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/InitialOnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnboardingPagerAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 111
    invoke-static {p1}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;->newInstance(I)Lorg/wikipedia/onboarding/InitialOnboardingFragment$ItemFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 116
    invoke-static {}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->size()I

    move-result v0

    return v0
.end method
