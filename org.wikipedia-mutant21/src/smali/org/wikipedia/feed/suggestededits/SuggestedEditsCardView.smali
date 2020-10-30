.class public final Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;
.super Lorg/wikipedia/feed/view/DefaultFeedCardView;
.source "SuggestedEditsCardView.kt"

# interfaces
.implements Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Callback;,
        Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/DefaultFeedCardView<",
        "Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;",
        ">;",
        "Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;"
    }
.end annotation


# static fields
.field public static final ARTICLE_EXTRACT_MAX_LINE_WITHOUT_IMAGE:I = 0x6

.field public static final Companion:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final app:Lorg/wikipedia/WikipediaApp;

.field private card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

.field private sourceDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->Companion:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->sourceDescription:Ljava/lang/String;

    .line 23
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->app:Lorg/wikipedia/WikipediaApp;

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0120

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getCallback(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method private final header(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V
    .locals 3

    .line 121
    sget v0, Lorg/wikipedia/R$id;->headerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f0800f2

    .line 123
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f06002f

    .line 124
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method private final showAddDescriptionUI()V
    .locals 7

    .line 73
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget v0, Lorg/wikipedia/R$id;->callToActionText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "callToActionText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1003c6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v5

    iget-object v6, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1003c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showImageOrExtract()V

    return-void
.end method

.method private final showAddImageCaptionUI()V
    .locals 7

    .line 88
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const-string v3, "viewArticleImage"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "viewArticleExtract"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    sget v0, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "divider"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    .line 93
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lorg/wikipedia/R$id;->callToActionText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "callToActionText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1003c8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v5

    iget-object v6, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1003c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showImageOrExtract()V
    .locals 6

    .line 106
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "divider"

    const-string v3, "viewArticleImage"

    const/16 v4, 0x8

    const-string v5, "viewArticleExtract"

    if-eqz v0, :cond_2

    .line 107
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    sget v0, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getExtractHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 113
    :cond_2
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    sget v0, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method private final showImageTagsUI()V
    .locals 4

    .line 64
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const-string v1, "viewArticleImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    sget v0, Lorg/wikipedia/R$id;->viewArticleExtract:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleExtract"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    sget v0, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "divider"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    sget v0, Lorg/wikipedia/R$id;->viewArticleImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iget-object v2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "card!!.page!!.imageInfo()!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "card!!.page!!.imageInfo()!!.thumbUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x320

    invoke-static {v2, v3}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    .line 68
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "viewArticleTitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    sget v0, Lorg/wikipedia/R$id;->callToActionText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "callToActionText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1003c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showTranslateDescriptionUI()V
    .locals 3

    .line 80
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->sourceDescription:Ljava/lang/String;

    .line 82
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v2, "viewArticleSubtitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->sourceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showAddDescriptionUI()V

    return-void
.end method

.method private final showTranslateImageCaptionUI()V
    .locals 3

    .line 98
    sget v0, Lorg/wikipedia/R$id;->viewArticleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "viewArticleTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->sourceDescription:Ljava/lang/String;

    .line 100
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v2, "viewArticleSubtitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->sourceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showAddImageCaptionUI()V

    return-void
.end method

.method private final updateContents()V
    .locals 2

    .line 53
    sget v0, Lorg/wikipedia/R$id;->viewArticleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const-string v1, "viewArticleSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showAddDescriptionUI()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showImageTagsUI()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showTranslateImageCaptionUI()V

    goto :goto_0

    .line 56
    :cond_2
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showAddImageCaptionUI()V

    goto :goto_0

    .line 55
    :cond_3
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->showTranslateDescriptionUI()V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final refreshCardContent()V
    .locals 2

    .line 131
    new-instance v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->fetchSuggestedEditForType(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 49
    sget v0, Lorg/wikipedia/R$id;->headerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->setCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V
    .locals 2

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->card:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    .line 34
    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V

    .line 38
    :cond_0
    sget v0, Lorg/wikipedia/R$id;->cardItemContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->header(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    .line 44
    invoke-direct {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->updateContents()V

    return-void
.end method

.method public updateCardContent(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->setCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V

    return-void
.end method
