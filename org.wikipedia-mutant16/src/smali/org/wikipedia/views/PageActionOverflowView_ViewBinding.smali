.class public Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;
.super Ljava/lang/Object;
.source "PageActionOverflowView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/PageActionOverflowView;

.field private view7f0902c0:Landroid/view/View;

.field private view7f0902c1:Landroid/view/View;

.field private view7f0902c2:Landroid/view/View;

.field private view7f0902c3:Landroid/view/View;

.field private view7f0902c4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/PageActionOverflowView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;-><init>(Lorg/wikipedia/views/PageActionOverflowView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/PageActionOverflowView;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->target:Lorg/wikipedia/views/PageActionOverflowView;

    const v0, 0x7f0902c2

    const-string v1, "field \'forwardButton\' and method \'onItemClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Lcom/google/android/material/textview/MaterialTextView;

    const-string v3, "field \'forwardButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p1, Lorg/wikipedia/views/PageActionOverflowView;->forwardButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 40
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c2:Landroid/view/View;

    .line 41
    new-instance v0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;-><init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c0

    const-string v1, "field \'exploreButton\' and method \'onItemClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Lcom/google/android/material/textview/MaterialTextView;

    const-string v3, "field \'exploreButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p1, Lorg/wikipedia/views/PageActionOverflowView;->exploreButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 49
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c0:Landroid/view/View;

    .line 50
    new-instance v0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$2;-><init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c1

    const-string v1, "method \'onItemClick\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c1:Landroid/view/View;

    .line 58
    new-instance v2, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$3;-><init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c3

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c3:Landroid/view/View;

    .line 66
    new-instance v2, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$4;-><init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c4

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 73
    iput-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c4:Landroid/view/View;

    .line 74
    new-instance v0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$5;-><init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->target:Lorg/wikipedia/views/PageActionOverflowView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->target:Lorg/wikipedia/views/PageActionOverflowView;

    .line 89
    iput-object v1, v0, Lorg/wikipedia/views/PageActionOverflowView;->forwardButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 90
    iput-object v1, v0, Lorg/wikipedia/views/PageActionOverflowView;->exploreButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 92
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c2:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c0:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c1:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c3:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;->view7f0902c4:Landroid/view/View;

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
