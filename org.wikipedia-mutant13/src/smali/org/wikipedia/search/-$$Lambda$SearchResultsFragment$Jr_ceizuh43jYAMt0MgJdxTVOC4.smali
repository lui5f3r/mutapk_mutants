.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Jr_ceizuh43jYAMt0MgJdxTVOC4;->f$1:Ljava/lang/String;

    check-cast p1, Lorg/wikipedia/search/PrefixSearchResponse;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$null$15(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/search/PrefixSearchResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
