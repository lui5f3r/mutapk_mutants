.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iput-wide p2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iget-wide v1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$KsiyhcFeGg17qJnw0Vvkfzrw5gg;->f$1:J

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$doFullTextSearch$14$SearchResultsFragment(JLjava/lang/Throwable;)V

    return-void
.end method
