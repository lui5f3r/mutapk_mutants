.class public final synthetic Lorg/wikipedia/feed/becauseyouread/-$$Lambda$SsPYEY3rPyeqOKMvTmTh9Wjj-WY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$SsPYEY3rPyeqOKMvTmTh9Wjj-WY;->f$0:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/-$$Lambda$SsPYEY3rPyeqOKMvTmTh9Wjj-WY;->f$0:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method
