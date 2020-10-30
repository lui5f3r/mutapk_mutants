.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->getPageViews(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contribution:Lorg/wikipedia/userprofile/Contribution;

.field final synthetic $view:Lorg/wikipedia/userprofile/ContributionsItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/ContributionsItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    iput-object p2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->$view:Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 7

    .line 462
    instance-of v0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    const-string v5, "page"

    .line 465
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->getPageViewsMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 466
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v0

    :goto_1
    add-long/2addr v2, v5

    goto :goto_0

    .line 469
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1, v2, v3}, Lorg/wikipedia/userprofile/Contribution;->setPageViews(J)V

    .line 470
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->$view:Lorg/wikipedia/userprofile/ContributionsItemView;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getPageViews$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getPageViews()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->setPageViewCountText(J)V

    :cond_3
    return-void
.end method
