.class public Lorg/wikipedia/views/WikiTextKeyboardView;
.super Landroid/widget/FrameLayout;
.source "WikiTextKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/WikiTextKeyboardView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/views/WikiTextKeyboardView$Callback;

.field private editText:Lorg/wikipedia/views/PlainPasteEditText;

.field redoButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field undoButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field undoRedoSeparator:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lorg/wikipedia/views/WikiTextKeyboardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lorg/wikipedia/views/WikiTextKeyboardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lorg/wikipedia/views/WikiTextKeyboardView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0126

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 51
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->undoButton:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x15

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->redoButton:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->undoRedoSeparator:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 187
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 188
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method private toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 165
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    neg-int p2, p2

    const-string p3, ""

    invoke-interface {p1, p3, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 168
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 172
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr v1, p3

    invoke-interface {v0, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 177
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 179
    :goto_0
    invoke-interface {p1, p2, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 180
    iget-object p3, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p3, p2

    iget-object p2, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    invoke-interface {p1, p3, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    :goto_1
    return-void
.end method

.method private trimPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :goto_0
    const-string v0, "."

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "!"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 203
    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    return-object p1

    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 201
    :cond_3
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method onClickButtonBold(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 77
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "\'\'\'"

    invoke-direct {p0, p1, v0, v0}, Lorg/wikipedia/views/WikiTextKeyboardView;->toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onClickButtonItalic(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 71
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "\'\'"

    invoke-direct {p0, p1, v0, v0}, Lorg/wikipedia/views/WikiTextKeyboardView;->toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onClickButtonLink(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 65
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "[["

    const-string v1, "]]"

    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/views/WikiTextKeyboardView;->toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onClickButtonListBulleted(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 103
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\n* "

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method onClickButtonListNumbered(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 109
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\n# "

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method onClickButtonPreviewLink(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 115
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 119
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "[["

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView;->trimPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 126
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/16 v3, 0x40

    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v4, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v4}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 134
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 137
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-direct {p0, v3, v2}, Lorg/wikipedia/views/WikiTextKeyboardView;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "]]"

    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    if-ltz v2, :cond_5

    if-lez v0, :cond_5

    if-le v0, v2, :cond_5

    add-int/lit8 v2, v2, 0x2

    .line 141
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "|"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\\|"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_1

    :cond_4
    move-object p1, v0

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 150
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->callback:Lorg/wikipedia/views/WikiTextKeyboardView$Callback;

    if-eqz v0, :cond_6

    .line 151
    invoke-interface {v0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView$Callback;->onPreviewLink(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method onClickButtonRedo(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 87
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->redo()V

    return-void
.end method

.method onClickButtonRef(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 97
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "<ref>"

    const-string v1, "</ref>"

    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/views/WikiTextKeyboardView;->toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onClickButtonTemplate(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 91
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "{{"

    const-string v1, "}}"

    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/views/WikiTextKeyboardView;->toggleSyntaxAroundCurrentSelection(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onClickButtonUndo(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 83
    iget-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Lorg/wikipedia/views/PlainPasteEditText;->undo()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/views/WikiTextKeyboardView$Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->callback:Lorg/wikipedia/views/WikiTextKeyboardView$Callback;

    return-void
.end method

.method public setEditText(Lorg/wikipedia/views/PlainPasteEditText;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView;->editText:Lorg/wikipedia/views/PlainPasteEditText;

    return-void
.end method
