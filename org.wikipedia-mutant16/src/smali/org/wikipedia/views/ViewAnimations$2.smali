.class final Lorg/wikipedia/views/ViewAnimations$2;
.super Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;
.source "ViewAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runOnComplete:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/wikipedia/views/ViewAnimations$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lorg/wikipedia/views/ViewAnimations$2;->val$runOnComplete:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;-><init>(Lorg/wikipedia/views/ViewAnimations$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;->canceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lorg/wikipedia/views/ViewAnimations$2;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lorg/wikipedia/views/ViewAnimations$2;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 101
    iget-object p1, p0, Lorg/wikipedia/views/ViewAnimations$2;->val$runOnComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
