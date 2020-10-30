.class final Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReadingListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/views/DefaultViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x0

.field private static final VIEW_TYPE_PAGE_ITEM:I = 0x1


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 494
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 1

    .line 524
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    if-eqz v0, :cond_0

    .line 525
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->bindItem(Lorg/wikipedia/readinglist/database/ReadingList;)V

    goto :goto_0

    .line 527
    :cond_0
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;->bindItem(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 494
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 515
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemView;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;)V

    .line 516
    new-instance p2, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    return-object p2

    .line 518
    :cond_0
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    new-instance v0, Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/views/PageItemView;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 494
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 1

    .line 532
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 533
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    if-eqz v0, :cond_0

    .line 534
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$900(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    goto :goto_0

    .line 536
    :cond_0
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PageItemView;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1000(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 494
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 2

    .line 541
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 542
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    goto :goto_0

    .line 544
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 546
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
