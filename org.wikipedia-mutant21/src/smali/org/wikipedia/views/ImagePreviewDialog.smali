.class public final Lorg/wikipedia/views/ImagePreviewDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "ImagePreviewDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/ImagePreviewDialog$Companion;
    }
.end annotation


# static fields
.field private static final ARG_ACTION:Ljava/lang/String; = "action"

.field private static final ARG_SUMMARY:Ljava/lang/String; = "summary"

.field public static final Companion:Lorg/wikipedia/views/ImagePreviewDialog$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/views/ImagePreviewDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/views/ImagePreviewDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/views/ImagePreviewDialog;->Companion:Lorg/wikipedia/views/ImagePreviewDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 36
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getAction$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "action"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pageSummaryForEdit"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setAction$p(Lorg/wikipedia/views/ImagePreviewDialog;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-void
.end method

.method public static final synthetic access$setPageSummaryForEdit$p(Lorg/wikipedia/views/ImagePreviewDialog;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-void
.end method

.method public static final synthetic access$showError(Lorg/wikipedia/views/ImagePreviewDialog;Ljava/lang/Throwable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final loadImageInfo()V
    .locals 11

    .line 76
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 79
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 80
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 82
    iget-object v8, p0, Lorg/wikipedia/views/ImagePreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const-string v9, "pageSummaryForEdit"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;

    invoke-direct {v1, p0, v6}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$1;-><init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 94
    new-instance v1, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;

    invoke-direct {v1, p0, v3, v4, v5}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$2;-><init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 106
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v9

    .line 107
    new-instance v10, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$3;-><init>(Lorg/wikipedia/views/ImagePreviewDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v9, v10}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 123
    new-instance v1, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$4;

    invoke-direct {v1, v7}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;

    invoke-direct {v2, p0}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;-><init>(Lorg/wikipedia/views/ImagePreviewDialog;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 82
    invoke-virtual {v8, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void

    :cond_0
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final showError(Ljava/lang/Throwable;)V
    .locals 4

    .line 67
    sget v0, Lorg/wikipedia/R$id;->dialogDetailContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "dialogDetailContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 68
    sget v0, Lorg/wikipedia/R$id;->dialogDetailContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 69
    sget v0, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    sget v0, Lorg/wikipedia/R$id;->filePageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/commons/FilePageView;

    const-string v3, "filePageView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    const-string v2, "errorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0041

    .line 39
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    const-class p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "summary"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "GsonUnmarshaller.unmarsh\u2026).getString(ARG_SUMMARY))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iput-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "action"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iput-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 42
    iget-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    const-string p2, "rootView"

    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "pageSummaryForEdit"

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.wikipedia.descriptions.DescriptionEditActivity.Action"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 61
    sget v0, Lorg/wikipedia/R$id;->toolbarView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 47
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const-string v1, "requireView()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from\u2026ireView().parent as View)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0700b5

    .line 49
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    sget p1, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    sget p1, Lorg/wikipedia/R$id;->toolbarView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lorg/wikipedia/views/ImagePreviewDialog$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/views/ImagePreviewDialog$onViewCreated$1;-><init>(Lorg/wikipedia/views/ImagePreviewDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p1, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/wikipedia/views/ImagePreviewDialog;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/views/ImagePreviewDialog;->loadImageInfo()V

    return-void

    :cond_0
    const-string p1, "pageSummaryForEdit"

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
