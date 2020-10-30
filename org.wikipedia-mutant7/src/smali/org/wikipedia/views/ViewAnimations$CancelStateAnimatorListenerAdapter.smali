.class Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/ViewAnimations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelStateAnimatorListenerAdapter"
.end annotation


# instance fields
.field private canceled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/views/ViewAnimations$1;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected canceled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;->canceled:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;->canceled:Z

    return-void
.end method
