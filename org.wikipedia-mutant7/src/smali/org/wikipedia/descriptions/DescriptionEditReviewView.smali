.class public final Lorg/wikipedia/descriptions/DescriptionEditReviewView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "DescriptionEditReviewView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditReviewView$Companion;
    }
.end annotation


# static fields
.field public static final ARTICLE_EXTRACT_MAX_LINE_WITHOUT_IMAGE:I = 0xf

.field public static final ARTICLE_EXTRACT_MAX_LINE_WITH_IMAGE:I = 0x9

.field public static final Companion:Lorg/wikipedia/descriptions/DescriptionEditReviewView$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditReviewView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->Companion:Lorg/wikipedia/descriptions/DescriptionEditReviewView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0c00ff

    .line 20
    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setDescriptionReviewView(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;)V
    .locals 4

    .line 47
    sget v0, Lorg/wikipedia/R$id;->galleryContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "galleryContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    sget v0, Lorg/wikipedia/R$id;->articleTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget v0, Lorg/wikipedia/R$id;->articleSubtitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget p2, Lorg/wikipedia/R$id;->articleExtract:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getExtractHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const-string v2, "articleExtract"

    const-string v3, "articleImage"

    if-eqz p2, :cond_2

    .line 53
    sget p1, Lorg/wikipedia/R$id;->articleImage:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    sget p1, Lorg/wikipedia/R$id;->articleExtract:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 56
    :cond_2
    sget p2, Lorg/wikipedia/R$id;->articleImage:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    sget p2, Lorg/wikipedia/R$id;->articleImage:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    .line 58
    sget p1, Lorg/wikipedia/R$id;->articleExtract:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_2
    return-void
.end method

.method private final setGalleryReviewView(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;)V
    .locals 3

    .line 63
    sget v0, Lorg/wikipedia/R$id;->articleContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const-string v1, "articleContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 64
    sget v0, Lorg/wikipedia/R$id;->indicatorDivider:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "indicatorDivider"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v0, Lorg/wikipedia/R$id;->galleryDescriptionText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/AppTextView;

    const-string v2, "galleryDescriptionText"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const-string v2, "galleryImage"

    if-eqz p2, :cond_2

    .line 67
    sget p1, Lorg/wikipedia/R$id;->galleryImage:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 69
    :cond_2
    sget p2, Lorg/wikipedia/R$id;->galleryImage:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget p2, Lorg/wikipedia/R$id;->galleryImage:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/wikipedia/views/ViewUtil;->loadImageWithWhiteBackground(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 72
    :goto_2
    sget p1, Lorg/wikipedia/R$id;->licenseView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->darkLicenseView()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final hide()V
    .locals 1

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setSummary(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "summaryForEdit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->setGalleryReviewView(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;)V

    .line 39
    sget p1, Lorg/wikipedia/R$id;->licenseView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    const-string p2, "imageCaptionNotice"

    invoke-virtual {p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->buildLicenseNotice(Ljava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->setDescriptionReviewView(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;)V

    .line 42
    sget p2, Lorg/wikipedia/R$id;->licenseView:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    const-string p1, "articleDescriptionNotice"

    goto :goto_2

    :cond_3
    const-string p1, "defaultNotice"

    :goto_2
    invoke-virtual {p2, p1}, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->buildLicenseNotice(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final show()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
