.class public Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutNavMenuTriggerer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;
    }
.end annotation


# static fields
.field private static CHILD_VIEW_SCROLLED:Z

.field private static final SWIPE_SLOP_X:I

.field private static final SWIPE_SLOP_Y:I


# instance fields
.field private callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

.field private initialX:F

.field private initialY:F

.field private maybeSwiping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    .line 19
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    sput v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_Y:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 20
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    sput v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_X:I

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static setChildViewScrolled()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onInterceptTouchEvent$0$FrameLayoutNavMenuTriggerer(Landroid/view/MotionEvent;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 52
    sget-boolean v1, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 53
    sput-boolean v2, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    .line 61
    iput-boolean v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    goto/16 :goto_3

    :cond_1
    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 64
    iget-boolean v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    if-eqz v0, :cond_8

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_Y:I

    if-le v0, v3, :cond_3

    .line 66
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_X:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 68
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 69
    iget-object v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    if-eqz v0, :cond_8

    .line 72
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 74
    new-instance v1, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;

    invoke-direct {v1, p0, v0}, Lorg/wikipedia/views/-$$Lambda$FrameLayoutNavMenuTriggerer$5cAfMfZAYAup6XKqhN5xRhItOZ4;-><init>(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 77
    iget-object v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    invoke-static {}, Lorg/wikipedia/util/L10nUtil;->isDeviceRTL()Z

    move-result v1

    const v3, 0x800003

    const v4, 0x800005

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const v3, 0x800005

    .line 77
    :cond_6
    :goto_1
    invoke-interface {v0, v3}, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;->onNavMenuSwipeRequest(I)V

    goto :goto_3

    .line 63
    :cond_7
    :goto_2
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    :cond_8
    :goto_3
    return v2
.end method

.method public setCallback(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    return-void
.end method
