.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;
.super Landroidx/fragment/app/Fragment;
.source "SuggestedEditsTasksFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;,
        Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;,
        Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuggestedEditsTasksFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuggestedEditsTasksFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsTasksFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,449:1\n13437#2,2:450\n*E\n*S KotlinDebug\n*F\n+ 1 SuggestedEditsTasksFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsTasksFragment\n*L\n111#1,2:450\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field private addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field private addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field private final callback:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;

.field private final displayedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsTask;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private isIpBlocked:Z

.field private isPausedOrDisabled:Z

.field private latestEditDate:Ljava/util/Date;

.field private latestEditStreak:I

.field private revertSeverity:I

.field private final sequentialTooltipRunnable:Ljava/lang/Runnable;

.field private totalContributions:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;

    .line 55
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditDate:Ljava/util/Date;

    .line 63
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->sequentialTooltipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getAddDescriptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "addDescriptionsTask"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAddImageCaptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "addImageCaptionsTask"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAddImageTagsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "addImageTagsTask"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCallback$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;

    return-object p0
.end method

.method public static final synthetic access$getEditStreak(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/List;)I
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getEditStreak(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLatestEditDate$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Ljava/util/Date;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditDate:Ljava/util/Date;

    return-object p0
.end method

.method public static final synthetic access$getLatestEditStreak$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditStreak:I

    return p0
.end method

.method public static final synthetic access$getRevertSeverity$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->revertSeverity:I

    return p0
.end method

.method public static final synthetic access$getTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    return p0
.end method

.method public static final synthetic access$isIpBlocked$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isIpBlocked:Z

    return p0
.end method

.method public static final synthetic access$isPausedOrDisabled$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isPausedOrDisabled:Z

    return p0
.end method

.method public static final synthetic access$maybeSetPausedOrDisabled(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->maybeSetPausedOrDisabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAddDescriptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lorg/wikipedia/suggestededits/SuggestedEditsTask;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    return-void
.end method

.method public static final synthetic access$setAddImageCaptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lorg/wikipedia/suggestededits/SuggestedEditsTask;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    return-void
.end method

.method public static final synthetic access$setAddImageTagsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lorg/wikipedia/suggestededits/SuggestedEditsTask;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    return-void
.end method

.method public static final synthetic access$setFinalUIState(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setFinalUIState()V

    return-void
.end method

.method public static final synthetic access$setIPBlockedStatus(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setIPBlockedStatus()V

    return-void
.end method

.method public static final synthetic access$setIpBlocked$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isIpBlocked:Z

    return-void
.end method

.method public static final synthetic access$setLatestEditDate$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/Date;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditDate:Ljava/util/Date;

    return-void
.end method

.method public static final synthetic access$setLatestEditStreak$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditStreak:I

    return-void
.end method

.method public static final synthetic access$setPausedOrDisabled$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isPausedOrDisabled:Z

    return-void
.end method

.method public static final synthetic access$setRequiredLoginStatus(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setRequiredLoginStatus()V

    return-void
.end method

.method public static final synthetic access$setRevertSeverity$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->revertSeverity:I

    return-void
.end method

.method public static final synthetic access$setTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    return-void
.end method

.method public static final synthetic access$showError(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$showLanguagesActivity(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->showLanguagesActivity(Ljava/lang/String;)V

    return-void
.end method

.method private final addOnClickListener(Landroidx/constraintlayout/widget/Group;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object p1

    const-string v0, "referencedIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13437
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 112
    sget v3, Lorg/wikipedia/R$id;->userStatsClickTarget:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    sget p1, Lorg/wikipedia/R$id;->userStatsClickTarget:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final clearContents(Z)V
    .locals 4

    .line 236
    sget v0, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 237
    sget v0, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    sget v0, Lorg/wikipedia/R$id;->tasksContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "tasksContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v3, "errorView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    sget v0, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    const-string v3, "disabledStatesView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 242
    sget p1, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 244
    :cond_0
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402c0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    return-void
.end method

.method private final fetchUserContributions()V
    .locals 6

    .line 155
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->showAccountCreationOrIPBlocked()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isIpBlocked:Z

    .line 161
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->isPausedOrDisabled:Z

    .line 162
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    .line 163
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditStreak:I

    .line 164
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->revertSeverity:I

    .line 165
    sget v1, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 168
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    const-string v5, "https://www.wikidata.org/"

    invoke-direct {v2, v5}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v2

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v5, v3, v4}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 169
    sget-object v3, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v3}, Lorg/wikipedia/userprofile/UserContributionsStats;->getEditCountsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;

    invoke-direct {v4, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    .line 167
    invoke-static {v1, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function3;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 190
    sget-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$2;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$2;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 193
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 194
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$3;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 199
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    .line 208
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    .line 199
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getEditStreak(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/UserContribution;",
            ">;)I"
        }
    .end annotation

    .line 351
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 356
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 358
    new-instance v1, Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 359
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 362
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v9, v5, v7

    if-gez v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 370
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private final maybeSetPausedOrDisabled()Z
    .locals 8

    .line 329
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/UserContributionsStats;->maybePauseAndGetEndDate()Ljava/util/Date;

    move-result-object v0

    .line 331
    sget-object v1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->isDisabled()Z

    move-result v1

    const-string v2, "getString(R.string.sugge\u2026ccountUtil.getUserName())"

    const/4 v3, 0x0

    const-string v4, "disabledStatesView"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 333
    invoke-static {p0, v6, v5, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    .line 334
    sget v0, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    const v1, 0x7f1003b5

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/MessageCardView;->setDisabled(Ljava/lang/String;)V

    .line 335
    sget v0, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 336
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logDisabled()V

    return v5

    :cond_0
    if-eqz v0, :cond_1

    .line 339
    invoke-static {p0, v6, v5, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    .line 340
    sget v1, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    const v3, 0x7f1003fb

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-virtual {p0, v3, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/wikipedia/views/MessageCardView;->setPaused(Ljava/lang/String;)V

    .line 341
    sget v0, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 342
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logPaused()V

    return v5

    .line 346
    :cond_1
    sget v0, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v6
.end method

.method private final setFinalUIState()V
    .locals 8

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 256
    sget v1, Lorg/wikipedia/R$id;->tasksRecyclerView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "tasksRecyclerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 258
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setUserStatsViewsAndTooltips()V

    .line 260
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditStreak:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 261
    sget v1, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditDate:Ljava/util/Date;

    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->getMDYDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1003f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "if (latestEditDate.time \u2026_edits_last_edited_never)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTitle(Ljava/lang/String;)V

    .line 262
    sget v1, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1003f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.st\u2026gested_edits_last_edited)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_1
    sget v1, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0015

    .line 265
    iget v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->latestEditStreak:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 264
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getQuantityStr\u2026Streak, latestEditStreak)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTitle(Ljava/lang/String;)V

    .line 266
    sget v1, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1003bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.st\u2026s_edit_streak_label_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    .line 269
    :goto_1
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    const-string v3, "userStatsClickTarget"

    const-string v4, "onboardingImageView"

    const-string v5, "userStatsViewsGroup"

    const-string v6, "onboardingTextView"

    const/16 v7, 0x8

    if-nez v1, :cond_2

    .line 270
    sget v1, Lorg/wikipedia/R$id;->userStatsClickTarget:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 271
    sget v1, Lorg/wikipedia/R$id;->userStatsViewsGroup:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 272
    sget v1, Lorg/wikipedia/R$id;->onboardingImageView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    sget v1, Lorg/wikipedia/R$id;->onboardingTextView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    sget v1, Lorg/wikipedia/R$id;->onboardingTextView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1003f9

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 276
    :cond_2
    sget v1, Lorg/wikipedia/R$id;->userStatsViewsGroup:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 277
    sget v1, Lorg/wikipedia/R$id;->onboardingImageView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    sget v1, Lorg/wikipedia/R$id;->onboardingTextView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    sget v1, Lorg/wikipedia/R$id;->userStatsClickTarget:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 280
    sget v1, Lorg/wikipedia/R$id;->userNameView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "userNameView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget v1, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    iget v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTitle(Ljava/lang/String;)V

    .line 282
    sget v1, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0011

    iget v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->totalContributions:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getQuantityStr\u2026tion, totalContributions)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowOneTimeSequentialUserStatsTooltip()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->showOneTimeSequentialUserStatsTooltips()V

    .line 288
    :cond_3
    :goto_2
    sget v1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0402c0

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 289
    sget v1, Lorg/wikipedia/R$id;->tasksContainer:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "tasksContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private final setIPBlockedStatus()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-static {p0, v0, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    .line 317
    sget v1, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {v1}, Lorg/wikipedia/views/MessageCardView;->setIPBlocked()V

    .line 318
    sget v1, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    const-string v2, "disabledStatesView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logIpBlock()V

    return-void
.end method

.method private final setRequiredLoginStatus()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    invoke-static {p0, v0, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    .line 324
    sget v1, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {v1, p0}, Lorg/wikipedia/views/MessageCardView;->setRequiredLogin(Landroidx/fragment/app/Fragment;)V

    .line 325
    sget v1, Lorg/wikipedia/R$id;->disabledStatesView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    const-string v2, "disabledStatesView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final setUpTasks()V
    .locals 6

    .line 385
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    const-string v1, "addImageTagsTask"

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const v3, 0x7f1003e0

    .line 388
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setTitle(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_b

    const v3, 0x7f1003ed

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setDescription(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_a

    const v3, 0x7f0800e0

    invoke-virtual {v0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setImageDrawable(I)V

    .line 391
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setTranslatable(Z)V

    .line 393
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    const-string v3, "addImageCaptionsTask"

    if-eqz v0, :cond_8

    const v4, 0x7f1003d1

    .line 394
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setTitle(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_7

    const v4, 0x7f1003d2

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setDescription(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_6

    const v4, 0x7f0800df

    invoke-virtual {v0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setImageDrawable(I)V

    .line 398
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    const-string v4, "addDescriptionsTask"

    if-eqz v0, :cond_5

    const v5, 0x7f1000bd

    .line 399
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setTitle(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_4

    const v5, 0x7f10039c

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setDescription(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v0, :cond_3

    const v5, 0x7f080096

    invoke-virtual {v0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->setImageDrawable(I)V

    .line 403
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setUserStatsViewsAndTooltips()V
    .locals 4

    .line 293
    sget v0, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setImageDrawable(I)V

    .line 294
    sget v0, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f1003b3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026ntributions_stat_tooltip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTooltipText(Ljava/lang/String;)V

    .line 296
    sget v0, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1003bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026s_edit_streak_label_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    .line 297
    sget v0, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setImageDrawable(I)V

    .line 298
    sget v0, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f1003bc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026edit_streak_stat_tooltip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTooltipText(Ljava/lang/String;)V

    .line 300
    sget v0, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f100426

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026d_edits_views_label_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    .line 301
    sget v0, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setImageDrawable(I)V

    .line 302
    sget v0, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f1003fa

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026_page_views_stat_tooltip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTooltipText(Ljava/lang/String;)V

    .line 304
    sget v0, Lorg/wikipedia/R$id;->editQualityStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->revertSeverity:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setGoodnessState(I)V

    .line 305
    sget v0, Lorg/wikipedia/R$id;->editQualityStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const v1, 0x7f100400

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026edits_quality_label_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setDescription(Ljava/lang/String;)V

    .line 306
    sget v0, Lorg/wikipedia/R$id;->editQualityStatsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v2}, Lorg/wikipedia/userprofile/UserContributionsStats;->getTotalReverts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1003b9

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sugge\u2026utionsStats.totalReverts)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTooltipText(Ljava/lang/String;)V

    return-void
.end method

.method private final setupTestingButtons()V
    .locals 3

    .line 376
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    sget v0, Lorg/wikipedia/R$id;->showIPBlockedMessage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "showIPBlockedMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    sget v0, Lorg/wikipedia/R$id;->showOnboardingMessage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "showOnboardingMessage"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :cond_0
    sget v0, Lorg/wikipedia/R$id;->showIPBlockedMessage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget v0, Lorg/wikipedia/R$id;->showOnboardingMessage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$2;

    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final showAccountCreationOrIPBlocked()V
    .locals 4

    .line 215
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    const-string v2, "WikipediaApp.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    const-string v2, "ServiceFactory.get(Wikip\u2026p.getInstance().wikiSite)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/wikipedia/dataclient/Service;->getUserInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 216
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 217
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 218
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$showAccountCreationOrIPBlocked$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$showAccountCreationOrIPBlocked$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    .line 224
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$showAccountCreationOrIPBlocked$2;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$showAccountCreationOrIPBlocked$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    .line 218
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final showError(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-static {p0, v0, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    .line 249
    sget v1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v1, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 250
    sget p1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "errorView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private final showLanguagesActivity(Ljava/lang/String;)V
    .locals 1

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3b

    .line 430
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final showOneTimeSequentialUserStatsTooltips()V
    .locals 4

    .line 310
    sget v0, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 311
    sget v0, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->sequentialTooltipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 312
    sget v0, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->sequentialTooltipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3b

    if-ne p1, p3, :cond_0

    .line 136
    sget p1, Lorg/wikipedia/R$id;->tasksRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "tasksRecyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x41

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 138
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setShowImageTagsOnboarding(Z)V

    .line 139
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestionsActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "requireActivity()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, p2, p3, v0}, Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x35

    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    const/4 p2, 0x0

    .line 141
    invoke-static {p0, v0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0068

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 146
    sget v0, Lorg/wikipedia/R$id;->tasksRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "tasksRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 148
    sget v0, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->sequentialTooltipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 149
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->log()V

    .line 150
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->reset()V

    .line 151
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 119
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents()V

    .line 125
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->resume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setupTestingButtons()V

    .line 84
    sget p1, Lorg/wikipedia/R$id;->userStatsViewsGroup:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    const-string p2, "userStatsViewsGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addOnClickListener(Landroidx/constraintlayout/widget/Group;Landroid/view/View$OnClickListener;)V

    .line 88
    sget p1, Lorg/wikipedia/R$id;->learnMoreCard:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget p1, Lorg/wikipedia/R$id;->learnMoreButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    new-array v0, p2, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 96
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 98
    sget p1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$5;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget p1, Lorg/wikipedia/R$id;->suggestedEditsScrollView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$6;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$6;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 103
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setUpTasks()V

    .line 104
    sget p1, Lorg/wikipedia/R$id;->tasksRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "tasksRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    sget p1, Lorg/wikipedia/R$id;->tasksRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 107
    invoke-static {p0, v2, p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents$default(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public final refreshContents()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 232
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->fetchUserContributions()V

    return-void
.end method
