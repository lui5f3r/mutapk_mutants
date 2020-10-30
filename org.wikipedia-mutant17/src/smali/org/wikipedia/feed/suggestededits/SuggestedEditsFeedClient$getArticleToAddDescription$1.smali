.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getArticleToAddDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
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
.field final synthetic $callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

.field final synthetic $cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

.field final synthetic this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    iput-object p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->accept(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 14

    .line 99
    new-instance v13, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const-string v0, "pageSummary"

    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v1

    const-string v0, "pageSummary.apiTitle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    const-string v0, "pageSummary.getPageTitle\u2026nguageCode(langFromCode))"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtractHtml()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x380

    const/4 v12, 0x0

    move-object v0, v13

    .line 99
    invoke-direct/range {v0 .. v12}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-string v1, "WikiSite.forLanguageCode(langFromCode)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v13, v1, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$toSuggestedEditsCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;->updateCardContent(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_1
    return-void
.end method
