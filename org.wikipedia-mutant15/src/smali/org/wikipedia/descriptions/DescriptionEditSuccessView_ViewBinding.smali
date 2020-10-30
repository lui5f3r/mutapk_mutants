.class public Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;
.super Ljava/lang/Object;
.source "DescriptionEditSuccessView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

.field private view7f090467:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;-><init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 31
    const-class v0, Lorg/wikipedia/views/AppTextViewWithImages;

    const v1, 0x7f090468

    const-string v2, "field \'hintTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/AppTextViewWithImages;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->hintTextView:Lorg/wikipedia/views/AppTextViewWithImages;

    const v0, 0x7f090467

    const-string v1, "method \'onDismissClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->view7f090467:Landroid/view/View;

    .line 34
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditSuccessView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 49
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->hintTextView:Lorg/wikipedia/views/AppTextViewWithImages;

    .line 51
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->view7f090467:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;->view7f090467:Landroid/view/View;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
