.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;,
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

.field private funnel:Lorg/wikipedia/analytics/EditFunnel;

.field private invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field private lastSearchTerm:Ljava/lang/String;

.field private page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field private publishSuccess:Z

.field private publishing:Z

.field private final tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;"
        }
    .end annotation
.end field

.field private wasCaptionLongClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    .line 57
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/List;

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method

.method public static final synthetic access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFunnel$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/analytics/EditFunnel;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    return-object p0
.end method

.method public static final synthetic access$getNextItem(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getNextItem()V

    return-void
.end method

.method public static final synthetic access$getPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object p0
.end method

.method public static final synthetic access$getWasCaptionLongClicked$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->wasCaptionLongClicked:Z

    return p0
.end method

.method public static final synthetic access$onError(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onSuccess(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->onSuccess()V

    return-void
.end method

.method public static final synthetic access$playSuccessVibration(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->playSuccessVibration()V

    return-void
.end method

.method public static final synthetic access$setErrorState(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->setErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setFunnel$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lorg/wikipedia/analytics/EditFunnel;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    return-void
.end method

.method public static final synthetic access$setPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-void
.end method

.method public static final synthetic access$setWasCaptionLongClicked$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->wasCaptionLongClicked:Z

    return-void
.end method

.method public static final synthetic access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateContents()V

    return-void
.end method

.method public static final synthetic access$updateLicenseTextShown(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    return-void
.end method

.method public static final synthetic access$updateTagChips(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    return-void
.end method

.method private final addChip(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;
    .locals 3

    .line 212
    new-instance v0, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f1003e1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextAlignment(I)V

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400b2

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 216
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04027c

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 219
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x1

    .line 220
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    const v1, 0x7f0800a7

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconResource(I)V

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setIconEndPadding(F)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 223
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setTextStartPadding(F)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 224
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconSize(F)V

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04027b

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f0800a8

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCheckedIconResource(I)V

    .line 227
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setEnsureMinTouchTargetSize(Z)V

    const/high16 p2, 0x42400000    # 48.0f

    .line 230
    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 237
    :cond_1
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 238
    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p2

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    sget p1, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final atLeastOneTagChecked()Z
    .locals 4

    .line 459
    sget v0, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    const-string v1, "tagsChipGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 460
    sget v3, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/google/android/material/chip/Chip;

    .line 461
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return v1
.end method

.method private final callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;
    .locals 1

    .line 488
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    return-object v0
.end method

.method private final getNextItem()V
    .locals 6

    .line 125
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingTags$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 129
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 130
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 131
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    .line 135
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$2;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    .line 131
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 429
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->failure(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 430
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/EditFunnel;->logError(Ljava/lang/String;)V

    .line 431
    :cond_0
    sget v0, Lorg/wikipedia/R$id;->publishOverlayContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "publishOverlayContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onSuccess()V
    .locals 9

    .line 392
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->success(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 395
    sget v0, Lorg/wikipedia/R$id;->publishProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "publishProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 396
    sget v0, Lorg/wikipedia/R$id;->publishProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v3, "publishProgressBar.anima\u2026               .alpha(0f)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    int-to-long v3, v3

    const-wide/16 v5, 0x1f4

    .line 398
    div-long v3, v5, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 400
    sget v0, Lorg/wikipedia/R$id;->publishProgressBarComplete:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v7, "publishProgressBarComplete"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 401
    sget v0, Lorg/wikipedia/R$id;->publishProgressBarComplete:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    sget v0, Lorg/wikipedia/R$id;->publishProgressBarComplete:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 404
    new-instance v8, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$1;

    invoke-direct {v8, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v8, "publishProgressBarComple\u2026ation()\n                }"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 410
    sget v0, Lorg/wikipedia/R$id;->publishProgressCheck:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v3, "publishProgressCheck"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 411
    sget v0, Lorg/wikipedia/R$id;->publishProgressCheck:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    sget v0, Lorg/wikipedia/R$id;->publishProgressCheck:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "publishProgressCheck.ani\u2026               .alpha(1f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 416
    sget v0, Lorg/wikipedia/R$id;->publishProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;

    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    const/4 v2, 0x3

    int-to-long v2, v2

    mul-long v2, v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final playSuccessVibration()V
    .locals 2

    .line 436
    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    return-void
.end method

.method private final setErrorState(Ljava/lang/Throwable;)V
    .locals 2

    .line 139
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 140
    sget v0, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 141
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    const-string v0, "cardItemErrorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    sget p1, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "cardItemProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    sget p1, Lorg/wikipedia/R$id;->contentContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "contentContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private final updateContents()V
    .locals 8

    .line 147
    sget v0, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "cardItemErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    sget v0, Lorg/wikipedia/R$id;->contentContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "contentContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    sget v0, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "cardItemProgressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    if-nez v0, :cond_2

    return-void

    .line 154
    :cond_2
    new-instance v0, Lorg/wikipedia/analytics/EditFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    new-instance v4, Lorg/wikipedia/page/PageTitle;

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    const-string v7, "https://commons.wikimedia.org/"

    invoke-direct {v6, v7}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-direct {v0, v2, v4}, Lorg/wikipedia/analytics/EditFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    .line 156
    sget v0, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "tagsLicenseText"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    sget v0, Lorg/wikipedia/R$id;->tagsHintText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tagsHintText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/wikipedia/views/ImageZoomHelper;->setViewZoomable(Landroid/view/View;)V

    .line 160
    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "page!!.imageInfo()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page!!.imageInfo()!!.thumbUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x320

    invoke-static {v1, v2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v2

    const-string v3, "page!!.title()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->getImageCaptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 163
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 164
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 165
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 179
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 180
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->updateActionButton()V

    return-void
.end method

.method private final updateLicenseTextShown()V
    .locals 5

    .line 441
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    const/4 v1, 0x0

    const-string v2, "tagsHintText"

    const-string v3, "tagsLicenseText"

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 442
    sget v0, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    sget v0, Lorg/wikipedia/R$id;->tagsHintText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f1003e8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 444
    sget v0, Lorg/wikipedia/R$id;->tagsHintText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->atLeastOneTagChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget v0, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    sget v0, Lorg/wikipedia/R$id;->tagsHintText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_1
    sget v0, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    sget v0, Lorg/wikipedia/R$id;->tagsHintText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateTagChips()V
    .locals 7

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 184
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 185
    sget v2, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 187
    iget-boolean v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    const-string v3, "typeface"

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 189
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->addChip(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    .line 193
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->addChip(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;

    move-result-object v5

    .line 194
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->isSelected()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 195
    iget-boolean v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    if-eqz v4, :cond_1

    .line 196
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 197
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0400e0

    invoke-static {v4, v6}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0400e1

    invoke-static {v4, v6}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0400b2

    invoke-static {v4, v6}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 208
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->updateActionButton()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    return-object v0
.end method

.method public final getPublishSuccess()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    return v0
.end method

.method public final getPublishing()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 263
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 264
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0400de

    invoke-static {p2, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0400df

    invoke-static {p2, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    const/4 p2, 0x0

    .line 267
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0400b2

    invoke-static {p2, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    const/4 p2, 0x1

    .line 271
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 273
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->setSelected(Z)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.wikipedia.dataclient.mwapi.MwQueryPage.ImageLabel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 278
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->updateActionButton()V

    return-void

    .line 263
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 253
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 254
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 258
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;

    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->wasCaptionLongClicked:Z

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Companion;->newInstance(ZLjava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0066

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSearchDismiss(Ljava/lang/String;)V
    .locals 1

    const-string v0, "searchTerm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    return-void
.end method

.method public onSearchSelect(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    .line 284
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->getWikidataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->getWikidataId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->setSelected(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->setSelected(Z)V

    .line 292
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 121
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->updateActionButton()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    sget p1, Lorg/wikipedia/R$id;->contentContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object p2

    invoke-interface {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->getLangCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 73
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget p1, Lorg/wikipedia/R$id;->tagsContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-wide v0, 0xcc000000L

    long-to-int p2, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402c0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    sget p1, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    and-int/2addr v0, v2

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 84
    sget p1, Lorg/wikipedia/R$id;->publishOverlayContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    and-int/2addr v0, v2

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 85
    sget p1, Lorg/wikipedia/R$id;->publishOverlayContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string p2, "publishOverlayContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 p2, 0x1

    new-array v0, p2, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    new-array v2, p2, [I

    .line 88
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    const-string v4, "WikipediaApp.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v3

    const-string v4, "WikipediaApp.getInstance().currentTheme"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400c5

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    :goto_0
    aput v3, v2, v1

    .line 87
    invoke-direct {p1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 89
    sget v0, Lorg/wikipedia/R$id;->publishProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "publishProgressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    sget v0, Lorg/wikipedia/R$id;->publishProgressBarComplete:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "publishProgressBarComplete"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    sget v0, Lorg/wikipedia/R$id;->publishProgressCheck:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "publishProgressCheck"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    sget v0, Lorg/wikipedia/R$id;->publishProgressText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 94
    sget p1, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "tagsLicenseText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1003a4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f10043b

    .line 95
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p2

    .line 94
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget p1, Lorg/wikipedia/R$id;->tagsLicenseText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    sget p1, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 109
    :cond_1
    sget p1, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getNextItem()V

    .line 115
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateContents()V

    .line 116
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    return-void
.end method

.method public publish()V
    .locals 5

    .line 302
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    if-nez v0, :cond_5

    sget v0, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    const-string v1, "tagsChipGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 306
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 308
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    .line 310
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    const/4 v1, 0x0

    .line 323
    iput-boolean v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 325
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/wikipedia/analytics/EditFunnel;->logSaveAttempt()V

    .line 327
    :cond_4
    sget v2, Lorg/wikipedia/R$id;->publishProgressText:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1003e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 328
    sget v2, Lorg/wikipedia/R$id;->publishProgressCheck:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "publishProgressCheck"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    sget v2, Lorg/wikipedia/R$id;->publishOverlayContainer:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string v4, "publishOverlayContainer"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 330
    sget v2, Lorg/wikipedia/R$id;->publishProgressBarComplete:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const-string v4, "publishProgressBarComplete"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 331
    sget v2, Lorg/wikipedia/R$id;->publishProgressBar:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const-string v3, "publishProgressBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    const-string v3, "https://commons.wikimedia.org/"

    invoke-direct {v2, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    invoke-direct {v4, p0, v0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-virtual {v3, v1, v4}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public publishEnabled()Z
    .locals 5

    .line 471
    sget v0, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    const-string v1, "tagsChipGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 472
    sget v4, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Lcom/google/android/material/chip/Chip;

    .line 473
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    if-nez v0, :cond_3

    if-lez v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public publishOutlined()Z
    .locals 1

    .line 481
    sget v0, Lorg/wikipedia/R$id;->tagsChipGroup:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->atLeastOneTagChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final setInvokeSource(Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method

.method public final setPublishSuccess(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    return-void
.end method

.method public final setPublishing(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    return-void
.end method
