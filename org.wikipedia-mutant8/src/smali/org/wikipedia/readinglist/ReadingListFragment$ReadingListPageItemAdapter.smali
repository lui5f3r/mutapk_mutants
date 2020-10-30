.class final Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReadingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingListPageItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1

.field private static final TYPE_PAGE_ITEM:I = 0x2


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 671
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method private getHeaderCount()I
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 693
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->getHeaderCount()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 682
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 684
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->getHeaderCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 710
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    if-eqz v0, :cond_0

    .line 712
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->getHeaderCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->bindItem(Lorg/wikipedia/readinglist/database/ReadingList;)V

    goto :goto_0

    .line 713
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    if-eqz v0, :cond_1

    .line 714
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->getHeaderCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->bindItem(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 699
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemView;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;)V

    .line 700
    new-instance p2, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 702
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListHeaderHolder;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1800(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListHeaderHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Landroid/view/View;)V

    return-object p1

    .line 704
    :cond_1
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    new-instance v0, Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/views/PageItemView;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 720
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 721
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    if-eqz v0, :cond_0

    .line 722
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1900(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    goto :goto_0

    .line 723
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    if-eqz v0, :cond_1

    .line 724
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PageItemView;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2000(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 729
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 730
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    goto :goto_0

    .line 731
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    if-eqz v0, :cond_1

    .line 732
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 734
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
