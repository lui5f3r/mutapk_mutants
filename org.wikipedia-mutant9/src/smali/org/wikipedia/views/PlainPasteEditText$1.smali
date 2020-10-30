.class Lorg/wikipedia/views/PlainPasteEditText$1;
.super Ljava/lang/Object;
.source "PlainPasteEditText.java"

# interfaces
.implements Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/PlainPasteEditText;->findInEditor(Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/PlainPasteEditText;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/PlainPasteEditText;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/wikipedia/views/PlainPasteEditText$1;->this$0:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTextMatches(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/wikipedia/views/PlainPasteEditText$1;->this$0:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {v0}, Lorg/wikipedia/views/PlainPasteEditText;->access$000(Lorg/wikipedia/views/PlainPasteEditText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 142
    iget-object v1, p0, Lorg/wikipedia/views/PlainPasteEditText$1;->this$0:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {v1}, Lorg/wikipedia/views/PlainPasteEditText;->access$000(Lorg/wikipedia/views/PlainPasteEditText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/wikipedia/edit/richtext/SpanExtents;->getStart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/views/PlainPasteEditText$1;->this$0:Lorg/wikipedia/views/PlainPasteEditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/views/PlainPasteEditText;->access$100(Lorg/wikipedia/views/PlainPasteEditText;Z)V

    return-void
.end method

.method public syntaxHighlightResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
