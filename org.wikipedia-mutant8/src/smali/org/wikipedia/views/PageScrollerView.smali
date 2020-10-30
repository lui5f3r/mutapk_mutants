.class public Lorg/wikipedia/views/PageScrollerView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PageScrollerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/PageScrollerView$Callback;
    }
.end annotation


# static fields
.field private static final CLICK_MILLIS:I = 0xfa


# instance fields
.field callback:Lorg/wikipedia/views/PageScrollerView$Callback;

.field private dragging:Z

.field private prevX:F

.field private prevY:F

.field private startMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 74
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    if-eqz v0, :cond_7

    .line 75
    iput-boolean v2, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 76
    iget-object v0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    if-eqz v0, :cond_7

    .line 77
    invoke-interface {v0}, Lorg/wikipedia/views/PageScrollerView$Callback;->onScrollStop()V

    goto :goto_0

    .line 82
    :cond_1
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    sub-float/2addr v0, v1

    .line 86
    iget-object v1, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    if-eqz v1, :cond_2

    .line 87
    invoke-interface {v1, v0}, Lorg/wikipedia/views/PageScrollerView$Callback;->onVerticalScroll(F)V

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevX:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    goto :goto_0

    .line 57
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    if-eqz v0, :cond_7

    .line 58
    iput-boolean v2, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/wikipedia/views/PageScrollerView;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 60
    iget-object v0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    if-eqz v0, :cond_7

    .line 61
    invoke-interface {v0}, Lorg/wikipedia/views/PageScrollerView$Callback;->onClick()V

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    if-eqz v0, :cond_7

    .line 69
    invoke-interface {v0}, Lorg/wikipedia/views/PageScrollerView$Callback;->onScrollStop()V

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevX:F

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    .line 48
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    if-nez v0, :cond_6

    .line 49
    iput-boolean v1, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 50
    iget-object v0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    if-eqz v0, :cond_6

    .line 51
    invoke-interface {v0}, Lorg/wikipedia/views/PageScrollerView$Callback;->onScrollStart()V

    .line 54
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/views/PageScrollerView;->startMillis:J

    .line 98
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCallback(Lorg/wikipedia/views/PageScrollerView$Callback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    return-void
.end method
