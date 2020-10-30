.class public abstract Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;
.super Lorg/wikipedia/views/DefaultRecyclerAdapter;
.source "ListCardRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/wikipedia/views/DefaultRecyclerAdapter<",
        "TT;",
        "Lorg/wikipedia/feed/view/ListCardItemView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/wikipedia/views/DefaultRecyclerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract callback()Lorg/wikipedia/feed/view/ListCardItemView$Callback;
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/feed/view/ListCardItemView;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p2, Lorg/wikipedia/views/DefaultViewHolder;

    new-instance v0, Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/view/ListCardItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 13
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/feed/view/ListCardItemView;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 28
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;->callback()Lorg/wikipedia/feed/view/ListCardItemView$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setCallback(Lorg/wikipedia/feed/view/ListCardItemView$Callback;)Lorg/wikipedia/feed/view/ListCardItemView;

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 13
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/feed/view/ListCardItemView;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/ListCardItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ListCardItemView;->setCallback(Lorg/wikipedia/feed/view/ListCardItemView$Callback;)Lorg/wikipedia/feed/view/ListCardItemView;

    .line 33
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
