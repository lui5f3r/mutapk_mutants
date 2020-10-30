.class public Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
.super Lorg/wikipedia/onboarding/OnboardingFragment;
.source "DescriptionEditTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;,
        Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
    .locals 1

    .line 18
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    invoke-direct {v0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 1

    .line 23
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;

    invoke-direct {v0, p0, p0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;-><init>(Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected getDoneButtonText()I
    .locals 1

    const v0, 0x7f1000b9

    return v0
.end method
