.class public interface abstract Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;
.super Ljava/lang/Object;
.source "FeedCoordinatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/FeedCoordinatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedUpdateListener"
.end annotation


# virtual methods
.method public abstract finished(Z)V
.end method

.method public abstract insert(Lorg/wikipedia/feed/model/Card;I)V
.end method

.method public abstract remove(Lorg/wikipedia/feed/model/Card;I)V
.end method
