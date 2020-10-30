.class final Lorg/wikipedia/onboarding/OnboardingPageView$4;
.super Ljava/lang/Object;
.source "OnboardingPageView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/onboarding/OnboardingPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/onboarding/OnboardingPageView;


# direct methods
.method constructor <init>(Lorg/wikipedia/onboarding/OnboardingPageView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$4;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 81
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$4;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-virtual {p1}, Lorg/wikipedia/onboarding/OnboardingPageView;->getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$4;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-virtual {p1}, Lorg/wikipedia/onboarding/OnboardingPageView;->getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$4;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-interface {p1, v0, p2}, Lorg/wikipedia/onboarding/OnboardingPageView$Callback;->onSwitchChange(Lorg/wikipedia/onboarding/OnboardingPageView;Z)V

    :cond_0
    return-void
.end method
