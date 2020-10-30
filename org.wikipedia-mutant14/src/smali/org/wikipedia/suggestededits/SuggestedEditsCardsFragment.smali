.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnFromSpinnerItemSelectedListener;,
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;,
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;,
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;,
        Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuggestedEditsCardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuggestedEditsCardsFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsCardsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,555:1\n1799#2,2:556\n*E\n*S KotlinDebug\n*F\n+ 1 SuggestedEditsCardsFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsCardsFragment\n*L\n306#1,2:556\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private final app:Lorg/wikipedia/WikipediaApp;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private funnel:Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

.field private langFromCode:Ljava/lang/String;

.field private langToCode:Ljava/lang/String;

.field private languageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resettingViewPager:Z

.field private rewardInterstitialImage:I

.field private rewardInterstitialQACount:I

.field private rewardInterstitialText:Ljava/lang/String;

.field private sessionEditCount:I

.field private siteMatrix:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

.field private swappingLanguageSpinners:Z

.field private final viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 43
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 44
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    const-string v1, "app.language()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app.language().appLanguageCode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langFromCode:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "app.language().appLanguageCodes[1]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langToCode:Ljava/lang/String;

    .line 55
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    .line 57
    iput-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getApp$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method public static final synthetic access$getLanguageList$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLanguageLocalName(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLanguageLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResettingViewPager$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    return p0
.end method

.method public static final synthetic access$getSiteMatrix$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/dataclient/mwapi/SiteMatrix;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->siteMatrix:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    return-object p0
.end method

.method public static final synthetic access$getSwappingLanguageSpinners$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    return p0
.end method

.method public static final synthetic access$initLanguageSpinners(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->initLanguageSpinners()V

    return-void
.end method

.method public static final synthetic access$previousPage(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->previousPage()V

    return-void
.end method

.method public static final synthetic access$resetViewPagerItemAdapter(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V

    return-void
.end method

.method public static final synthetic access$setLanguageList$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Ljava/util/List;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setResettingViewPager$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    return-void
.end method

.method public static final synthetic access$setSiteMatrix$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->siteMatrix:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    return-void
.end method

.method public static final synthetic access$setSwappingLanguageSpinners$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    return-void
.end method

.method public static final synthetic access$setUpRewardInterstitialsForQA(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setUpRewardInterstitialsForQA()V

    return-void
.end method

.method public static final synthetic access$shouldShowRewardInterstitial(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->shouldShowRewardInterstitial()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$swapLanguageSpinnerSelection(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swapLanguageSpinnerSelection(Z)V

    return-void
.end method

.method public static final synthetic access$updateBackButton(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    return-void
.end method

.method private final fetchUserInfoForNextInterstitialState()V
    .locals 4

    .line 356
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->sessionEditCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->sessionEditCount:I

    .line 357
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 359
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->getEditCountsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 360
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 400
    sget-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$2;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$2;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 407
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$3;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    .line 413
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$4;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$4;

    .line 407
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    return-void
.end method

.method private final getLanguageLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 302
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->siteMatrix:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 306
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;

    move-result-object v0

    const-string v2, "SiteMatrix.getSites(siteMatrix!!)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 307
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->code()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 312
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    move-object p1, v1

    :cond_6
    return-object p1
.end method

.method private final getTopTitle()Lorg/wikipedia/page/PageTitle;
    .locals 4

    .line 61
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getAddedContribution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getAddedContribution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    :cond_4
    :goto_1
    return-object v3
.end method

.method private final initLanguageSpinners()V
    .locals 5

    .line 350
    sget v0, Lorg/wikipedia/R$id;->wikiFromLanguageSpinner:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v1, "wikiFromLanguageSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    const v4, 0x7f0c0081

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 351
    sget v0, Lorg/wikipedia/R$id;->wikiToLanguageSpinner:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v1, "wikiToLanguageSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    sget v0, Lorg/wikipedia/R$id;->wikiToLanguageSpinner:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    const-string v2, "app.language()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langToCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private final maybeShowOnboarding()V
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowImageTagsOnboarding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setShowImageTagsOnboarding(Z)V

    .line 160
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final previousPage()V
    .locals 3

    .line 257
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->setNextPageSelectedAutomatic()V

    .line 258
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    sget v2, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    return-void
.end method

.method private final requestLanguagesAndBuildSpinner()V
    .locals 4

    .line 289
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    const-string v2, "app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    const-string v2, "ServiceFactory.get(app.wikiSite)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/wikipedia/dataclient/Service;->getSiteMatrix()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 290
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 291
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 293
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$2;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 294
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;

    invoke-direct {v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    .line 298
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;

    .line 294
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final resetViewPagerItemAdapter()V
    .locals 4

    .line 319
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    const-wide/16 v0, 0xfa

    .line 322
    sget v2, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;

    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final setInitialUiState()V
    .locals 3

    .line 333
    sget v0, Lorg/wikipedia/R$id;->wikiLanguageDropdownContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "wikiLanguageDropdownContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    const-string v2, "app.language()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private final setUpRewardInterstitialsForQA()V
    .locals 7

    .line 506
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialQACount:I

    const v1, 0x7f10040e

    const/16 v2, 0x64

    .line 509
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f040304

    .line 532
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001a

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getQuantityStr\u2026rds_page_views, 100, 100)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f040301

    .line 528
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    new-array v0, v5, [Ljava/lang/Object;

    const v2, 0x7f1003ff

    .line 529
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026edits_quality_good_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f040303

    .line 524
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    new-array v0, v5, [Ljava/lang/Object;

    const v2, 0x7f100405

    .line 525
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026_quality_very_good_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const v0, 0x7f040300

    .line 520
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    new-array v0, v5, [Ljava/lang/Object;

    const v2, 0x7f1003fe

    .line 521
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026_quality_excellent_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const v0, 0x7f040302

    .line 516
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    new-array v0, v5, [Ljava/lang/Object;

    const v2, 0x7f100402

    .line 517
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026ts_quality_perfect_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0402fe

    .line 512
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0019

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getQuantityStr\u2026ccountUtil.getUserName())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0402ff

    .line 508
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0018

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getQuantityStr\u2026_contributions, 100, 100)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    .line 537
    :goto_0
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialQACount:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 538
    iput v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialQACount:I

    goto :goto_1

    :cond_0
    add-int/2addr v0, v5

    .line 540
    iput v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialQACount:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final shouldShowRewardInterstitial()Z
    .locals 4

    .line 168
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->sessionEditCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 166
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsRewardInterstitialEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 168
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsRewardInterstitialQAOverride()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private final swapLanguageSpinnerSelection(Z)V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 339
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    const-string v1, "app.language()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langFromCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langToCode:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_1

    .line 341
    sget p1, Lorg/wikipedia/R$id;->wikiToLanguageSpinner:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 343
    :cond_1
    sget p1, Lorg/wikipedia/R$id;->wikiFromLanguageSpinner:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_1
    const/4 p1, 0x0

    .line 345
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    :cond_2
    return-void
.end method

.method private final topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
    .locals 3

    .line 72
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    if-eqz v0, :cond_0

    sget v2, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    return-object v0
.end method

.method private final topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;
    .locals 3

    .line 76
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    if-eqz v0, :cond_0

    sget v2, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    return-object v0
.end method

.method private final updateBackButton(I)V
    .locals 3

    .line 172
    sget v0, Lorg/wikipedia/R$id;->backButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "backButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 173
    sget v0, Lorg/wikipedia/R$id;->backButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const p1, 0x3e9eb852    # 0.31f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-object v0
.end method

.method public getLangCode()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langFromCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLangFromCode()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langFromCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLangToCode()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langToCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRewardInterstitialImage()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    return v0
.end method

.method public final getRewardInterstitialText()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    return-object v0
.end method

.method public getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public logSuccess()V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->funnel:Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->editSuccess()V

    :cond_0
    return-void
.end method

.method public nextPage(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 265
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 266
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->setNextPageSelectedAutomatic()V

    .line 267
    sget p1, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 268
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 241
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->logSuccess()V

    .line 242
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "addedContribution"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    .line 244
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object p3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const p1, 0x7f1000b0

    .line 248
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f1000af

    new-array p3, p3, [Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p1, 0x7f1000ac

    new-array p3, p3, [Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const p1, 0x7f1000ad

    .line 245
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    :goto_1
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 252
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->fetchUserInfoForNextInterstitialState()V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intentAction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 84
    new-instance v1, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "invokeSource"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lorg/wikipedia/Constants$InvokeSource;

    invoke-direct {v1, v0, v2}, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)V

    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->funnel:Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

    .line 86
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsRewardInterstitialEnabled(Z)V

    .line 88
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->impression(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.wikipedia.Constants.InvokeSource"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.wikipedia.descriptions.DescriptionEditActivity.Action"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0013

    .line 138
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f090231

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0400c5

    invoke-static {p2, p1, v0}, Lorg/wikipedia/util/ResourceUtil;->setMenuItemTint(Landroid/content/Context;Landroid/view/MenuItem;I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0064

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->funnel:Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->stop()V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 223
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 224
    sget v0, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 226
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090231

    if-eq v0, v1, :cond_0

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_1

    .line 146
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1003e3

    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppEditingFAQ(Landroid/content/Context;I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppEditingFAQ(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 230
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 234
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 235
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->resume()V

    return-void
.end method

.method public final onSelectPage()V
    .locals 8

    .line 277
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRewardsItemFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publish()V

    .line 281
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->fetchUserInfoForNextInterstitialState()V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v4

    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v5

    .line 284
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 283
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setInitialUiState()V

    .line 99
    sget p1, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    const-string p2, "cardsViewPager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 100
    sget p1, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 101
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V

    .line 103
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->funnel:Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->start()V

    .line 105
    :cond_0
    sget p1, Lorg/wikipedia/R$id;->wikiLanguageDropdownContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "wikiLanguageDropdownContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 106
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->languageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->requestLanguagesAndBuildSpinner()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->initLanguageSpinners()V

    .line 113
    :goto_0
    sget p1, Lorg/wikipedia/R$id;->wikiFromLanguageSpinner:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string p2, "wikiFromLanguageSpinner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnFromSpinnerItemSelectedListener;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnFromSpinnerItemSelectedListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    sget p1, Lorg/wikipedia/R$id;->wikiToLanguageSpinner:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string p2, "wikiToLanguageSpinner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    sget p1, Lorg/wikipedia/R$id;->arrow:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    sget p1, Lorg/wikipedia/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget p1, Lorg/wikipedia/R$id;->nextButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    .line 126
    sget p1, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 128
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->maybeShowOnboarding()V

    return-void
.end method

.method public final setAction(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-void
.end method

.method public final setLangFromCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langFromCode:Ljava/lang/String;

    return-void
.end method

.method public final setLangToCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->langToCode:Ljava/lang/String;

    return-void
.end method

.method public final setRewardInterstitialImage(I)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialImage:I

    return-void
.end method

.method public final setRewardInterstitialText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->rewardInterstitialText:Ljava/lang/String;

    return-void
.end method

.method public updateActionButton()V
    .locals 5

    .line 185
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "addContributionButton"

    if-eqz v0, :cond_4

    .line 188
    instance-of v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    if-eqz v3, :cond_1

    .line 189
    move-object v3, v0

    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getAddedContribution()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getAddedContribution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    .line 192
    :cond_1
    sget v3, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_2

    const v4, 0x7f08008d

    goto :goto_1

    :cond_2
    const v4, 0x7f0800f2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 193
    sget v3, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publishEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    sget v3, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publishEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    :cond_4
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 197
    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRewardsItemFragment;

    if-eqz v0, :cond_5

    .line 198
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f10040c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 200
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v4, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v4, :cond_7

    .line 201
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "landscape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    goto/16 :goto_7

    .line 206
    :cond_6
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1000a6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 209
    :cond_7
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v3, :cond_c

    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v3, :cond_8

    goto :goto_5

    .line 211
    :cond_8
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "portrait"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v3, :cond_a

    .line 213
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    const v1, 0x7f10039a

    goto :goto_3

    :cond_9
    const v1, 0x7f1003b7

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 215
    :cond_a
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    const v1, 0x7f10039b

    goto :goto_4

    :cond_b
    const v1, 0x7f1003b8

    :goto_4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 210
    :cond_c
    :goto_5
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    const v1, 0x7f10039d

    goto :goto_6

    :cond_d
    const v1, 0x7f1003bd

    :goto_6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    return-void
.end method
