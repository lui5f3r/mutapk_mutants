.class public Lorg/wikipedia/readinglist/ReadingListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 27
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090329

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 28
    const-class v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f09032a

    const-string v2, "field \'toolBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 29
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09030f

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 30
    const-class v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    const v1, 0x7f090313

    const-string v2, "field \'headerImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->headerImageView:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090311

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090312

    const-string v2, "field \'emptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->emptyView:Landroid/widget/TextView;

    .line 33
    const-class v0, Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f090370

    const-string v2, "field \'searchEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 34
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090328

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 44
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 45
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 46
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 47
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerImageView:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->emptyView:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 51
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
