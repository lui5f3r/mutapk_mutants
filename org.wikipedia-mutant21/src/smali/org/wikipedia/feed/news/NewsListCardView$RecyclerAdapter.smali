.class Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;
.super Lorg/wikipedia/feed/view/HorizontalScrollingListCardView$RecyclerAdapter;
.source "NewsListCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/news/NewsListCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/HorizontalScrollingListCardView$RecyclerAdapter<",
        "Lorg/wikipedia/feed/news/NewsItemCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/news/NewsListCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/news/NewsListCardView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItemCard;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/news/NewsListCardView;

    .line 45
    invoke-direct {p0, p2}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardView$RecyclerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected callback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/news/NewsListCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/news/NewsListCardView;->access$000(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$NewsListCardView$RecyclerAdapter(Lorg/wikipedia/feed/news/NewsItemCard;Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/news/NewsListCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/news/NewsListCardView;->access$100(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/news/NewsListCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/news/NewsListCardView;->access$200(Lorg/wikipedia/feed/news/NewsListCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    check-cast p2, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    invoke-interface {v0, p1, p2}, Lorg/wikipedia/feed/news/NewsListCardView$Callback;->onNewsItemSelected(Lorg/wikipedia/feed/news/NewsItemCard;Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;",
            ">;I)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->item(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/feed/news/NewsItemCard;

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    invoke-virtual {p2}, Lorg/wikipedia/feed/news/NewsItemCard;->text()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    invoke-virtual {p2}, Lorg/wikipedia/feed/news/NewsItemCard;->image()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->setImage(Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    new-instance v0, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;-><init>(Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;Lorg/wikipedia/feed/news/NewsItemCard;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
