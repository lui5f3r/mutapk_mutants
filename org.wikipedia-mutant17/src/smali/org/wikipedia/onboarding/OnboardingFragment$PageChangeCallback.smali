.class Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/OnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/onboarding/OnboardingFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/onboarding/OnboardingFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;->this$0:Lorg/wikipedia/onboarding/OnboardingFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/onboarding/OnboardingFragment;Lorg/wikipedia/onboarding/OnboardingFragment$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    .line 131
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;->this$0:Lorg/wikipedia/onboarding/OnboardingFragment;

    invoke-static {p1}, Lorg/wikipedia/onboarding/OnboardingFragment;->access$100(Lorg/wikipedia/onboarding/OnboardingFragment;)V

    .line 132
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;->this$0:Lorg/wikipedia/onboarding/OnboardingFragment;

    invoke-static {p1}, Lorg/wikipedia/onboarding/OnboardingFragment;->access$200(Lorg/wikipedia/onboarding/OnboardingFragment;)V

    return-void
.end method
