.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;
.super Ljava/lang/Object;
.source "FeaturedArticleCardView.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/featured/FeaturedArticleCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBusConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCardView$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 222
    instance-of v0, p1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    check-cast p1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    invoke-virtual {p1}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->getPages()[Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 227
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v3}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    invoke-virtual {v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->articleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView$EventBusConsumer;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {v2}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    invoke-static {v2, v3}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->access$1300(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
