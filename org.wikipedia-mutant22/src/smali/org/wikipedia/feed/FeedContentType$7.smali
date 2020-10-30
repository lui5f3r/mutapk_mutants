.class final enum Lorg/wikipedia/feed/FeedContentType$7;
.super Lorg/wikipedia/feed/FeedContentType;
.source "FeedContentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/FeedContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 77
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/feed/FeedContentType;-><init>(Ljava/lang/String;IIIIZLorg/wikipedia/feed/FeedContentType$1;)V

    return-void
.end method


# virtual methods
.method public newClient(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;I)Lorg/wikipedia/feed/dataclient/FeedClient;
    .locals 0

    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedContentType;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$FeaturedImage;

    invoke-direct {p2, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$FeaturedImage;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
