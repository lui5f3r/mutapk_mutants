.class Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;
.super Ljava/lang/Object;
.source "SyntaxHighlighter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyntaxHighlightSearchMatchesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lorg/wikipedia/edit/richtext/SpanExtents;",
        ">;>;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private searchText:Ljava/lang/String;

.field private selectedMatchResultPosition:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/text/Editable;Ljava/lang/String;I)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->text:Ljava/lang/String;

    .line 310
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->searchText:Ljava/lang/String;

    .line 311
    iput p4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->selectedMatchResultPosition:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->searchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 330
    :cond_0
    new-instance v1, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v2, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCHES:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v3, ""

    invoke-direct {v1, v3, v3, v2}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 334
    :cond_1
    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->text:Ljava/lang/String;

    iget-object v5, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->searchText:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 337
    iget v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->selectedMatchResultPosition:I

    if-ne v3, v4, :cond_2

    .line 338
    sget-object v4, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCH_SELECTED:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    iget-object v5, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v1}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    move-result-object v4

    goto :goto_0

    .line 340
    :cond_2
    sget-object v4, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCHES:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    iget-object v5, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v1}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    move-result-object v4

    .line 342
    :goto_0
    invoke-interface {v4, v2}, Lorg/wikipedia/edit/richtext/SpanExtents;->setStart(I)V

    .line 343
    iget-object v5, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->searchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-interface {v4, v5}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 344
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->searchText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 348
    :cond_3
    iget-boolean v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->cancelled:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-gez v2, :cond_1

    :goto_1
    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;->cancelled:Z

    return-void
.end method
