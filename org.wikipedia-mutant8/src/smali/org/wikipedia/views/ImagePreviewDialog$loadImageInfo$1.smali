.class final Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lorg/wikipedia/views/ImagePreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    iput-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    iget-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {p1}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v0}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v1}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.query()!!.pages()!![0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->isImageShared()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 91
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
