.class public final synthetic Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$Eh1oSYJAW_16kR01cDfcMhoRNfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$Eh1oSYJAW_16kR01cDfcMhoRNfE;->f$0:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$Eh1oSYJAW_16kR01cDfcMhoRNfE;->f$0:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->lambda$requestAggregated$2$AggregatedFeedContentClient$BaseClient(Ljava/lang/Throwable;)V

    return-void
.end method
