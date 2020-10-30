.class Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;
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
    name = "SyntaxHighlightTask"
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

.field private text:Landroid/text/Editable;

.field final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/text/Editable;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

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

    .line 200
    invoke-virtual {p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 228
    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$700(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 230
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-le v7, v8, :cond_2

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->isStartEndSame()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    .line 236
    :goto_2
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 237
    iget-object v9, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    add-int v10, v3, v7

    invoke-interface {v9, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    invoke-interface {v5}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/wikipedia/model/BaseModel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 245
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v5, v7}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 246
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 248
    :cond_5
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getSpanStyle()Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    move-result-object v5

    iget-object v7, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3, v6}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    move-result-object v5

    .line 249
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_4
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_5
    add-int/2addr v3, v5

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    .line 257
    :goto_6
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_8

    .line 258
    iget-object v9, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    add-int v10, v3, v7

    invoke-interface {v9, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v7, 0x0

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x1

    :goto_7
    if-eqz v7, :cond_9

    .line 264
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getSpanStyle()Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    move-result-object v5

    iget-object v7, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v3, v6}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    move-result-object v5

    .line 265
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    .line 270
    :cond_9
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getStartSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v9, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v7, v9, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x0

    .line 275
    :goto_8
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getEndSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_c

    .line 276
    iget-object v9, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->text:Landroid/text/Editable;

    add-int v10, v3, v7

    invoke-interface {v9, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getEndSymbol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_b

    const/4 v7, 0x0

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x1

    :goto_9
    if-eqz v7, :cond_1

    .line 282
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    invoke-interface {v5}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/wikipedia/model/BaseModel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 283
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 284
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getEndSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v5, v7}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 285
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_d
    invoke-virtual {v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getEndSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto/16 :goto_5

    .line 294
    :cond_e
    iget-boolean v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->cancelled:Z

    if-eqz v4, :cond_f

    goto :goto_a

    :cond_f
    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_a
    return-object v1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->cancelled:Z

    return-void
.end method
