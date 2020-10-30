.class public Lorg/wikipedia/views/DiscreteSeekBar;
.super Landroid/widget/SeekBar;
.source "DiscreteSeekBar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private isRtl:Z

.field private min:I

.field private tickDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/views/DiscreteSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/views/DiscreteSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p2, p3}, Lorg/wikipedia/views/DiscreteSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/R$styleable;->DiscreteSeekBar:[I

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    iget v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    sub-int/2addr p2, v2

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 p2, 0x2

    .line 54
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    :cond_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/views/DiscreteSeekBar;->isRtl:Z

    return-void
.end method


# virtual methods
.method drawTickMarks(Landroid/graphics/Canvas;ZZ)V
    .locals 8

    .line 81
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    add-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    move-result v1

    .line 83
    iget-object v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 85
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 86
    :goto_1
    iget-object v5, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v6, v2

    neg-int v7, v4

    invoke-virtual {v5, v6, v7, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    :cond_2
    iget-object v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 89
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 90
    :goto_2
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v3, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 91
    :cond_4
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    iget-boolean v3, p0, Lorg/wikipedia/views/DiscreteSeekBar;->isRtl:Z

    if-eqz v3, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 98
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget v3, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    :goto_3
    if-gt v3, v0, :cond_9

    if-eqz p3, :cond_7

    .line 100
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    if-le v3, v1, :cond_7

    .line 101
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    if-eqz p2, :cond_8

    if-nez v3, :cond_8

    .line 103
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 104
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 108
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getValue()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0, p1, v1, v1}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(I)V
    .locals 1

    .line 45
    iget v0, p0, Lorg/wikipedia/views/DiscreteSeekBar;->min:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
