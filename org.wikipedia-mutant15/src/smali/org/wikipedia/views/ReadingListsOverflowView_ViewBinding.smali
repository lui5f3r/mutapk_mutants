.class public Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListsOverflowView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/ReadingListsOverflowView;

.field private view7f090331:Landroid/view/View;

.field private view7f090333:Landroid/view/View;

.field private view7f090334:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/ReadingListsOverflowView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/ReadingListsOverflowView;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->target:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090332

    const-string v2, "field \'lastSync\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/ReadingListsOverflowView;->lastSync:Landroid/widget/TextView;

    const v0, 0x7f090334

    const-string v1, "method \'onItemClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090334:Landroid/view/View;

    .line 37
    new-instance v2, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$1;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;Lorg/wikipedia/views/ReadingListsOverflowView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090331

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090331:Landroid/view/View;

    .line 45
    new-instance v2, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;Lorg/wikipedia/views/ReadingListsOverflowView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090333

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    iput-object p2, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090333:Landroid/view/View;

    .line 53
    new-instance v0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$3;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;Lorg/wikipedia/views/ReadingListsOverflowView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->target:Lorg/wikipedia/views/ReadingListsOverflowView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->target:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 68
    iput-object v1, v0, Lorg/wikipedia/views/ReadingListsOverflowView;->lastSync:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090334:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090334:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090331:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090331:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090333:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;->view7f090333:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
