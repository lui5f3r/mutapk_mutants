.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToAddTags(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
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

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    iput-object p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    const-string v2, "WikiSite.forLanguageCode(langFromCode)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$toSuggestedEditsCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;->updateCardContent(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_2
    return-void
.end method
