.class Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;
.super Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;
.source "BecauseYouReadCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/ListCardRecyclerAdapter<",
        "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    .line 68
    invoke-direct {p0, p2}, Lorg/wikipedia/feed/view/ListCardRecyclerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected callback()Lorg/wikipedia/feed/view/ListCardItemView$Callback;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;->access$200(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 66
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$RecyclerAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

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

    .line 77
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->item(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;

    .line 78
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/view/ListCardItemView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/ListCardItemView;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 79
    invoke-virtual {p2}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->pageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    const/16 v1, 0xd

    invoke-direct {v0, p2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)Lorg/wikipedia/feed/view/ListCardItemView;

    return-void
.end method
