.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iput-object p2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    iget-object v1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$ruBLWurZsn0Cw2I4RTAxv0UY9eY;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$doTitlePrefixSearch$5$SearchResultsFragment(Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
