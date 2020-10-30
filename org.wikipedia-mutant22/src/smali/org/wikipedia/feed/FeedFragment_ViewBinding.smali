.class public Lorg/wikipedia/feed/FeedFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FeedFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/FeedFragment;

.field private view7f090166:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/FeedFragment;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->target:Lorg/wikipedia/feed/FeedFragment;

    .line 26
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f09014d

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 27
    const-class v0, Lorg/wikipedia/feed/view/FeedView;

    const v1, 0x7f090168

    const-string v2, "field \'feedView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/FeedView;

    iput-object v0, p1, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    const v0, 0x7f090167

    const-string v1, "field \'emptyContainer\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/FeedFragment;->emptyContainer:Landroid/view/View;

    const v0, 0x7f090166

    const-string v1, "method \'onCustomizeClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->view7f090166:Landroid/view/View;

    .line 31
    new-instance v0, Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;-><init>(Lorg/wikipedia/feed/FeedFragment_ViewBinding;Lorg/wikipedia/feed/FeedFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->target:Lorg/wikipedia/feed/FeedFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->target:Lorg/wikipedia/feed/FeedFragment;

    .line 46
    iput-object v1, v0, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 47
    iput-object v1, v0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/feed/FeedFragment;->emptyContainer:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->view7f090166:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding;->view7f090166:Landroid/view/View;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
