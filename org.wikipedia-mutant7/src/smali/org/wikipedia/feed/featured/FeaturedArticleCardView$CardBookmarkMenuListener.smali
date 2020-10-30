.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;
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
    name = "CardBookmarkMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$400(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    iget-object v0, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    new-instance v1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener$1;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;)V

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;-><init>(Landroid/view/View;Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;)V

    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$CardBookmarkMenuListener;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    .line 205
    invoke-static {v0}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$200(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->show(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method
