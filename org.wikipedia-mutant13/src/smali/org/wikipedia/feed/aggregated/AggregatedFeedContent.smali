.class public Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;
.super Ljava/lang/Object;
.source "AggregatedFeedContent.java"


# instance fields
.field private image:Lorg/wikipedia/feed/image/FeaturedImage;

.field private mostRead:Lorg/wikipedia/feed/mostread/MostReadArticles;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mostread"
    .end annotation
.end field

.field private news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private onthisday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field private tfa:Lorg/wikipedia/dataclient/page/PageSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method mostRead()Lorg/wikipedia/feed/mostread/MostReadArticles;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->mostRead:Lorg/wikipedia/feed/mostread/MostReadArticles;

    return-object v0
.end method

.method news()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/news/NewsItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->news:Ljava/util/List;

    return-object v0
.end method

.method public onthisday()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday:Ljava/util/List;

    return-object v0
.end method

.method potd()Lorg/wikipedia/feed/image/FeaturedImage;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->image:Lorg/wikipedia/feed/image/FeaturedImage;

    return-object v0
.end method

.method public tfa()Lorg/wikipedia/dataclient/page/PageSummary;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa:Lorg/wikipedia/dataclient/page/PageSummary;

    return-object v0
.end method
