.class public Lorg/wikipedia/views/MarginItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MarginItemDecoration.java"


# instance fields
.field private final offsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1, p1, p1}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/MarginItemDecoration;->offsets:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 15
    invoke-static {p1, p2}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 20
    invoke-static {p1, p2}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p3}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p1, p4}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p4

    .line 21
    invoke-static {p1, p5}, Lorg/wikipedia/views/MarginItemDecoration;->pixelSize(Landroid/content/Context;I)I

    move-result p1

    .line 20
    invoke-direct {p0, p2, p3, p4, p1}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    return-void
.end method

.method protected static pixelSize(Landroid/content/Context;I)I
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 35
    iget-object p2, p0, Lorg/wikipedia/views/MarginItemDecoration;->offsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
