.class public Lorg/wikipedia/richtext/LeadingSpan;
.super Lorg/wikipedia/richtext/RelativeLineHeightSpan;
.source "LeadingSpan.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;-><init>(F)V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 17
    invoke-virtual {p0, p6}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledAscender(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p1

    float-to-int p1, p1

    .line 18
    invoke-virtual {p0, p6}, Lorg/wikipedia/richtext/RelativeLineHeightSpan;->scaledDescender(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result p2

    float-to-int p2, p2

    .line 20
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 21
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_0
    return-void
.end method
