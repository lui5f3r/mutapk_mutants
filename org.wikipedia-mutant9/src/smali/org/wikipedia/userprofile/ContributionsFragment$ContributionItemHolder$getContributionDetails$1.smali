.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contribution:Lorg/wikipedia/userprofile/Contribution;

.field final synthetic $itemView:Lorg/wikipedia/userprofile/ContributionsItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/Contribution;Lorg/wikipedia/userprofile/ContributionsItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    iput-object p2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->accept(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    const-string v1, "summary"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary.displayTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/Contribution;->setDisplayTitle(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary.apiTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/Contribution;->setApiTitle(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/userprofile/Contribution;->setImageUrl(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->setImageUrl(Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$1;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->setDescription(Ljava/lang/String;)V

    return-void
.end method
