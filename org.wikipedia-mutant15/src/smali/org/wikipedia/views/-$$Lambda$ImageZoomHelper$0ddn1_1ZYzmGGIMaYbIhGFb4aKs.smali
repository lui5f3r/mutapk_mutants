.class public final synthetic Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ImageZoomHelper;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:F


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ImageZoomHelper;FFIIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    iput p2, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$1:F

    iput p3, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$2:F

    iput p4, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$3:I

    iput p5, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$4:I

    iput p6, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$5:I

    iput p7, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$6:I

    iput p8, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$7:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    iget v1, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$1:F

    iget v2, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$2:F

    iget v3, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$3:I

    iget v4, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$4:I

    iget v5, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$5:I

    iget v6, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$6:I

    iget v7, p0, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;->f$7:F

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lorg/wikipedia/views/ImageZoomHelper;->lambda$onDispatchTouchEvent$0$ImageZoomHelper(FFIIIIFLandroid/animation/ValueAnimator;)V

    return-void
.end method
