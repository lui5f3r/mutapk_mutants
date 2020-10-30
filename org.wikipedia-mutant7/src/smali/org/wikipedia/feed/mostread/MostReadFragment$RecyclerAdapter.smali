.class Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;
.super Lorg/wikipedia/views/DefaultRecyclerAdapter;
.source "MostReadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/mostread/MostReadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultRecyclerAdapter<",
        "Lorg/wikipedia/feed/mostread/MostReadItemCard;",
        "Lorg/wikipedia/feed/view/ListCardItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/mostread/MostReadItemCard;",
            ">;",
            "Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lorg/wikipedia/views/DefaultRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 92
    iput-object p2, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;->callback:Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 86
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/feed/view/ListCardItemView;",
            ">;I)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->item(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/feed/mostread/MostReadItemCard;

    .line 104
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/view/ListCardItemView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/ListCardItemView;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 105
    invoke-virtual {p2}, Lorg/wikipedia/feed/mostread/MostReadItemCard;->pageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    const/16 v1, 0x16

    invoke-direct {v0, p2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)Lorg/wikipedia/feed/view/ListCardItemView;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;->callback:Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;

    .line 106
    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/view/ListCardItemView;->setCallback(Lorg/wikipedia/feed/view/ListCardItemView$Callback;)Lorg/wikipedia/feed/view/ListCardItemView;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

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

    .line 98
    new-instance p2, Lorg/wikipedia/views/DefaultViewHolder;

    new-instance v0, Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/view/ListCardItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
