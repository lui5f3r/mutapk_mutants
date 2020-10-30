.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsItemFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getArticleWithMissingDescription()V
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
        "Lkotlin/Pair<",
        "+",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        "+",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            "+",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 77
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 78
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 80
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 81
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v5

    const-string v4, "source.apiTitle"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getLang()Ljava/lang/String;

    move-result-object v6

    const-string v4, "source.lang"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v7

    const-string v4, "source.getPageTitle(Wiki\u2026e(parent().langFromCode))"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v1, 0x380

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v17, v15

    move v15, v1

    .line 80
    invoke-direct/range {v4 .. v16}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v17

    invoke-virtual {v3, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setSourceSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 90
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 91
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v4

    const-string v3, "target.apiTitle"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getLang()Ljava/lang/String;

    move-result-object v5

    const-string v3, "target.lang"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v6

    const-string v3, "target.getPageTitle(Wiki\u2026ode(parent().langToCode))"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v14, 0x380

    const/4 v2, 0x0

    move-object v3, v15

    move-object v0, v15

    move-object v15, v2

    .line 90
    invoke-direct/range {v3 .. v15}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setTargetSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    move-object/from16 v0, p0

    .line 99
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    return-void
.end method
