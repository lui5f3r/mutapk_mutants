.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;
.super Ljava/lang/Object;
.source "FeaturedArticleCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/featured/FeaturedArticleCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardAddToListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$100(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$300(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardAddToListListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V

    :cond_0
    return-void
.end method
