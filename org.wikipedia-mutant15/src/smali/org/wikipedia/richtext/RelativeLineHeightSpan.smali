.class abstract Lorg/wikipedia/richtext/RelativeLineHeightSpan;
.super Ljava/lang/Object;
.source "RelativeLineHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final scalar:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scalar:F

    return-void
.end method


# virtual methods
.method protected ascenderHeightRatio(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 28
    :cond_0
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    :goto_0
    return p1
.end method

.method protected descenderHeightRatio(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->ascenderHeightRatio(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method

.method protected lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 36
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected scaledAscender(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->ascenderHeightRatio(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledLineHeight(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method

.method protected scaledDescender(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->descenderHeightRatio(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledLineHeight(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method

.method protected scaledLineHeight(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scalar:F

    mul-float p1, p1, v0

    return p1
.end method

.method protected spanEnd(Landroid/text/Spanned;I)Z
    .locals 0

    .line 52
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected spanEnd(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 48
    check-cast p1, Landroid/text/Spanned;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->spanEnd(Landroid/text/Spanned;I)Z

    move-result p1

    return p1
.end method

.method protected spanStart(Landroid/text/Spanned;I)Z
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected spanStart(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 40
    check-cast p1, Landroid/text/Spanned;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->spanStart(Landroid/text/Spanned;I)Z

    move-result p1

    return p1
.end method
