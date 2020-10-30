.class final enum Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$4;
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

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;-><init>(Ljava/lang/String;ILorg/wikipedia/edit/richtext/SyntaxRuleStyle$1;)V

    return-void
.end method


# virtual methods
.method public createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;
    .locals 2

    .line 40
    new-instance v0, Lorg/wikipedia/edit/richtext/ColorSpanEx;

    const v1, 0x7f0401b5

    invoke-static {p1, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/wikipedia/edit/richtext/ColorSpanEx;-><init>(IIILorg/wikipedia/edit/richtext/SyntaxRule;)V

    return-object v0
.end method
