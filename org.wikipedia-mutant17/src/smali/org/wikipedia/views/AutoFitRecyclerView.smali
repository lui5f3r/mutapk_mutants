.class public Lorg/wikipedia/views/AutoFitRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AutoFitRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;,
        Lorg/wikipedia/views/AutoFitRecyclerView$Callback;
    }
.end annotation


# static fields
.field private static final MIN_COLUMNS:I = 0x1


# instance fields
.field private callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

.field private columns:I

.field private minColumnWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 27
    new-instance p1, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;

    invoke-direct {p1}, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/views/AutoFitRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 27
    new-instance p1, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;

    invoke-direct {p1}, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/views/AutoFitRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 27
    new-instance p1, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;

    invoke-direct {p1}, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    .line 41
    invoke-direct {p0, p2, p3}, Lorg/wikipedia/views/AutoFitRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private calculateColumns(II)I
    .locals 1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 80
    div-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/R$styleable;->AutoFitRecyclerView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    return v0
.end method

.method public minColumnWidth(I)V
    .locals 1

    .line 49
    iget v0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    if-eq v0, p1, :cond_0

    .line 50
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 73
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 61
    iget p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/AutoFitRecyclerView;->calculateColumns(II)I

    move-result p1

    .line 62
    iget p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    if-eq p2, p1, :cond_0

    .line 63
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 64
    iget-object p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    invoke-interface {p2, p1}, Lorg/wikipedia/views/AutoFitRecyclerView$Callback;->onColumns(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/views/AutoFitRecyclerView$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;

    invoke-direct {p1}, Lorg/wikipedia/views/AutoFitRecyclerView$DefaultCallback;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    return-void
.end method
