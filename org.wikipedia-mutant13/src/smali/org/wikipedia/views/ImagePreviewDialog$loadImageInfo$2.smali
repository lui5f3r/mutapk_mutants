.class final Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;
.super Ljava/lang/Object;
.source "ImagePreviewDialog.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImagePreviewDialog;->loadImageInfo()V
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

.field final synthetic this$0:Lorg/wikipedia/views/ImagePreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    iput-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
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

    .line 95
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "response.query()!!.pages()!![0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "page"

    if-eqz p1, :cond_3

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "page.imageInfo()!!"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v2}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->setTimestamp(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v2}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->setUser(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v2}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->setMetadata(Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 101
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbWidth()I

    move-result v3

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 102
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbHeight()I

    move-result p1

    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId()I

    move-result p1

    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v0}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
