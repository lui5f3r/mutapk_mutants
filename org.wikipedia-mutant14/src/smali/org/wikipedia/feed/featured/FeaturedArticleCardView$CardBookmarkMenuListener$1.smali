.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;
.super Ljava/lang/Object;
.source "FeaturedArticleCardView.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddRequest(Z)V
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$500(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$600(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v1, v1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->historyEntry(I)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V

    :cond_0
    return-void
.end method

.method public onDeleted(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object p1, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$900(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object p1, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object p1, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$1000(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onRemovePageFromList(Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$700(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$800(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v1

    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;->this$1:Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;

    iget-object p1, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->historyEntry(I)Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method public onShare()V
    .locals 0

    return-void
.end method
