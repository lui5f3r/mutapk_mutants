.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "SuggestedEditsCardsItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addedContribution:Ljava/lang/String;

.field private sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getArticleWithMissingDescription(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getArticleWithMissingDescription()V

    return-void
.end method

.method public static final synthetic access$setErrorState(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->setErrorState(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->updateContents()V

    return-void
.end method

.method private final getArticleWithMissingDescription()V
    .locals 11

    .line 71
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "WikiSite.forLanguageCode(parent().langFromCode)"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    sget-object v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lorg/wikipedia/dataclient/WikiSite;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 195
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 196
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 197
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$9;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 208
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$10;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$10;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 197
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto/16 :goto_0

    .line 142
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 144
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 145
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 146
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$6;

    invoke-direct {v3, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$6;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 152
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;

    invoke-direct {v3, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$7;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 190
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$8;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$8;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 152
    invoke-virtual {v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 105
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 106
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 107
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$3;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 112
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$4;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 138
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$5;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 112
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    sget-object v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 74
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 75
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 76
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 100
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$2;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$getArticleWithMissingDescription$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    .line 76
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :goto_0
    return-void
.end method

.method private final setErrorState(Ljava/lang/Throwable;)V
    .locals 2

    .line 222
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 223
    sget v0, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 224
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    const-string v0, "cardItemErrorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    sget p1, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "cardItemProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    sget p1, Lorg/wikipedia/R$id;->cardItemContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const-string v1, "cardItemContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method private final updateCaptionContents()V
    .locals 6

    .line 268
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitleContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "viewArticleSubtitleContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    goto :goto_2

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const v0, 0x7f1003f8

    .line 274
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.suggested_edits_no_description)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    :goto_2
    sget v4, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v5, "viewArticleSubtitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->strip(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget v0, Lorg/wikipedia/R$id;->viewImageFileName:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageDetailHorizontalView;

    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    const-string v0, "viewImageArtist.titleText"

    const-string v3, "viewImageArtist"

    if-nez v2, :cond_6

    .line 281
    sget v2, Lorg/wikipedia/R$id;->viewImageArtist:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/views/ImageDetailHorizontalView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {v2, v3}, Lorg/wikipedia/views/ImageDetailHorizontalView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget v0, Lorg/wikipedia/R$id;->viewImageArtist:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageDetailHorizontalView;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    goto :goto_3

    .line 284
    :cond_6
    sget v2, Lorg/wikipedia/R$id;->viewImageArtist:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/views/ImageDetailHorizontalView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {v2, v3}, Lorg/wikipedia/views/ImageDetailHorizontalView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->artist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_3
    sget v0, Lorg/wikipedia/R$id;->viewImageDate:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageDetailHorizontalView;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->getReadingListsLastSyncDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 288
    sget v0, Lorg/wikipedia/R$id;->viewImageSource:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageDetailHorizontalView;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ExtMetadata;->credit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 289
    sget v0, Lorg/wikipedia/R$id;->viewImageLicense:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageDetailHorizontalView;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 291
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    .line 292
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "viewArticleExtract"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final updateContents()V
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    sget v2, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    const-string v3, "cardItemErrorView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    sget v2, Lorg/wikipedia/R$id;->cardItemContainer:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const-string v4, "cardItemContainer"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 233
    sget v2, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const-string v4, "cardItemProgressBar"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-nez v0, :cond_3

    return-void

    .line 238
    :cond_3
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {v0}, Lorg/wikipedia/views/ImageZoomHelper;->setViewZoomable(Landroid/view/View;)V

    .line 240
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 243
    :cond_4
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->updateCaptionContents()V

    goto :goto_3

    .line 241
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->updateDescriptionContents()V

    :goto_3
    return-void
.end method

.method private final updateDescriptionContents()V
    .locals 5

    .line 248
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 252
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitleContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "viewArticleSubtitleContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v2, "viewArticleSubtitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_2
    sget v0, Lorg/wikipedia/R$id;->viewImageSummaryContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "viewImageSummaryContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "viewArticleExtract"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getExtractHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_2
    const-string v0, "viewArticleImagePlaceholder"

    if-eqz v3, :cond_5

    .line 260
    sget v1, Lorg/wikipedia/R$id;->viewArticleImagePlaceholder:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 262
    :cond_5
    sget v2, Lorg/wikipedia/R$id;->viewArticleImagePlaceholder:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAddedContribution()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object v0
.end method

.method public final getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0065

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    sget p1, Lorg/wikipedia/R$id;->viewArticleContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    sget p1, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget p1, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->updateContents()V

    .line 58
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-nez p1, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getArticleWithMissingDescription()V

    .line 62
    :cond_0
    sget p1, Lorg/wikipedia/R$id;->viewArticleContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    return-void
.end method

.method public final setAddedContribution$app_prodRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    return-void
.end method

.method public final setSourceSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-void
.end method

.method public final setTargetSummaryForEdit(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-void
.end method

.method public final showAddedContributionView(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 215
    sget v1, Lorg/wikipedia/R$id;->viewArticleSubtitleContainer:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "viewArticleSubtitleContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v1, "viewArticleSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    :cond_2
    return-void
.end method
