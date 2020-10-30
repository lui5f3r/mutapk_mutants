.class public Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;
.super Ljava/lang/Object;
.source "FindInPageActionProvider_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/FindInPageActionProvider;

.field private view7f0900ba:Landroid/view/View;

.field private view7f090157:Landroid/view/View;

.field private view7f090158:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/FindInPageActionProvider;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->target:Lorg/wikipedia/views/FindInPageActionProvider;

    const v0, 0x7f090157

    const-string v1, "field \'findInPageNext\', method \'onFindInPageNextClicked\', and method \'onFindInPageNextLongClicked\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageNext:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090157:Landroid/view/View;

    .line 33
    new-instance v1, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$1;-><init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v1, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$2;-><init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f090158

    const-string v1, "field \'findInPagePrev\', method \'onFindInPagePrevClicked\', and method \'onFindInPagePrevLongClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p1, Lorg/wikipedia/views/FindInPageActionProvider;->findInPagePrev:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090158:Landroid/view/View;

    .line 48
    new-instance v1, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$3;-><init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v1, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;-><init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090156

    const-string v2, "field \'findInPageMatch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f090155

    const-string v2, "field \'searchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p1, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const v0, 0x7f0900ba

    const-string v1, "method \'onCloseClicked\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 63
    iput-object p2, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f0900ba:Landroid/view/View;

    .line 64
    new-instance v0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$5;-><init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->target:Lorg/wikipedia/views/FindInPageActionProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->target:Lorg/wikipedia/views/FindInPageActionProvider;

    .line 79
    iput-object v1, v0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageNext:Landroid/view/View;

    .line 80
    iput-object v1, v0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPagePrev:Landroid/view/View;

    .line 81
    iput-object v1, v0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 84
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090157:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090157:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    iput-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090157:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090158:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090158:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    iput-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f090158:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f0900ba:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;->view7f0900ba:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
