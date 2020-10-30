.class public Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "OnboardingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/onboarding/OnboardingFragment;

.field private view7f09016d:Landroid/view/View;

.field private view7f09016e:Landroid/view/View;

.field private view7f090170:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/onboarding/OnboardingFragment;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->target:Lorg/wikipedia/onboarding/OnboardingFragment;

    .line 31
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f090172

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f090170

    const-string v1, "field \'skipButton\' and method \'onSkipClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'skipButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/onboarding/OnboardingFragment;->skipButton:Landroid/widget/Button;

    .line 34
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f090170:Landroid/view/View;

    .line 35
    new-instance v0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$1;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;Lorg/wikipedia/onboarding/OnboardingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016e

    const-string v1, "field \'forwardButton\' and method \'onForwardClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p1, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardButton:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016e:Landroid/view/View;

    .line 44
    new-instance v1, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$2;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;Lorg/wikipedia/onboarding/OnboardingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090492

    const-string v2, "field \'pageIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lorg/wikipedia/onboarding/OnboardingFragment;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f09016d

    const-string v1, "field \'doneButton\' and method \'onForwardClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'doneButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/onboarding/OnboardingFragment;->doneButton:Landroid/widget/Button;

    .line 53
    iput-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016d:Landroid/view/View;

    .line 54
    new-instance v0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;Lorg/wikipedia/onboarding/OnboardingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->target:Lorg/wikipedia/onboarding/OnboardingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->target:Lorg/wikipedia/onboarding/OnboardingFragment;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/onboarding/OnboardingFragment;->skipButton:Landroid/widget/Button;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardButton:Landroid/view/View;

    .line 72
    iput-object v1, v0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    .line 73
    iput-object v1, v0, Lorg/wikipedia/onboarding/OnboardingFragment;->doneButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f090170:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f090170:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016e:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;->view7f09016d:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
