.class public Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;
.super Lde/mrapp/android/tabswitcher/gesture/AbstractDragGestureEventHandler;
.source "SwipeGestureEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;

.field private final maxFlingVelocity:F

.field private final minSwipeVelocity:F

.field private selectedTabIndex:I

.field private final swipeAnimationDuration:J

.field private final swipedTabDistance:I


# direct methods
.method private isSwipeThresholdReached()Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->swipedTabDistance:I

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnSwitchingBetweenTabs(IF)V
    .locals 1

    .line 124
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->callback:Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1, p2}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;->onSwitchingBetweenTabs(IF)V

    :cond_0
    return-void
.end method

.method private notifyOnSwitchingBetweenTabsEnded(IIZF)V
    .locals 7

    .line 146
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->callback:Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 147
    iget-wide v5, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->swipeAnimationDuration:J

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;->onSwitchingBetweenTabsEnded(IIZFJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final isDraggingAllowed()Z
    .locals 2

    .line 198
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-eq v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 214
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/gesture/DragHelper;->update(F)V

    .line 216
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    iget p1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    .line 221
    :cond_0
    iget p1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->notifyOnSwitchingBetweenTabs(IF)V

    :cond_1
    return-void
.end method

.method protected final onTouchEvent()V
    .locals 0

    return-void
.end method

.method protected final onUp(Landroid/view/MotionEvent;)V
    .locals 6

    .line 227
    iget v0, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 232
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v3

    const/16 v4, 0x3e8

    iget v5, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->maxFlingVelocity:F

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 233
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    iget v3, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    .line 239
    iget v4, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->minSwipeVelocity:F

    const/4 v5, 0x1

    cmpl-float v4, p1, v4

    if-gez v4, :cond_1

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->isSwipeThresholdReached()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    iget v3, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    iget v3, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    sub-int/2addr v3, v5

    .line 243
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v0, 0x1

    .line 246
    :cond_3
    iget v4, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    iget v5, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->minSwipeVelocity:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    move v2, p1

    :cond_4
    invoke-direct {p0, v3, v4, v0, v2}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->notifyOnSwitchingBetweenTabsEnded(IIZF)V

    .line 250
    :cond_5
    iput v1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->selectedTabIndex:I

    .line 251
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->reset()V

    return-void
.end method

.method public final setCallback(Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->callback:Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;

    return-void
.end method
