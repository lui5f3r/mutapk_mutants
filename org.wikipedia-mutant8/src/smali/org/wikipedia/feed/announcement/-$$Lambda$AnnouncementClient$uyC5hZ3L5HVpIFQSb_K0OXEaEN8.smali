.class public final synthetic Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$uyC5hZ3L5HVpIFQSb_K0OXEaEN8;
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

    iput-object p1, p0, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$uyC5hZ3L5HVpIFQSb_K0OXEaEN8;->f$0:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/announcement/-$$Lambda$AnnouncementClient$uyC5hZ3L5HVpIFQSb_K0OXEaEN8;->f$0:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementClient;->lambda$request$1(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/lang/Throwable;)V

    return-void
.end method
