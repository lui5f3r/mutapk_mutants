.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SuggestedEditsImageTagDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;,
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;,
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;,
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;,
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final adapter:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

.field private currentSearchTerm:Ljava/lang/String;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final searchRunnable:Ljava/lang/Runnable;

.field private final textWatcher:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->textWatcher:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;

    .line 47
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Collections.emptyList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/util/List;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

    .line 48
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 50
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$applyResults(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/util/List;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->applyResults(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentSearchTerm$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSearchRunnable$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$requestResults(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->requestResults(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCurrentSearchTerm$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    return-void
.end method

.method private final applyResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

    invoke-virtual {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->setResults(Ljava/util/List;)V

    .line 153
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "imageTagsDivider"

    const-string v3, "imageTagsRecycler"

    const-string v4, "noResultsText"

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    .line 155
    sget p1, Lorg/wikipedia/R$id;->noResultsText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    sget p1, Lorg/wikipedia/R$id;->imageTagsRecycler:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    sget p1, Lorg/wikipedia/R$id;->imageTagsDivider:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_1
    sget v0, Lorg/wikipedia/R$id;->imageTagsDivider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    sget p1, Lorg/wikipedia/R$id;->noResultsText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    sget p1, Lorg/wikipedia/R$id;->imageTagsRecycler:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_2
    sget p1, Lorg/wikipedia/R$id;->noResultsText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    sget p1, Lorg/wikipedia/R$id;->imageTagsRecycler:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;
    .locals 1

    .line 212
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;

    return-object v0
.end method

.method private final requestResults(Ljava/lang/String;)V
    .locals 5

    .line 132
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string v0, "Collections.emptyList()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->applyResults(Ljava/util/List;)V

    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://www.wikidata.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const-string v3, "WikipediaApp.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lorg/wikipedia/dataclient/Service;->searchEntities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 137
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 138
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 139
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V

    .line 146
    sget-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$2;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$2;

    .line 139
    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04030f

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    .line 70
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    const-string v2, "ShapeAppearanceModel.bui\u2026nUtil.dpToPx(6f)).build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v4, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 72
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "dialog.window!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    .line 76
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v8

    .line 77
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, v0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x30

    .line 84
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0042

    .line 57
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 113
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 114
    sget v0, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->textWatcher:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    sget v0, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 172
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;->onSearchDismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    const-string v0, "lastText"

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "useClipboardText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/content/ClipboardManager;

    .line 95
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "clipboard.primaryClip!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_4

    .line 99
    sget v1, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget v0, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "requireArguments().getString(\"lastText\")!!"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 104
    sget v1, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget v0, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 109
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_5
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget p1, Lorg/wikipedia/R$id;->imageTagsRecycler:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "imageTagsRecycler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    sget p1, Lorg/wikipedia/R$id;->imageTagsRecycler:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    sget p1, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->textWatcher:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "Collections.emptyList()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->applyResults(Ljava/util/List;)V

    return-void
.end method
