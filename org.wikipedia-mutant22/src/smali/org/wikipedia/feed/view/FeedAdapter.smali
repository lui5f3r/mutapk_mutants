.class public Lorg/wikipedia/feed/view/FeedAdapter;
.super Lorg/wikipedia/views/DefaultRecyclerAdapter;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lorg/wikipedia/feed/view/FeedCardView<",
        "*>;>",
        "Lorg/wikipedia/views/DefaultRecyclerAdapter<",
        "Lorg/wikipedia/feed/model/Card;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field private coordinator:Lorg/wikipedia/feed/FeedCoordinatorBase;

.field private feedView:Lorg/wikipedia/feed/view/FeedView;

.field private lastCardReloadTrigger:Lorg/wikipedia/feed/model/Card;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/views/DefaultRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/wikipedia/feed/view/FeedAdapter;->lastCardReloadTrigger:Lorg/wikipedia/feed/model/Card;

    .line 48
    iput-object p1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->coordinator:Lorg/wikipedia/feed/FeedCoordinatorBase;

    .line 49
    iput-object p2, p0, Lorg/wikipedia/feed/view/FeedAdapter;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method private adjustDayHeaderView(Lorg/wikipedia/feed/dayheader/DayHeaderCardView;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    return-void
.end method

.method private adjustSearchView(Lorg/wikipedia/feed/searchbar/SearchCardView;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 126
    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 128
    iget-object v2, p0, Lorg/wikipedia/feed/view/FeedAdapter;->feedView:Lorg/wikipedia/feed/view/FeedView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/wikipedia/views/AutoFitRecyclerView;->getColumns()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 130
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 132
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private newView(Landroid/content/Context;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation

    .line 105
    invoke-static {p2}, Lorg/wikipedia/feed/model/CardType;->of(I)Lorg/wikipedia/feed/model/CardType;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/wikipedia/feed/model/CardType;->newView(Landroid/content/Context;)Lorg/wikipedia/feed/view/FeedCardView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/model/Card;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/Card;->type()Lorg/wikipedia/feed/model/CardType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 111
    check-cast p1, Lorg/wikipedia/feed/view/FeedView;

    iput-object p1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->feedView:Lorg/wikipedia/feed/view/FeedView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/view/FeedAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/model/Card;

    .line 59
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 61
    iget-object v1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->coordinator:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-virtual {v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->finished()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    instance-of v1, v0, Lorg/wikipedia/feed/offline/OfflineCard;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/wikipedia/feed/accessibility/AccessibilityCard;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->lastCardReloadTrigger:Lorg/wikipedia/feed/model/Card;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    if-eqz v1, :cond_0

    .line 67
    invoke-interface {v1}, Lorg/wikipedia/feed/view/FeedAdapter$Callback;->onRequestMore()V

    .line 68
    iput-object v0, p0, Lorg/wikipedia/feed/view/FeedAdapter;->lastCardReloadTrigger:Lorg/wikipedia/feed/model/Card;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->lastCardReloadTrigger:Lorg/wikipedia/feed/model/Card;

    .line 74
    :goto_0
    move-object v1, p1

    check-cast v1, Lorg/wikipedia/feed/view/FeedCardView;

    invoke-interface {v1, v0}, Lorg/wikipedia/feed/view/FeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 76
    instance-of v0, p1, Lorg/wikipedia/feed/offline/OfflineCardView;

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 77
    check-cast p1, Lorg/wikipedia/feed/offline/OfflineCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/offline/OfflineCardView;->setTopPadding()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/view/FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

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
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/view/FeedAdapter;->newView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->feedView:Lorg/wikipedia/feed/view/FeedView;

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/FeedAdapter;->onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 83
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/feed/searchbar/SearchCardView;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/searchbar/SearchCardView;

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/view/FeedAdapter;->adjustSearchView(Lorg/wikipedia/feed/searchbar/SearchCardView;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/view/FeedAdapter;->adjustDayHeaderView(Lorg/wikipedia/feed/dayheader/DayHeaderCardView;)V

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/FeedCardView;

    iget-object v1, p0, Lorg/wikipedia/feed/view/FeedAdapter;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    invoke-interface {v0, v1}, Lorg/wikipedia/feed/view/FeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 89
    iget-object v0, p0, Lorg/wikipedia/feed/view/FeedAdapter;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/view/FeedCardView;

    invoke-interface {p1}, Lorg/wikipedia/feed/view/FeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/feed/view/FeedAdapter$Callback;->onShowCard(Lorg/wikipedia/feed/model/Card;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/FeedAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/FeedCardView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/wikipedia/feed/view/FeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 96
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
