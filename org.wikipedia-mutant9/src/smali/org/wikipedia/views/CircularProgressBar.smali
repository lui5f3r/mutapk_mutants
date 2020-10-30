.class public final Lorg/wikipedia/views/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/CircularProgressBar$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/views/CircularProgressBar$Companion;

.field private static final DEFAULT_STROKE_WIDTH_DP:I = 0x0

.field public static final MAX_PROGRESS:I = 0x64

.field public static final MIN_PROGRESS:I = 0x5

.field private static final PROGRESS_BACKGROUND_MAX_ANGLE:I = 0x168

.field private static final PROGRESS_BACKGROUND_MIN_ANGLE:I = 0x0

.field private static final PROGRESS_START_ANGLE:I = 0x10e


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private circleBounds:Landroid/graphics/RectF;

.field private maxProgressValue:D

.field private progressBackgroundPaint:Landroid/graphics/Paint;

.field private progressPaint:Landroid/graphics/Paint;

.field private sweepAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/views/CircularProgressBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/views/CircularProgressBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/views/CircularProgressBar;->Companion:Lorg/wikipedia/views/CircularProgressBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    const/16 v0, 0x64

    int-to-double v1, v0

    .line 20
    iput-wide v1, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04027b

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    int-to-float v3, v3

    .line 25
    invoke-static {v3}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    if-eqz p2, :cond_0

    .line 27
    sget-object v4, Lorg/wikipedia/R$styleable;->CircularProgressBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026able.CircularProgressBar)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 p2, 0x3

    .line 29
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p2, 0x5

    .line 30
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 p2, 0x2

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-double v4, p2

    iput-wide v4, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object p1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final calculateBounds(II)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 82
    iget-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 83
    iput v0, v1, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    sub-float/2addr p1, v0

    .line 84
    iput p1, v1, Landroid/graphics/RectF;->right:F

    int-to-float p1, p2

    sub-float/2addr p1, v0

    .line 85
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private final drawProgress(Landroid/graphics/Canvas;)V
    .locals 6

    .line 99
    iget-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    const/16 v0, 0x10e

    int-to-float v2, v0

    iget v0, p0, Lorg/wikipedia/views/CircularProgressBar;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawProgressBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 94
    iget-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    int-to-float v2, v0

    const/16 v0, 0x168

    int-to-float v3, v0

    .line 95
    iget-object v5, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getProgressBackgroundColor()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getProgressColor()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lorg/wikipedia/views/CircularProgressBar;->drawProgressBackground(Landroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0, p1}, Lorg/wikipedia/views/CircularProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 45
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 54
    iget-object v6, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-int v6, v6

    add-int v7, v3, v2

    add-int v8, v0, v1

    .line 55
    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    add-int/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    float-to-int v7, v7

    mul-int v7, v7, v6

    add-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq p1, v8, :cond_0

    if-eq p1, v7, :cond_1

    move v4, v6

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    :cond_1
    :goto_0
    if-eq p2, v8, :cond_2

    if-eq p2, v7, :cond_3

    move v5, v6

    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    :cond_3
    :goto_1
    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    .line 71
    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 72
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/CircularProgressBar;->calculateBounds(II)V

    return-void
.end method

.method public final setCurrentProgress(D)V
    .locals 3

    .line 103
    iget-wide v0, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 104
    iput-wide p1, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 106
    :cond_0
    iget-wide v0, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    div-double/2addr p1, v0

    const/16 v0, 0x168

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lorg/wikipedia/views/CircularProgressBar;->sweepAngle:I

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressBackgroundColor(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressColor(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
