.class public Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;
.super Lde/mrapp/android/tabswitcher/gesture/AbstractDragGestureEventHandler;
.source "PullDownGestureEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;

.field private previousDragPosition:F


# direct methods
.method private notifyOnPulledDown()V
    .locals 1

    .line 60
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->callback:Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;->onPulledDown()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final isDraggingAllowed()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final onDown(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected final onDrag(Landroid/view/MotionEvent;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 119
    iget v0, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->previousDragPosition:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 120
    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->previousDragPosition:F

    .line 121
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/gesture/DragHelper;->update(F)V

    .line 123
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 125
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->notifyOnPulledDown()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/util/gesture/DragHelper;->reset()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 129
    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->previousDragPosition:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final onTouchEvent()V
    .locals 0

    return-void
.end method

.method protected final onUp(Landroid/view/MotionEvent;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 135
    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->previousDragPosition:F

    .line 136
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->reset()V

    return-void
.end method

.method public final setCallback(Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->callback:Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;

    return-void
.end method
