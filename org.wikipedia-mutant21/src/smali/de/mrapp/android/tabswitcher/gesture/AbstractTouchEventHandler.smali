.class public abstract Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;
.super Ljava/lang/Object;
.source "AbstractTouchEventHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final dragHelper:Lde/mrapp/android/util/gesture/DragHelper;

.field private dragThreshold:I

.field private pointerId:I

.field private final priority:I

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(ILde/mrapp/android/tabswitcher/TabSwitcher;I)V
    .locals 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/high16 v1, -0x80000000

    const-string v2, "The priority must be at least-2147483648"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 197
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const v1, 0x7fffffff

    const-string v2, "The priority must be at maximum 2147483647"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 199
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The drag threshold must be at least 0"

    invoke-virtual {v0, p3, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 201
    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->priority:I

    .line 202
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 203
    new-instance p1, Lde/mrapp/android/util/gesture/DragHelper;

    invoke-direct {p1, v1}, Lde/mrapp/android/util/gesture/DragHelper;-><init>(I)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    .line 204
    iput p3, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragThreshold:I

    .line 205
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->reset()V

    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    .line 89
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 95
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 96
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onDown(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public final compare(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)I
    .locals 0

    .line 340
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result p1

    .line 341
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    check-cast p2, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->compare(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;
    .locals 1

    .line 276
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 235
    iget v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->priority:I

    return v0
.end method

.method protected final getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 1

    .line 107
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object v0
.end method

.method public getTouchableArea()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .line 120
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 300
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The event may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isAnimationRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isDraggingAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onTouchEvent()V

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    if-ne v0, v1, :cond_2

    .line 311
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 312
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 315
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 316
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 319
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->handleDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v2

    .line 324
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    if-ne v0, v1, :cond_4

    .line 325
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    :cond_4
    return v2

    .line 307
    :cond_5
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->handleDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDragging()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result v0

    return v0
.end method

.method protected abstract isDraggingAllowed()Z
.end method

.method public final isInsideTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTouchableArea()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTouchableArea()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTouchableArea()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTouchableArea()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getTouchableArea()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isReset()Z
    .locals 2

    .line 214
    iget v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onDown(Landroid/view/MotionEvent;)V
.end method

.method protected abstract onDrag(Landroid/view/MotionEvent;)V
.end method

.method protected abstract onTouchEvent()V
.end method

.method protected abstract onUp(Landroid/view/MotionEvent;)V
.end method

.method protected reset()V
    .locals 2

    .line 127
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    .line 133
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragHelper:Lde/mrapp/android/util/gesture/DragHelper;

    iget v1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->dragThreshold:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/gesture/DragHelper;->reset(I)V

    return-void
.end method

.method public final setPointerId(I)V
    .locals 0

    .line 287
    iput p1, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->pointerId:I

    return-void
.end method
