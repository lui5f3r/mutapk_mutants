.class public final Lorg/wikipedia/commons/FilePageFragment;
.super Landroidx/fragment/app/Fragment;
.source "FilePageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/commons/FilePageFragment$Companion;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_ADD_IMAGE_CAPTION:I = 0x1

.field public static final ACTIVITY_REQUEST_ADD_IMAGE_TAGS:I = 0x2

.field private static final ARG_PAGE_TITLE:Ljava/lang/String; = "pageTitle"

.field public static final Companion:Lorg/wikipedia/commons/FilePageFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/commons/FilePageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/commons/FilePageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/commons/FilePageFragment;->Companion:Lorg/wikipedia/commons/FilePageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getPageSummaryForEdit$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pageSummaryForEdit"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pageTitle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$loadImageInfo(Lorg/wikipedia/commons/FilePageFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V

    return-void
.end method

.method public static final synthetic access$setPageSummaryForEdit$p(Lorg/wikipedia/commons/FilePageFragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-void
.end method

.method public static final synthetic access$setPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    return-void
.end method

.method public static final synthetic access$showError(Lorg/wikipedia/commons/FilePageFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/wikipedia/commons/FilePageFragment;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final loadImageInfo()V
    .locals 13

    .line 79
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 82
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 83
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 84
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    sget v7, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v7}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/wikipedia/views/WikiErrorView;

    const-string v9, "errorView"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    sget v7, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {p0, v7}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/wikipedia/commons/FilePageView;

    const-string v10, "filePageView"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    sget v7, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v7}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    const-string v9, "progressBar"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v9, p0, Lorg/wikipedia/commons/FilePageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    iget-object v7, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    const-string v10, "pageTitle"

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v7

    const-string v11, "pageTitle.prefixedText"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->getImageCaptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 91
    new-instance v7, Lorg/wikipedia/dataclient/WikiSite;

    const-string v11, "https://commons.wikimedia.org/"

    invoke-direct {v7, v11}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v7

    iget-object v11, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v7, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;

    invoke-direct {v7, p0}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;-><init>(Lorg/wikipedia/commons/FilePageFragment;)V

    .line 90
    invoke-static {v1, v0, v7}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 97
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 98
    new-instance v1, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$2;

    invoke-direct {v1, p0, v6}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$2;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 109
    new-instance v1, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;

    invoke-direct {v1, p0, v3, v5, v4}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$3;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 128
    new-instance v1, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$4;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$4;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 132
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 133
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v10

    .line 134
    new-instance v11, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;

    move-object v0, v11

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$5;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v10, v11}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 150
    new-instance v1, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$6;

    invoke-direct {v1, v8}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$6;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 152
    new-instance v2, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$7;

    invoke-direct {v2, p0}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$7;-><init>(Lorg/wikipedia/commons/FilePageFragment;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 90
    invoke-virtual {v9, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    .line 91
    :cond_0
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final showError(Ljava/lang/Throwable;)V
    .locals 3

    .line 72
    sget v0, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    sget v0, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/commons/FilePageView;

    const-string v2, "filePageView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "errorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/commons/FilePageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string p2, "requireActivity()"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p3, :cond_1

    .line 66
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    :goto_0
    move-object v2, p2

    if-ne p1, p3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    .line 65
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;ILjava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "pageTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 43
    iget-object p3, p0, Lorg/wikipedia/commons/FilePageFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    const p3, 0x7f0c0051

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "pageTitle"

    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;-><init>(Lorg/wikipedia/commons/FilePageFragment;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 53
    sget p1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$2;-><init>(Lorg/wikipedia/commons/FilePageFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-direct {p0}, Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V

    return-void
.end method
