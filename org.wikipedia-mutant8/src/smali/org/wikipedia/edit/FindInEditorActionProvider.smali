.class public Lorg/wikipedia/edit/FindInEditorActionProvider;
.super Lorg/wikipedia/views/FindInPageActionProvider;
.source "FindInEditorActionProvider.java"

# interfaces
.implements Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;


# instance fields
.field private final actionMode:Landroid/view/ActionMode;

.field private scrollView:Landroid/widget/ScrollView;

.field private searchQuery:Ljava/lang/String;

.field private final syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

.field private final textView:Lorg/wikipedia/views/PlainPasteEditText;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Lorg/wikipedia/views/PlainPasteEditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/view/ActionMode;)V
    .locals 1

    .line 29
    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/views/FindInPageActionProvider;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollView:Landroid/widget/ScrollView;

    .line 31
    iput-object p2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    .line 32
    iput-object p3, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 33
    iput-object p4, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->actionMode:Landroid/view/ActionMode;

    .line 34
    invoke-virtual {p0, p0}, Lorg/wikipedia/views/FindInPageActionProvider;->setListener(Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;)V

    return-void
.end method


# virtual methods
.method public findInPage(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/edit/-$$Lambda$FindInEditorActionProvider$Ells_xKY0_WKhp_ZYAsRgY9_ZOk;-><init>(Lorg/wikipedia/edit/FindInEditorActionProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PlainPasteEditText;->setFindListener(Lorg/wikipedia/views/PlainPasteEditText$FindListener;)V

    .line 56
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/views/PlainPasteEditText;->findInEditor(Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    return-void
.end method

.method public synthetic lambda$findInPage$0$FindInEditorActionProvider(Ljava/lang/String;IIIZ)V
    .locals 0

    .line 46
    invoke-virtual {p0, p2, p3}, Lorg/wikipedia/views/FindInPageActionProvider;->setMatchesResults(II)V

    .line 47
    iget-object p2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 49
    iget-object p2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputEditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 51
    iget-object p2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollView:Landroid/widget/ScrollView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p3

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    if-eqz p5, :cond_0

    .line 53
    iget-object p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onCloseClicked()V
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 2

    .line 39
    invoke-super {p0}, Lorg/wikipedia/views/FindInPageActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/wikipedia/views/FindInPageActionProvider;->setSearchViewQuery(Ljava/lang/String;)V

    return-object v0
.end method

.method public onFindNextClicked()V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Lorg/wikipedia/views/PlainPasteEditText;->findNext()V

    return-void
.end method

.method public onFindNextLongClicked()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PlainPasteEditText;->findFirstOrLast(Z)V

    return-void
.end method

.method public onFindPrevClicked()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Lorg/wikipedia/views/PlainPasteEditText;->findPrevious()V

    return-void
.end method

.method public onFindPrevLongClicked()V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PlainPasteEditText;->findFirstOrLast(Z)V

    return-void
.end method

.method public onSearchTextChanged(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/FindInEditorActionProvider;->findInPage(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PlainPasteEditText;->clearMatches(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    .line 91
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->applyFindTextSyntax(Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;)V

    .line 93
    :goto_0
    iput-object p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->searchQuery:Ljava/lang/String;

    return-void
.end method
