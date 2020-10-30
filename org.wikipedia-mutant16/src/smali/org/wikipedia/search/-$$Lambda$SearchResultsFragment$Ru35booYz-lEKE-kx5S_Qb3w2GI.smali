.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iput-object p2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iget-object v1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$Ru35booYz-lEKE-kx5S_Qb3w2GI;->f$2:J

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$doTitlePrefixSearch$7$SearchResultsFragment(Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method
