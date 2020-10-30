.class public interface abstract Lorg/wikipedia/feed/view/FeedAdapter$Callback;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lorg/wikipedia/feed/view/ListCardItemView$Callback;
.implements Lorg/wikipedia/feed/view/CardHeaderView$Callback;
.implements Lorg/wikipedia/feed/image/FeaturedImageCardView$Callback;
.implements Lorg/wikipedia/feed/searchbar/SearchCardView$Callback;
.implements Lorg/wikipedia/feed/news/NewsListCardView$Callback;
.implements Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;
.implements Lorg/wikipedia/feed/random/RandomCardView$Callback;
.implements Lorg/wikipedia/feed/view/ListCardView$Callback;
.implements Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$Callback;
.implements Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onRequestMore()V
.end method

.method public abstract onRetryFromOffline()V
.end method

.method public abstract onShowCard(Lorg/wikipedia/feed/model/Card;)V
.end method
