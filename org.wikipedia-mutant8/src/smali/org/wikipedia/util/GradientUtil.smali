.class public final Lorg/wikipedia/util/GradientUtil;
.super Ljava/lang/Object;
.source "GradientUtil.java"


# static fields
.field private static final GRADIENT_NUM_STOPS:I = 0x8

.field private static final GRADIENT_POWER:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerGradient(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 24
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 25
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 26
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, p0, p1}, Lorg/wikipedia/util/GradientUtil;->setPowerGradient(Landroid/graphics/drawable/PaintDrawable;II)V

    return-object v0
.end method

.method public static getPowerGradientInt(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 31
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 32
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 33
    invoke-static {v0, p0, p1}, Lorg/wikipedia/util/GradientUtil;->setPowerGradient(Landroid/graphics/drawable/PaintDrawable;II)V

    return-object v0
.end method

.method private static setPowerGradient(Landroid/graphics/drawable/PaintDrawable;II)V
    .locals 12

    const/16 v0, 0x8

    new-array v6, v0, [I

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-ge v4, v0, :cond_0

    int-to-float v8, v4

    mul-float v8, v8, v5

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 55
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8, v7, v5}, Lorg/wikipedia/util/MathUtil;->constrain(FFF)F

    move-result v5

    int-to-float v7, p1

    mul-float v7, v7, v5

    float-to-int v5, v7

    .line 56
    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0x7

    const v0, 0x800003

    if-eq p1, v0, :cond_2

    const v0, 0x800005

    if-eq p1, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    const/4 v4, 0x0

    :goto_2
    and-int/lit8 p1, p2, 0x70

    const/16 p2, 0x30

    if-eq p1, p2, :cond_4

    const/16 p2, 0x50

    if-eq p1, p2, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    const/4 v5, 0x0

    .line 89
    :goto_4
    new-instance p1, Lorg/wikipedia/util/GradientUtil$1;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/util/GradientUtil$1;-><init>(FFFF[I)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-void
.end method
