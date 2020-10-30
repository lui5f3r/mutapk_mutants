.class public Lorg/wikipedia/views/DontInterceptTouchListener;
.super Ljava/lang/Object;
.source "DontInterceptTouchListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field private disallowInterception:Z

.field private pointerId:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->pointerId:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->x:F

    .line 11
    iput v0, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->y:F

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/high16 p1, -0x80000000

    .line 47
    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->pointerId:I

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->x:F

    .line 49
    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->y:F

    .line 50
    iput-boolean v1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->disallowInterception:Z

    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->disallowInterception:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    iget v0, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->pointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 33
    :cond_2
    iget v2, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->y:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 34
    iget v3, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->x:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    .line 38
    iput-boolean v3, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->disallowInterception:Z

    goto :goto_0

    :cond_3
    cmpl-float p2, v2, v0

    if-lez p2, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 44
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->pointerId:I

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->x:F

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/DontInterceptTouchListener;->y:F

    :goto_1
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
