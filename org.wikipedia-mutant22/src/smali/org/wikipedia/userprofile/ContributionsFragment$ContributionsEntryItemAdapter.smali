.class public final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContributionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContributionsEntryItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 476
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    instance-of v0, p1, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 513
    check-cast p1, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->bindItem()V

    goto :goto_0

    .line 515
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    if-eqz v0, :cond_2

    .line 516
    check-cast p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->bindItem(Lorg/wikipedia/userprofile/Contribution;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.wikipedia.userprofile.Contribution"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_2
    check-cast p1, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;->bindItem(Ljava/lang/String;)V

    .line 522
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_3

    .line 524
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$fetchContributions(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    :cond_3
    return-void

    .line 519
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 476
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "*>;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "parent.context"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    .line 505
    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    new-instance v4, Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v2, v0, v2}, Lorg/wikipedia/userprofile/ContributionsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v3, v4}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;Lorg/wikipedia/userprofile/ContributionsItemView;)V

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c011e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 502
    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 498
    :cond_1
    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    new-instance v4, Lorg/wikipedia/userprofile/ContributionsHeaderView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v2, v0, v2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v3, v4}, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;Lorg/wikipedia/userprofile/ContributionsHeaderView;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 476
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 530
    instance-of v0, p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    if-eqz v0, :cond_0

    .line 531
    check-cast p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/userprofile/ContributionsItemView;

    new-instance v0, Lorg/wikipedia/userprofile/ContributionsFragment$ItemCallback;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/ContributionsFragment$ItemCallback;-><init>()V

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->setCallback(Lorg/wikipedia/userprofile/ContributionsItemView$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 476
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    instance-of v0, p1, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    if-eqz v0, :cond_0

    .line 537
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;

    invoke-virtual {v0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/userprofile/ContributionsItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/wikipedia/userprofile/ContributionsItemView;->setCallback(Lorg/wikipedia/userprofile/ContributionsItemView$Callback;)V

    .line 538
    invoke-virtual {v0}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->clearDisposables()V

    .line 540
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
