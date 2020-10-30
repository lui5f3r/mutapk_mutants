.class final Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;
.super Ljava/lang/Object;
.source "ImagePreviewDialog.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImagePreviewDialog;->loadImageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $page:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lorg/wikipedia/views/ImagePreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    iput-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p6, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 108
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    sget v1, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/commons/FilePageView;

    const-string v1, "filePageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    sget v1, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    sget v1, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/commons/FilePageView;

    .line 111
    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    .line 112
    invoke-static {v2}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Map;

    .line 114
    iget-object v5, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v5, :cond_0

    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 115
    iget-object v4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    sget v6, Lorg/wikipedia/R$id;->dialogDetailContainer:I

    invoke-virtual {v4, v6}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v6, "dialogDetailContainer"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    .line 116
    iget-object v4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 117
    iget-object v4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v9, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 120
    iget-object v4, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v4}, Lorg/wikipedia/views/ImagePreviewDialog;->access$getAction$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v12

    move-object v4, v0

    .line 110
    invoke-virtual/range {v1 .. v12}, Lorg/wikipedia/commons/FilePageView;->setup(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void

    :cond_0
    const-string v0, "page"

    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v0, "imageTags"

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method
