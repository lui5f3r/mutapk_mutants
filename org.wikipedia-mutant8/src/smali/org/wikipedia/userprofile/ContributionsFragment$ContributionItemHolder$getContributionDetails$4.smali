.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


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
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Ljava/lang/String;",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contribution:Lorg/wikipedia/userprofile/Contribution;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/Contribution;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Ljava/lang/String;)Lorg/wikipedia/userprofile/Contribution;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Ljava/lang/String;)Lorg/wikipedia/userprofile/Contribution;
    .locals 2

    .line 431
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 432
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "page.imageInfo()!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/wikipedia/userprofile/Contribution;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lorg/wikipedia/userprofile/Contribution;->setImageUrl(Ljava/lang/String;)V

    .line 438
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string p1, "qLabel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 439
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1, p2}, Lorg/wikipedia/userprofile/Contribution;->setDescription(Ljava/lang/String;)V

    .line 441
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$4;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    return-object p1
.end method
