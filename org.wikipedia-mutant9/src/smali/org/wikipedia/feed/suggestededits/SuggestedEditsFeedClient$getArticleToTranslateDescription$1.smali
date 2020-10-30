.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getArticleToTranslateDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
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
.field final synthetic $callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

.field final synthetic $cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

.field final synthetic this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    iput-object p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 30
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

    .line 134
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 137
    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 138
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v4

    const-string v3, "source.apiTitle"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v5

    .line 140
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v6

    const-string v3, "source.getPageTitle(Wiki\u2026nguageCode(langFromCode))"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x380

    const/4 v1, 0x0

    move-object v3, v15

    move-object/from16 v16, v15

    move-object v15, v1

    .line 137
    invoke-direct/range {v3 .. v15}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 148
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "target.apiTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v4, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v4}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v19

    .line 150
    iget-object v4, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v4}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v4

    const-string v5, "target.getPageTitle(Wiki\u2026LanguageCode(langToCode))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v21

    .line 152
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v22

    .line 153
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v23

    .line 154
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x380

    const/16 v29, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    .line 147
    invoke-direct/range {v17 .. v29}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    iget-object v2, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    const-string v4, "WikiSite.forLanguageCode(langFromCode)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v5, v16

    invoke-static {v2, v3, v5, v1, v4}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$toSuggestedEditsCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    move-result-object v1

    .line 159
    iget-object v2, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;->updateCardContent(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    .line 160
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    .line 161
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_2
    return-void
.end method
