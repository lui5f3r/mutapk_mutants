.class public Lorg/wikipedia/feed/view/ListCardView_ViewBinding;
.super Ljava/lang/Object;
.source "ListCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/ListCardView;

.field private view7f090484:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/ListCardView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/ListCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/ListCardView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardView;

    .line 31
    const-class v0, Lorg/wikipedia/feed/view/CardHeaderView;

    const v1, 0x7f09047b

    const-string v2, "field \'headerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/CardHeaderView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 32
    const-class v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;

    const v1, 0x7f090482

    const-string v2, "field \'largeHeaderView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardView;->largeHeaderView:Lorg/wikipedia/feed/view/CardLargeHeaderView;

    .line 33
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090483

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090484

    const-string v1, "field \'moreContentContainer\' and method \'moreContentClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardView;->moreContentContainer:Landroid/view/View;

    .line 36
    iput-object v0, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->view7f090484:Landroid/view/View;

    .line 37
    new-instance v1, Lorg/wikipedia/feed/view/ListCardView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/view/ListCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/view/ListCardView_ViewBinding;Lorg/wikipedia/feed/view/ListCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090485

    const-string v2, "field \'moreContentTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/feed/view/ListCardView;->moreContentTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardView;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardView;->largeHeaderView:Lorg/wikipedia/feed/view/CardLargeHeaderView;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardView;->moreContentContainer:Landroid/view/View;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardView;->moreContentTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lorg/wikipedia/feed/view/ListCardView_ViewBinding;->view7f090484:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
