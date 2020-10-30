.class public final synthetic Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$TECsyYYNxnKbfAX7Wy0WmOP-4c8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/model/UtcDate;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/model/UtcDate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$TECsyYYNxnKbfAX7Wy0WmOP-4c8;->f$0:Lorg/wikipedia/feed/model/UtcDate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$TECsyYYNxnKbfAX7Wy0WmOP-4c8;->f$0:Lorg/wikipedia/feed/model/UtcDate;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->lambda$requestAggregated$0(Lorg/wikipedia/feed/model/UtcDate;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
