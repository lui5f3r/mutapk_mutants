.class public Lorg/wikipedia/richtext/ParagraphSpan;
.super Lorg/wikipedia/richtext/RelativeLineHeightSpan;
.source "ParagraphSpan.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;-><init>(F)V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->spanStart(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0, p6}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledAscender(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->spanEnd(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0, p6}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledDescender(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_1
    :goto_0
    return-void
.end method
