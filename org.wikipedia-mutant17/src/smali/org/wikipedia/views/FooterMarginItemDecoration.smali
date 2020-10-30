.class public Lorg/wikipedia/views/FooterMarginItemDecoration;
.super Lorg/wikipedia/views/MarginItemDecoration;
.source "FooterMarginItemDecoration.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    int-to-float p1, p1

    .line 15
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

    .line 20
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
    .locals 2

    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lorg/wikipedia/views/MarginItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_0
    return-void
.end method
