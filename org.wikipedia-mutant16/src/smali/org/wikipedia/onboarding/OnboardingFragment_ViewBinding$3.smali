.class Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnboardingFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/onboarding/OnboardingFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;Lorg/wikipedia/onboarding/OnboardingFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;->this$0:Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;->val$target:Lorg/wikipedia/onboarding/OnboardingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment_ViewBinding$3;->val$target:Lorg/wikipedia/onboarding/OnboardingFragment;

    invoke-virtual {p1}, Lorg/wikipedia/onboarding/OnboardingFragment;->onForwardClick()V

    return-void
.end method
