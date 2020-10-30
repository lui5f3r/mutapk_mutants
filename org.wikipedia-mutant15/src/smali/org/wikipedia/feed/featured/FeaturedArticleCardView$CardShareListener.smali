.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;
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
    name = "CardShareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$1100(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$1200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardShareListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onSharePage(Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method
