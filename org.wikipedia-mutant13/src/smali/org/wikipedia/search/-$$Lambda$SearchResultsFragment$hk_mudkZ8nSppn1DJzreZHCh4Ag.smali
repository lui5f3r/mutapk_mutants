.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hk_mudkZ8nSppn1DJzreZHCh4Ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hk_mudkZ8nSppn1DJzreZHCh4Ag;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$hk_mudkZ8nSppn1DJzreZHCh4Ag;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$null$2$SearchResultsFragment()Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    return-object v0
.end method
