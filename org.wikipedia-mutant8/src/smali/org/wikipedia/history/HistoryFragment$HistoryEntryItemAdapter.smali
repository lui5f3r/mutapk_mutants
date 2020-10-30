.class final Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryEntryItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/views/DefaultViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x1

.field private static final VIEW_TYPE_ITEM:I = 0x2

.field private static final VIEW_TYPE_SEARCH_CARD:I


# instance fields
.field private historyEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 393
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$1;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    return-void
.end method


# virtual methods
.method clearList()V
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public hideHeader()V
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 467
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .line 402
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 387
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 1

    .line 441
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    if-eqz v0, :cond_0

    .line 442
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->bindItem()V

    goto :goto_0

    .line 443
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    if-eqz v0, :cond_1

    .line 444
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p1, p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->bindItem(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    goto :goto_0

    .line 446
    :cond_1
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;->bindItem(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 387
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 429
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0104

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 430
    new-instance p2, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;-><init>(Lorg/wikipedia/history/HistoryFragment;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 432
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c011e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 433
    new-instance p2, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;

    invoke-direct {p2, p1}, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 435
    :cond_1
    new-instance p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    new-instance v0, Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;-><init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/views/PageItemView;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 387
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 1

    .line 451
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 452
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    if-eqz v0, :cond_0

    .line 453
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PageItemView;

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$1000(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/HistoryFragment$ItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 387
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 2

    .line 458
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    if-eqz v0, :cond_0

    .line 459
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 461
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/List;

    .line 419
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
