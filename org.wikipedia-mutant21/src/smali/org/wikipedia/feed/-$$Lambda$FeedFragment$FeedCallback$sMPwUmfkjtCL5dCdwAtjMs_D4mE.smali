.class public final synthetic Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$sMPwUmfkjtCL5dCdwAtjMs_D4mE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/FeedFragment$FeedCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/FeedFragment$FeedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$sMPwUmfkjtCL5dCdwAtjMs_D4mE;->f$0:Lorg/wikipedia/feed/FeedFragment$FeedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$sMPwUmfkjtCL5dCdwAtjMs_D4mE;->f$0:Lorg/wikipedia/feed/FeedFragment$FeedCallback;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedFragment$FeedCallback;->lambda$onRequestMore$0$FeedFragment$FeedCallback()V

    return-void
.end method
