.class public interface abstract Lorg/wikipedia/feed/dataclient/FeedClient;
.super Ljava/lang/Object;
.source "FeedClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/dataclient/FeedClient$Callback;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
.end method
