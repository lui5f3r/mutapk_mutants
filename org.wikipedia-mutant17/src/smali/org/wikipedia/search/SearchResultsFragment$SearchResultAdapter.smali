.class final Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x0

.field private static final VIEW_TYPE_NO_RESULTS:I = 0x1


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Lorg/wikipedia/search/SearchResultsFragment$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;-><init>(Lorg/wikipedia/search/SearchResultsFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$300(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 513
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {p1}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 506
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 534
    instance-of v0, p1, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;

    if-eqz v0, :cond_0

    .line 535
    check-cast p1, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;

    invoke-virtual {p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->bindItem(I)V

    goto :goto_0

    .line 536
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

    if-eqz v0, :cond_1

    .line 537
    check-cast p1, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

    invoke-virtual {p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->bindItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 506
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 524
    new-instance p2, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;

    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c008a

    .line 525
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V

    return-object p2

    .line 527
    :cond_0
    new-instance p2, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultAdapter;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0088

    .line 528
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V

    return-object p2
.end method
