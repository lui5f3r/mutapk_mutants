.class final Lorg/wikipedia/views/ViewAnimations$1;
.super Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;
.source "ViewAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runOnComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/wikipedia/views/ViewAnimations$1;->val$runOnComplete:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;-><init>(Lorg/wikipedia/views/ViewAnimations$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;->canceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lorg/wikipedia/views/ViewAnimations$1;->val$runOnComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
