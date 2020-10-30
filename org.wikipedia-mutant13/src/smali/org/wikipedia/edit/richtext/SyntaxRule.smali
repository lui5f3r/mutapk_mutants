.class public Lorg/wikipedia/edit/richtext/SyntaxRule;
.super Lorg/wikipedia/model/BaseModel;
.source "SyntaxRule.java"


# instance fields
.field private final endSymbol:Ljava/lang/String;

.field private final sameStartEnd:Z

.field private final spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

.field private final startSymbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->startSymbol:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->endSymbol:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->sameStartEnd:Z

    return-void
.end method


# virtual methods
.method public getEndSymbol()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->endSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanStyle()Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    return-object v0
.end method

.method public getStartSymbol()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->startSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public isStartEndSame()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->sameStartEnd:Z

    return v0
.end method
