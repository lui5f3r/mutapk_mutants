.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->$fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 17

    move-object/from16 v0, p0

    .line 153
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

    .line 154
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 155
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "page.imageInfo()!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getCommonsUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "imageInfo.commonsUrl"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getCommonsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;->titleForUri(Landroid/net/Uri;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    const-string v2, "WikiSite(Service.COMMONS\u2026se(imageInfo.commonsUrl))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    iget-object v2, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const-string v4, "title"

    .line 159
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v6

    .line 161
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 162
    sget-object v4, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 165
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v11

    .line 166
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v12

    move-object v7, v13

    .line 161
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 168
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->$fileCaption:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 170
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 172
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v12

    .line 173
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getUser()Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v16

    move-object v4, v15

    move-object v5, v1

    move-object v13, v14

    move-object/from16 v14, v16

    .line 158
    invoke-direct/range {v4 .. v14}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    invoke-virtual {v2, v15}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setSourceSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 177
    iget-object v2, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 179
    iget-object v6, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 180
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    .line 181
    sget-object v10, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 184
    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v14

    .line 185
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v15

    move-object v10, v7

    .line 180
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e9

    const/16 v16, 0x0

    .line 177
    invoke-static/range {v4 .. v16}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->copy$default(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;ILjava/lang/Object;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setTargetSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 189
    :cond_2
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    return-void
.end method
