.class public abstract Lorg/wikipedia/feed/dataclient/DummyClient;
.super Ljava/lang/Object;
.source "DummyClient.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public abstract getNewCard(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/model/Card;
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p2}, Lorg/wikipedia/feed/dataclient/DummyClient;->getNewCard(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    .line 19
    instance-of p2, p1, Lorg/wikipedia/feed/searchbar/SearchCard;

    if-eqz p2, :cond_0

    .line 20
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->success(Ljava/util/List;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :goto_0
    return-void
.end method
