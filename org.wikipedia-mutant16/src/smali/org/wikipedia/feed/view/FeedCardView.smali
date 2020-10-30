.class public interface abstract Lorg/wikipedia/feed/view/FeedCardView;
.super Ljava/lang/Object;
.source "FeedCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/wikipedia/feed/model/Card;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCard()Lorg/wikipedia/feed/model/Card;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
.end method

.method public abstract setCard(Lorg/wikipedia/feed/model/Card;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
