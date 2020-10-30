.class public final Lorg/wikipedia/views/ViewAnimations;
.super Ljava/lang/Object;
.source "ViewAnimations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;
    }
.end annotation


# static fields
.field private static MEDIUM_ANIMATION_DURATION:J

.field private static SHORT_ANIMATION_DURATION:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crossFade(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;)V

    .line 31
    invoke-static {p0}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public static crossFade(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 41
    invoke-static {p1}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;)V

    .line 42
    invoke-static {p0, p2}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ensureTranslationY(Landroid/view/View;I)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-wide v0, Lorg/wikipedia/views/ViewAnimations;->SHORT_ANIMATION_DURATION:J

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-wide v0, Lorg/wikipedia/views/ViewAnimations;->MEDIUM_ANIMATION_DURATION:J

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lorg/wikipedia/views/ViewAnimations$1;

    invoke-direct {v0, p1}, Lorg/wikipedia/views/ViewAnimations$1;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-wide v1, Lorg/wikipedia/views/ViewAnimations;->MEDIUM_ANIMATION_DURATION:J

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/views/ViewAnimations$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/ViewAnimations$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 2

    const/high16 v0, 0x10e0000

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/wikipedia/views/ViewAnimations;->SHORT_ANIMATION_DURATION:J

    const v0, 0x10e0001

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    sput-wide v0, Lorg/wikipedia/views/ViewAnimations;->MEDIUM_ANIMATION_DURATION:J

    return-void
.end method
