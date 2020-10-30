.class public interface abstract Lorg/wikipedia/feed/dataclient/FeedClient$Callback;
.super Ljava/lang/Object;
.source "FeedClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/dataclient/FeedClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract success(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/feed/model/Card;",
            ">;)V"
        }
    .end annotation
.end method
