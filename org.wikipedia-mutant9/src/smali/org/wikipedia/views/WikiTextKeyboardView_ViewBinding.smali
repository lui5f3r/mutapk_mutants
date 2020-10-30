.class public Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;
.super Ljava/lang/Object;
.source "WikiTextKeyboardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/WikiTextKeyboardView;

.field private view7f0904be:Landroid/view/View;

.field private view7f0904c1:Landroid/view/View;

.field private view7f0904c2:Landroid/view/View;

.field private view7f0904c3:Landroid/view/View;

.field private view7f0904c4:Landroid/view/View;

.field private view7f0904c5:Landroid/view/View;

.field private view7f0904c6:Landroid/view/View;

.field private view7f0904c7:Landroid/view/View;

.field private view7f0904c8:Landroid/view/View;

.field private view7f0904ca:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/WikiTextKeyboardView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/WikiTextKeyboardView;Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->target:Lorg/wikipedia/views/WikiTextKeyboardView;

    const v0, 0x7f0904ca

    const-string v1, "field \'undoButton\' and method \'onClickButtonUndo\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p1, Lorg/wikipedia/views/WikiTextKeyboardView;->undoButton:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904ca:Landroid/view/View;

    .line 50
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$1;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c6

    const-string v1, "field \'redoButton\' and method \'onClickButtonRedo\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p1, Lorg/wikipedia/views/WikiTextKeyboardView;->redoButton:Landroid/view/View;

    .line 58
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c6:Landroid/view/View;

    .line 59
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$2;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904cc

    const-string v1, "field \'undoRedoSeparator\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/views/WikiTextKeyboardView;->undoRedoSeparator:Landroid/view/View;

    const v0, 0x7f0904c2

    const-string v1, "method \'onClickButtonLink\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c2:Landroid/view/View;

    .line 68
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$3;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c1

    const-string v1, "method \'onClickButtonItalic\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c1:Landroid/view/View;

    .line 76
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$4;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904be

    const-string v1, "method \'onClickButtonBold\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904be:Landroid/view/View;

    .line 84
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$5;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c8

    const-string v1, "method \'onClickButtonTemplate\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c8:Landroid/view/View;

    .line 92
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$6;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c7

    const-string v1, "method \'onClickButtonRef\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c7:Landroid/view/View;

    .line 100
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c3

    const-string v1, "method \'onClickButtonListBulleted\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c3:Landroid/view/View;

    .line 108
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$8;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c4

    const-string v1, "method \'onClickButtonListNumbered\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c4:Landroid/view/View;

    .line 116
    new-instance v1, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$9;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c5

    const-string v1, "method \'onClickButtonPreviewLink\'"

    .line 122
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 123
    iput-object p2, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c5:Landroid/view/View;

    .line 124
    new-instance v0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$10;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->target:Lorg/wikipedia/views/WikiTextKeyboardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->target:Lorg/wikipedia/views/WikiTextKeyboardView;

    .line 139
    iput-object v1, v0, Lorg/wikipedia/views/WikiTextKeyboardView;->undoButton:Landroid/view/View;

    .line 140
    iput-object v1, v0, Lorg/wikipedia/views/WikiTextKeyboardView;->redoButton:Landroid/view/View;

    .line 141
    iput-object v1, v0, Lorg/wikipedia/views/WikiTextKeyboardView;->undoRedoSeparator:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904ca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904ca:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c6:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c2:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c1:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904be:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904be:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c8:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c7:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c3:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c4:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;->view7f0904c5:Landroid/view/View;

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
