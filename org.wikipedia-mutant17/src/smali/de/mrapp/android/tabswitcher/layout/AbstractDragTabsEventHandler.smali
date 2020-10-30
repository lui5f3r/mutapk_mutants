.class public abstract Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;
.super Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;
.source "AbstractDragTabsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;,
        Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackType::",
        "Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;",
        ">",
        "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;"
    }
.end annotation


# instance fields
.field private final arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

.field private callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackType;"
        }
    .end annotation
.end field

.field private dragDistance:F

.field private dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

.field private endOvershootThreshold:F

.field private final maxFlingVelocity:F

.field private final minFlingVelocity:F

.field private final minSwipeVelocity:F

.field private pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field private startOvershootThreshold:F

.field private final swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

.field private final swipeEnabled:Z

.field private swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/layout/Arithmetics;Z)V
    .locals 2

    .line 502
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->drag_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    .line 501
    invoke-direct {p0, v1, p1, v0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;-><init>(ILde/mrapp/android/tabswitcher/TabSwitcher;I)V

    .line 503
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The arithmetics may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    .line 505
    iput-boolean p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeEnabled:Z

    .line 506
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 507
    new-instance p3, Lde/mrapp/android/util/gesture/DragHelper;

    sget v0, Lde/mrapp/android/tabswitcher/R$dimen;->swipe_threshold:I

    .line 508
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p3, v0}, Lde/mrapp/android/util/gesture/DragHelper;-><init>(I)V

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    const/4 p3, 0x0

    .line 509
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    .line 510
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->minFlingVelocity:F

    .line 512
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->maxFlingVelocity:F

    .line 513
    sget p1, Lde/mrapp/android/tabswitcher/R$dimen;->min_swipe_velocity:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->minSwipeVelocity:F

    .line 514
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->resetDragging()V

    return-void
.end method

