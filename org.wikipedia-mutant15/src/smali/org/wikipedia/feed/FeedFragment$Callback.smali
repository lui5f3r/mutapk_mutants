.class public interface abstract Lorg/wikipedia/feed/FeedFragment$Callback;
.super Ljava/lang/Object;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFeaturedImageSelected(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
.end method

.method public abstract onFeedAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V
.end method

.method public abstract onFeedDownloadImage(Lorg/wikipedia/feed/image/FeaturedImage;)V
.end method

.method public abstract onFeedMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onFeedNewsItemSelected(Lorg/wikipedia/feed/news/NewsItemCard;Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;)V
.end method

.method public abstract onFeedRemovePageFromList(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onFeedSearchRequested(Landroid/view/View;)V
.end method

.method public abstract onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onFeedSelectPageFromExistingTab(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onFeedShareImage(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
.end method

.method public abstract onFeedSharePage(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onFeedVoiceSearchRequested()V
.end method

.method public abstract onLoginRequested()V
.end method

.method public abstract updateToolbarElevation(Z)V
.end method
