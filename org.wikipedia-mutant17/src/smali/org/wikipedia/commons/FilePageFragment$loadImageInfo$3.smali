.class final Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;
.super Ljava/lang/Object;
.source "FilePageFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lio/reactivex/rxjava3/core/ObservableSource<",
        "+",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $page:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lorg/wikipedia/commons/FilePageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 110
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.query()!!.pages()!![0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v2, "page"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "page.imageInfo()!!"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v4, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 113
    invoke-static {v4}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v6

    const-string v5, "pageTitle.prefixedText"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v5, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v5}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v7

    const-string v5, "pageTitle.wikiSite.languageCode()"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v5, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v5}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v8

    .line 116
    iget-object v5, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v5}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    .line 117
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 120
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v13

    .line 121
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getUser()Ljava/lang/String;

    move-result-object v14

    .line 122
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v16

    move-object v5, v15

    move-object v3, v15

    move-object/from16 v15, v16

    .line 112
    invoke-direct/range {v5 .. v15}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    invoke-static {v4, v3}, Lorg/wikipedia/commons/FilePageFragment;->access$setPageSummaryForEdit$p(Lorg/wikipedia/commons/FilePageFragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 124
    iget-object v3, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbHeight()I

    move-result v4

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 125
    iget-object v3, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbWidth()I

    move-result v1

    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 126
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId()I

    move-result v1

    iget-object v2, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v2}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageSummaryForEdit$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_1
    move-object v1, v3

    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
