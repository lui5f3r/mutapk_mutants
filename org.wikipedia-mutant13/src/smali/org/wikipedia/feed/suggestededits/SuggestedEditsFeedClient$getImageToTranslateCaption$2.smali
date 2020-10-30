.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToTranslateCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
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
.field final synthetic $callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

.field final synthetic $cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

.field final synthetic $fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    iput-object p4, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 22

    move-object/from16 v0, p0

    .line 236
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 237
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v2

    const-string v3, "page.title()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "page.imageInfo()!!"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 243
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v5

    .line 244
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 245
    sget-object v3, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 248
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v10

    .line 249
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v11

    move-object v6, v12

    .line 244
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 251
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 253
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 255
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v11

    .line 256
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getUser()Ljava/lang/String;

    move-result-object v13

    .line 257
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v14

    move-object v3, v15

    move-object v4, v2

    move-object v12, v13

    move-object v13, v14

    .line 241
    invoke-direct/range {v3 .. v13}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 262
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 263
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    .line 264
    sget-object v3, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    .line 265
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 267
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v20

    .line 268
    iget-object v1, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v21

    move-object/from16 v16, v7

    .line 263
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v1, 0x3e9

    const/16 v16, 0x0

    move-object v4, v15

    move-object v2, v15

    move v15, v1

    .line 260
    invoke-static/range {v4 .. v16}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->copy$default(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILjava/lang/Object;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    .line 272
    iget-object v3, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    invoke-static {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    const-string v5, "WikiSite.forLanguageCode(langToCode)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v1, v5}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$toSuggestedEditsCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    move-result-object v1

    .line 273
    iget-object v2, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$callback:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;->updateCardContent(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    .line 274
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v2, :cond_1

    .line 275
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_1
    return-void
.end method
