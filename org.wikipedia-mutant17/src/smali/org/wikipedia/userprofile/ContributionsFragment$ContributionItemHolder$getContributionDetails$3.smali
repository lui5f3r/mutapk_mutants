.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->getContributionDetails(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/wikidata/Entities;",
        "Lio/reactivex/rxjava3/core/ObservableSource<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $contribution:Lorg/wikipedia/userprofile/Contribution;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/Contribution;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/wikidata/Entities;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/wikidata/Entities;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;->entities()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;->entities()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v2}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;->entities()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value()Ljava/lang/String;

    move-result-object v0

    const-string p1, "response.entities()[cont\u2026languageCode()]!!.value()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;->entities()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v2}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels()Ljava/util/Map;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;->entities()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getQNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->labels()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value()Ljava/lang/String;

    move-result-object v0

    const-string p1, "response.entities()[cont\u2026_LANGUAGE_CODE]!!.value()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$3;->apply(Lorg/wikipedia/dataclient/wikidata/Entities;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
