.class public final synthetic Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$bfFncbkCOgoSPRb2MKxy8j_0bsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$bfFncbkCOgoSPRb2MKxy8j_0bsQ;->f$0:[Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$bfFncbkCOgoSPRb2MKxy8j_0bsQ;->f$0:[Ljava/lang/Exception;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->lambda$savePageFor$6([Ljava/lang/Exception;Ljava/lang/Throwable;)V

    return-void
.end method
