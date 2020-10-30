.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0d5twKhHl7nG4z21Yo_X1jaDGKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0d5twKhHl7nG4z21Yo_X1jaDGKQ;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$0d5twKhHl7nG4z21Yo_X1jaDGKQ;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    check-cast p1, Lorg/wikipedia/search/PrefixSearchResponse;

    check-cast p2, Lorg/wikipedia/search/SearchResults;

    check-cast p3, Lorg/wikipedia/search/SearchResults;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$null$4$SearchResultsFragment(Lorg/wikipedia/search/PrefixSearchResponse;Lorg/wikipedia/search/SearchResults;Lorg/wikipedia/search/SearchResults;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
