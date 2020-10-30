.class final enum Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$8;
.super Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
.source "SyntaxRuleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;-><init>(Ljava/lang/String;ILorg/wikipedia/edit/richtext/SyntaxRuleStyle$1;)V

    return-void
.end method


# virtual methods
.method public createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060080

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 66
    new-instance v1, Lorg/wikipedia/edit/richtext/ColorSpanEx;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/wikipedia/edit/richtext/ColorSpanEx;-><init>(IIILorg/wikipedia/edit/richtext/SyntaxRule;)V

    return-object v1
.end method
