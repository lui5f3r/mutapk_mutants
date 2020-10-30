.class Lorg/wikipedia/feed/FeedFragment$1;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/FeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/FeedFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/FeedFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Z)V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 170
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/FeedFragment;->emptyContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public insert(Lorg/wikipedia/feed/model/Card;I)V
    .locals 1

    .line 147
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 149
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object v0, p1, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/wikipedia/feed/model/Card;I)V
    .locals 1

    .line 156
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 158
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object v0, p1, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$1;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
