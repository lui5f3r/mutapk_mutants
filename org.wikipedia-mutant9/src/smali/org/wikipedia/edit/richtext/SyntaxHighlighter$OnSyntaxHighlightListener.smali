.class public interface abstract Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;
.super Ljava/lang/Object;
.source "SyntaxHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSyntaxHighlightListener"
.end annotation


# virtual methods
.method public abstract findTextMatches(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syntaxHighlightResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SpanExtents;",
            ">;)V"
        }
    .end annotation
.end method
