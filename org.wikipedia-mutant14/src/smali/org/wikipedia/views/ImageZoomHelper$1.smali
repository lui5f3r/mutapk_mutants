.class Lorg/wikipedia/views/ImageZoomHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImageZoomHelper;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/ImageZoomHelper;

.field final synthetic val$leftMarginEnd:I

.field final synthetic val$leftMarginStart:I

.field final synthetic val$scaleXStart:F

.field final synthetic val$scaleYStart:F

.field final synthetic val$topMarginEnd:I

.field final synthetic val$topMarginStart:I

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImageZoomHelper;FFIIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->this$0:Lorg/wikipedia/views/ImageZoomHelper;

    iput p2, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$scaleYStart:F

    iput p3, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$scaleXStart:F

    iput p4, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$leftMarginStart:I

    iput p5, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$topMarginStart:I

    iput p6, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$leftMarginEnd:I

    iput p7, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$topMarginEnd:I

    iput-object p8, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method end()V
    .locals 11

    .line 192
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->this$0:Lorg/wikipedia/views/ImageZoomHelper;

    invoke-static {v0}, Lorg/wikipedia/views/ImageZoomHelper;->access$000(Lorg/wikipedia/views/ImageZoomHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->this$0:Lorg/wikipedia/views/ImageZoomHelper;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$scaleYStart:F

    iget v4, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$scaleXStart:F

    iget v5, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$leftMarginStart:I

    iget v6, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$topMarginStart:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$leftMarginEnd:I

    iget v10, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$topMarginEnd:I

    invoke-static/range {v1 .. v10}, Lorg/wikipedia/views/ImageZoomHelper;->access$100(Lorg/wikipedia/views/ImageZoomHelper;FFFIIFFII)V

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->this$0:Lorg/wikipedia/views/ImageZoomHelper;

    invoke-static {v0}, Lorg/wikipedia/views/ImageZoomHelper;->access$200(Lorg/wikipedia/views/ImageZoomHelper;)V

    .line 199
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 200
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 182
    invoke-virtual {p0}, Lorg/wikipedia/views/ImageZoomHelper$1;->end()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 188
    invoke-virtual {p0}, Lorg/wikipedia/views/ImageZoomHelper$1;->end()V

    return-void
.end method
