.class final enum Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$5;
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

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;-><init>(Ljava/lang/String;ILorg/wikipedia/edit/richtext/SyntaxRuleStyle$1;)V

    return-void
.end method


# virtual methods
.method public createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;
    .locals 1

    .line 47
    new-instance p1, Lorg/wikipedia/edit/richtext/StyleSpanEx;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2, p3}, Lorg/wikipedia/edit/richtext/StyleSpanEx;-><init>(IILorg/wikipedia/edit/richtext/SyntaxRule;)V

    return-object p1
.end method
