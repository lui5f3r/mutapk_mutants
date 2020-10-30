.class public Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "DescriptionEditTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;
    .locals 3

    .line 49
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;

    invoke-direct {v0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 51
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 59
    invoke-static {p3}, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->of(I)Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->getLayout()I

    move-result p3

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/onboarding/OnboardingPageView;

    .line 60
    new-instance p2, Lorg/wikipedia/onboarding/OnboardingPageView$DefaultCallback;

    invoke-direct {p2}, Lorg/wikipedia/onboarding/OnboardingPageView$DefaultCallback;-><init>()V

    invoke-virtual {p1, p2}, Lorg/wikipedia/onboarding/OnboardingPageView;->setCallback(Lorg/wikipedia/onboarding/OnboardingPageView$Callback;)V

    return-object p1
.end method
