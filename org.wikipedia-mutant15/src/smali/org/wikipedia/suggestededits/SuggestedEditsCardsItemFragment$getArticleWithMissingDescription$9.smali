.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;
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
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->accept(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    iget-object v2, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const-string v3, "pageSummary"

    .line 199
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v4

    const-string v3, "pageSummary.apiTitle"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v5

    .line 201
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v6

    const-string v3, "pageSummary.getPageTitle\u2026e(parent().langFromCode))"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x380

    const/4 v1, 0x0

    move-object v3, v15

    move-object v0, v15

    move-object v15, v1

    .line 198
    invoke-direct/range {v3 .. v15}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setSourceSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    move-object/from16 v0, p0

    .line 207
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    return-void
.end method
