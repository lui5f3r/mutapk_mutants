.class final Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;
.super Ljava/lang/Object;
.source "FilePageFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $isEditProtected:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $page:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lorg/wikipedia/commons/FilePageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p6, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$isEditProtected:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 135
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    sget v2, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {v1, v2}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/commons/FilePageView;

    const-string v2, "filePageView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    sget v3, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {v1, v3}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v3, "progressBar"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    sget v3, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {v1, v3}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/wikipedia/commons/FilePageView;

    .line 138
    iget-object v4, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    .line 139
    invoke-static {v4}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageSummaryForEdit$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v5

    .line 140
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$imageTags:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    check-cast v1, Ljava/util/Map;

    .line 141
    iget-object v7, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$page:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_1

    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 142
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    sget v8, Lorg/wikipedia/R$id;->container:I

    invoke-virtual {v6, v8}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const-string v8, "container"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    .line 143
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$thumbnailWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v9, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 144
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$thumbnailHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iget v10, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 145
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$isFromCommons:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v11, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 147
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;->$isEditProtected:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_0

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    const/16 v16, 0x0

    move-object v6, v1

    .line 137
    invoke-static/range {v3 .. v16}, Lorg/wikipedia/commons/FilePageView;->setup$default(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "page"

    .line 141
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string v1, "imageTags"

    .line 140
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
.end method
