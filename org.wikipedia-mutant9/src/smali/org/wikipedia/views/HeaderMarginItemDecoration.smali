.class public Lorg/wikipedia/views/HeaderMarginItemDecoration;
.super Lorg/wikipedia/views/MarginItemDecoration;
.source "HeaderMarginItemDecoration.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    int-to-float p1, p1

    .line 16
    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p1

    int-to-float p2, p2

    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, p2}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p3}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p1

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2, p3, p1}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 26
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lorg/wikipedia/views/MarginItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_0
    return-void
.end method
