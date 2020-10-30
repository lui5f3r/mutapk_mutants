.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "SuggestedEditsImageTagEditActivity.kt"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;
    }
.end annotation


# static fields
.field private static final ARG_INVOKE_SOURCE:Ljava/lang/String; = "invokeSource"

.field private static final ARG_PAGE:Ljava/lang/String; = "imageTagPage"

.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

.field private page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field private suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSuggestedEditsImageTagsFragment$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    return-object p0
.end method

.method public static final synthetic access$setSuggestedEditsImageTagsFragment$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    return-void
.end method

.method private final maybeShowOnboarding()V
    .locals 1

    .line 89
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowImageTagsOnboarding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setShowImageTagsOnboarding(Z)V

    .line 91
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;

    invoke-virtual {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static final newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/wikipedia/views/ImageZoomHelper;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string p1, "imageZoomHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    return v0
.end method

.method public getLangCode()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance().language()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance\u2026anguage().appLanguageCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object v0
.end method

.method public getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object v0
.end method

.method public logSuccess()V
    .locals 0

    return-void
.end method

.method public nextPage(Landroidx/fragment/app/Fragment;)V
    .locals 0

    const/4 p1, -0x1

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageTagPage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "supportActionBar!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f100414

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    new-instance p1, Lorg/wikipedia/views/ImageZoomHelper;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    const p1, 0x7f0c0029

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0901bb

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invokeSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->setInvokeSource(Lorg/wikipedia/Constants$InvokeSource;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.wikipedia.Constants.InvokeSource"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    sget p1, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p1, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$2;

    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->maybeShowOnboarding()V

    return-void
.end method

.method public final setPage(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-void
.end method

.method public updateActionButton()V
    .locals 6

    .line 54
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const-string v1, "addContributionLandscapeImage"

    const-string v2, "addContributionButton"

    if-eqz v0, :cond_2

    .line 55
    sget v0, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0400c5

    invoke-static {p0, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 56
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 57
    sget v0, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 58
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 59
    sget v0, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 62
    :cond_2
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 63
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    sget v0, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 66
    :cond_3
    sget v0, Lorg/wikipedia/R$id;->addContributionButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    sget v0, Lorg/wikipedia/R$id;->addContributionLandscapeImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    sget v0, Lorg/wikipedia/R$id;->addContributionText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v1, 0x7f1000a6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method
