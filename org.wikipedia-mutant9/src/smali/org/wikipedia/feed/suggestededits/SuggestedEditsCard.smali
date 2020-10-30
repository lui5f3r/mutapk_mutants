.class public final Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "SuggestedEditsCard.kt"


# instance fields
.field private final action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private final age:I

.field private final page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field private final sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private final targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;I)V
    .locals 1

    const-string v0, "wiki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iput-object p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iput-object p4, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iput-object p5, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    iput p6, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->age:I

    return-void
.end method


# virtual methods
.method public final getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-object v0
.end method

.method public final getAge()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->age:I

    return v0
.end method

.method public final getPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object v0
.end method

.method public final getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object v0
.end method

.method public final getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object v0
.end method

.method public final logImpression()V
    .locals 2

    .line 40
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get(Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->impression(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method

.method public subtitle()Ljava/lang/String;
    .locals 2

    .line 36
    iget v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->age:I

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateUtil.getFeedCardDateString(age)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wikiSite().languageCode()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const v1, 0x7f1003c7

    .line 31
    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L10nUtil.getStringForArt\u2026ed_edits_feed_card_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 27
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->SUGGESTED_EDITS:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
