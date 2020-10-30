.class public Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SwipeableItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;
    }
.end annotation


# static fields
.field private static final SWIPE_ICON_PADDING_DP:F = 16.0f


# instance fields
.field private itemBackgroundPaint:Landroid/graphics/Paint;

.field private swipeBackgroundPaint:Landroid/graphics/Paint;

.field private swipeIcon:Landroid/graphics/Bitmap;

.field private swipeIconPaint:Landroid/graphics/Paint;

.field private swipeableEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0600f2

    const v1, 0x7f0800b1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p2, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object p2, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    const v0, 0x1010054

    invoke-static {p1, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-static {p1, p3, p4}, Lorg/wikipedia/util/ResourceUtil;->bitmapFromVectorDrawable(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 60
    instance-of p1, p2, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 7

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    const/4 v2, 0x0

    .line 80
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float v3, p2

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v4, p2

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    add-int/2addr p2, p5

    int-to-float v5, p2

    iget-object v6, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float v2, p2

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v3, p2, p4

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    add-int/2addr p2, p5

    int-to-float v4, p2

    iget-object v5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p2, 0x0

    const/high16 p5, 0x41800000    # 16.0f

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_0

    .line 83
    iget-object p2, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result p6

    mul-float p6, p6, p5

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object p7, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result p7

    div-int/lit8 p7, p7, 0x2

    iget-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p7, v0

    add-int/2addr p5, p7

    int-to-float p5, p5

    iget-object p7, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p6, p5, p7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    iget-object p6, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getRight()I

    move-result p6

    iget-object p7, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    sub-int/2addr p6, p7

    int-to-float p6, p6

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result p7

    mul-float p7, p7, p5

    sub-float/2addr p6, p7

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object p7, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result p7

    div-int/lit8 p7, p7, 0x2

    iget-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p7, v0

    add-int/2addr p5, p7

    int-to-float p5, p5

    iget-object p7, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p6, p5, p7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    :goto_0
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_1
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 67
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 72
    instance-of p2, p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    if-eqz p2, :cond_0

    .line 73
    check-cast p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;->onSwipe()V

    :cond_0
    return-void
.end method

.method public setSwipeableEnabled(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    return-void
.end method
