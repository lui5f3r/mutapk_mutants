.class public Lorg/wikipedia/views/WikitextKeyboardButtonView_ViewBinding;
.super Ljava/lang/Object;
.source "WikitextKeyboardButtonView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/WikitextKeyboardButtonView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/WikitextKeyboardButtonView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/WikitextKeyboardButtonView_ViewBinding;-><init>(Lorg/wikipedia/views/WikitextKeyboardButtonView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/WikitextKeyboardButtonView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView_ViewBinding;->target:Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c9

    const-string v2, "field \'buttonTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonTextView:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904bf

    const-string v2, "field \'buttonHintView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonHintView:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0904c0

    const-string v2, "field \'buttonImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView_ViewBinding;->target:Lorg/wikipedia/views/WikitextKeyboardButtonView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lorg/wikipedia/views/WikitextKeyboardButtonView_ViewBinding;->target:Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 39
    iput-object v1, v0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonTextView:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonHintView:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/views/WikitextKeyboardButtonView;->buttonImageView:Landroid/widget/ImageView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
