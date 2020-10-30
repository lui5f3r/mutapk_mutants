.class Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;
.super Ljava/lang/Object;
.source "SyntaxHighlighter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/edit/richtext/SyntaxHighlighter;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$600(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
