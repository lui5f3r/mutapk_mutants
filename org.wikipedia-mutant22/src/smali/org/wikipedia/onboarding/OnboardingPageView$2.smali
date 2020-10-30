.class final Lorg/wikipedia/onboarding/OnboardingPageView$2;
.super Ljava/lang/Object;
.source "OnboardingPageView.kt"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


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

    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$2;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUrlClick(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$2;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-virtual {v0}, Lorg/wikipedia/onboarding/OnboardingPageView;->getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$2;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-virtual {v0}, Lorg/wikipedia/onboarding/OnboardingPageView;->getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$2;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-interface {v0, v1, p1}, Lorg/wikipedia/onboarding/OnboardingPageView$Callback;->onLinkClick(Lorg/wikipedia/onboarding/OnboardingPageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
