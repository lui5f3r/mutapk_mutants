.class public final synthetic Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;->f$0:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    iput-object p2, p0, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;->f$0:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    iget-object v1, p0, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->lambda$onInterceptTouchEvent$0$FrameLayoutNavMenuTriggerer(Landroid/view/MotionEvent;)V

    return-void
.end method