.method private handleClick(Landroid/view/MotionEvent;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTouchPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->getFocusedItem(F)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnClick(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    :cond_0
    return-void
.end method

.method private handleFling(Landroid/view/MotionEvent;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)V
    .locals 3

    .line 298
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 300
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    const/16 v1, 0x3e8

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->maxFlingVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 301
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 303
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->minFlingVelocity:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p1

    .line 306
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    mul-float v0, v0, p2

    .line 310
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    .line 311
    invoke-direct {p0, v0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnFling(FJ)V

    :cond_1
    return-void
.end method

.method private handleOvershoot()V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/gesture/DragHelper;->reset(I)V

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragDistance:F

    :cond_0
    return-void
.end method

.method private notifyOnCancelFling()V
    .locals 1

    .line 404
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onCancelFling()V

    :cond_0
    return-void
.end method

.method private notifyOnClick(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onClick(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    :cond_0
    return-void
.end method

.method private notifyOnDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
    .locals 1

    .line 340
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyOnFling(FJ)V
    .locals 1

    .line 395
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onFling(FJ)V

    :cond_0
    return-void
.end method

.method private notifyOnPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    :cond_0
    return-void
.end method

.method private notifyOnPressStarted(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onPressStarted(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    :cond_0
    return-void
.end method

.method private notifyOnRevertEndOvershoot()V
    .locals 1

    .line 422
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onRevertEndOvershoot()V

    :cond_0
    return-void
.end method

.method private notifyOnRevertStartOvershoot()V
    .locals 1

    .line 413
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onRevertStartOvershoot()V

    :cond_0
    return-void
.end method

.method private notifyOnSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V
    .locals 1

    .line 437
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V

    :cond_0
    return-void
.end method

.method private notifyOnSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V
    .locals 1

    .line 455
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;->onSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V

    :cond_0
    return-void
.end method

.method private resetDragging()V
    .locals 2

    .line 255
    invoke-super {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->reset()V

    .line 256
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    const/4 v1, 0x0

    .line 258
    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragDistance:F

    const v1, -0x800001

    .line 259
    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->startOvershootThreshold:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 260
    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->endOvershootThreshold:F

    .line 262
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Lde/mrapp/android/util/gesture/DragHelper;->reset()V

    .line 266
    :cond_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    if-eqz v1, :cond_1

    .line 267
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    .line 268
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    :cond_1
    return-void
.end method


# virtual methods
.method protected getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 1

    .line 469
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    return-object v0
.end method

.method protected getCallback()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCallbackType;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    return-object v0
.end method

.method protected abstract getFocusedItem(F)Lde/mrapp/android/tabswitcher/model/AbstractItem;
.end method

.method public final handleDrag(FF)Z
    .locals 3

    .line 622
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->startOvershootThreshold:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 623
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->handleOvershoot()V

    .line 624
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 625
    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->startOvershootThreshold:F

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onOvershootStart(FF)F

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->startOvershootThreshold:F

    goto/16 :goto_4

    .line 626
    :cond_0
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->endOvershootThreshold:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 627
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->handleOvershoot()V

    .line 628
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 629
    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->endOvershootThreshold:F

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onOvershootEnd(FF)F

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->endOvershootThreshold:F

    goto/16 :goto_4

    .line 631
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onOvershootReverted()V

    .line 633
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->isReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result v0

    .line 634
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/mrapp/android/util/gesture/DragHelper;->update(F)V

    .line 636
    iget-boolean v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeEnabled:Z

    if-eqz v2, :cond_3

    .line 637
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    invoke-virtual {v2, p2}, Lde/mrapp/android/util/gesture/DragHelper;->update(F)V

    .line 639
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 641
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->getDragStartPosition()F

    move-result p2

    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->getFocusedItem(F)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 643
    instance-of v2, p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v2, :cond_3

    .line 644
    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 645
    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 650
    :cond_3
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq p2, v2, :cond_8

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 651
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v2, :cond_4

    .line 652
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_2

    .line 653
    :cond_4
    sget-object v2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v2, :cond_5

    .line 654
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_2

    .line 656
    :cond_5
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result p2

    cmpl-float v2, p2, v1

    if-nez v2, :cond_6

    .line 659
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->PULLING_DOWN:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq p2, v0, :cond_8

    .line 660
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_2

    :cond_6
    sub-float/2addr v0, p2

    cmpg-float p2, v0, v1

    if-gez p2, :cond_7

    .line 663
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_1

    :cond_7
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    :goto_1
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 669
    :cond_8
    :goto_2
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v0, :cond_9

    .line 670
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V

    goto :goto_4

    .line 671
    :cond_9
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq p2, v0, :cond_e

    .line 672
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result p2

    .line 673
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragDistance:F

    sub-float v0, p2, v0

    .line 674
    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragDistance:F

    .line 675
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-direct {p0, p2, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    move-result-object p2

    .line 677
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq v0, v1, :cond_a

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne v0, v1, :cond_b

    .line 679
    :cond_a
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->endOvershootThreshold:F

    .line 680
    sget-object p1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_3

    .line 681
    :cond_b
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v0, :cond_d

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq p2, v0, :cond_c

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p2, v0, :cond_d

    .line 684
    :cond_c
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->startOvershootThreshold:F

    .line 685
    sget-object p1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    :cond_d
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_e
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public final isDragging()Z
    .locals 1

    .line 697
    invoke-super {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipeDragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected final isDraggingAllowed()Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isSwipeThresholdReached(Lde/mrapp/android/tabswitcher/model/TabItem;)Z
.end method

.method protected final onDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 718
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTouchPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->getFocusedItem(F)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    if-eqz p1, :cond_0

    .line 721
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnPressStarted(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    :cond_0
    return-void
.end method

.method protected final onDrag(Landroid/view/MotionEvent;)V
    .locals 3

    .line 727
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTouchPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/MotionEvent;)F

    move-result v0

    .line 728
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTouchPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/MotionEvent;)F

    move-result v1

    .line 730
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isInsideTouchableArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 731
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->pressedItem:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 735
    :cond_0
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->handleDrag(FF)Z

    return-void
.end method

.method protected abstract onOvershootEnd(FF)F
.end method

.method protected abstract onOvershootReverted()V
.end method

.method protected abstract onOvershootStart(FF)F
.end method

.method protected abstract onReset()V
.end method

.method protected final onTouchEvent()V
    .locals 0

    .line 713
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnCancelFling()V

    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;)V
    .locals 5

    .line 740
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 743
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 744
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 745
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v2

    const/16 v3, 0x3e8

    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->maxFlingVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 746
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 749
    :goto_0
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->minSwipeVelocity:F

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 750
    invoke-virtual {p0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->isSwipeThresholdReached(Lde/mrapp/android/tabswitcher/model/TabItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 751
    :cond_2
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->swipedTabItem:Lde/mrapp/android/tabswitcher/model/TabItem;

    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->minSwipeVelocity:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3

    move v1, p1

    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V

    goto :goto_2

    .line 753
    :cond_4
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq v0, v1, :cond_8

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 757
    :cond_5
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne v0, v1, :cond_6

    .line 758
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnRevertEndOvershoot()V

    goto :goto_2

    .line 759
    :cond_6
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne v0, v1, :cond_7

    .line 760
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->notifyOnRevertStartOvershoot()V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    .line 761
    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->PULLING_DOWN:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq v0, v1, :cond_9

    .line 762
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->handleClick(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    .line 754
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 755
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->handleFling(Landroid/view/MotionEvent;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)V

    .line 765
    :cond_9
    :goto_2
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->resetDragging()V

    return-void
.end method

.method public final reset()V
    .locals 0

    .line 702
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->resetDragging()V

    .line 703
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onReset()V

    return-void
.end method

.method public final setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackType;)V"
        }
    .end annotation

    .line 596
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;

    return-void
.end method

.method public final setDragState(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)V
    .locals 2

    .line 607
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The drag state may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->dragState:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    return-void
.end method
