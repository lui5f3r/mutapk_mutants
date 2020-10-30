.class public Lorg/wikipedia/readinglist/ReadingListsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 26
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090310

    const-string v2, "field \'contentContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->contentContainer:Landroid/view/ViewGroup;

    .line 27
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090327

    const-string v2, "field \'readingListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090133

    const-string v2, "field \'emptyContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090135

    const-string v2, "field \'emptyTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyTitle:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090134

    const-string v2, "field \'emptyMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyMessage:Landroid/widget/TextView;

    .line 31
    const-class v0, Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f090370

    const-string v2, "field \'searchEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 32
    const-class v0, Lorg/wikipedia/views/MessageCardView;

    const v1, 0x7f0902bb

    const-string v2, "field \'onboardingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    .line 33
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090328

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p1, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 43
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->contentContainer:Landroid/view/ViewGroup;

    .line 44
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyContainer:Landroid/view/ViewGroup;

    .line 46
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->emptyMessage:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 49
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    .line 50
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
