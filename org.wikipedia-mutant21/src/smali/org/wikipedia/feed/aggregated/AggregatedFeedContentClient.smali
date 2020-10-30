.class public Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;
.super Ljava/lang/Object;
.source "AggregatedFeedContentClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;,
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$FeaturedImage;,
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$TrendingArticles;,
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$FeaturedArticle;,
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$InTheNews;,
        Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$OnThisDayFeed;
    }
.end annotation


# instance fields
.field private aggregatedResponseAge:I

.field private aggregatedResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;",
            ">;"
        }
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponses:Ljava/util/Map;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponseAge:I

    .line 38
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponseAge:I

    return p0
.end method

.method static synthetic access$002(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;I)I
    .locals 0

    .line 35
    iput p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponseAge:I

    return p1
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponses:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->aggregatedResponseAge:I

    return-void
.end method
