.class public final Lorg/wikipedia/commons/FilePageView;
.super Landroid/widget/LinearLayout;
.source "FilePageView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0c0103

    .line 39
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v0, Lorg/wikipedia/commons/FilePageView$movementMethod$1;

    invoke-direct {v0, p1}, Lorg/wikipedia/commons/FilePageView$movementMethod$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageView;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/commons/FilePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 187
    new-instance v0, Lorg/wikipedia/views/ImageDetailView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/wikipedia/views/ImageDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    sget v1, Lorg/wikipedia/R$id;->titleContainer:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "view.titleContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    sget v1, Lorg/wikipedia/R$id;->contentContainer:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v3, "view.contentContainer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    sget v1, Lorg/wikipedia/R$id;->actionButton:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "view.actionButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    sget v1, Lorg/wikipedia/R$id;->actionButton:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget p1, Lorg/wikipedia/R$id;->actionButton:I

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget p1, Lorg/wikipedia/R$id;->detailsContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final addDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 148
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final addDetail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 152
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 156
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 160
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_7

    .line 161
    new-instance v2, Lorg/wikipedia/views/ImageDetailView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lorg/wikipedia/views/ImageDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    sget v3, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {v2, v3}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "view.titleText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget p2, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v3, "view.contentText"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->strip(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget p2, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lorg/wikipedia/richtext/RichTextUtil;->removeUnderlinesFromLinks(Landroid/widget/TextView;)V

    if-eqz p4, :cond_3

    .line 165
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 166
    sget p2, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0400c5

    invoke-static {p3, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    sget p2, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 168
    sget p2, Lorg/wikipedia/R$id;->externalLink:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string p3, "view.externalLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    sget p2, Lorg/wikipedia/R$id;->contentContainer:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lorg/wikipedia/commons/FilePageView$addDetail$1;

    invoke-direct {p3, p0, p4}, Lorg/wikipedia/commons/FilePageView$addDetail$1;-><init>(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 173
    :cond_4
    sget p2, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {v2, p2}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/wikipedia/commons/FilePageView;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_3
    if-nez p1, :cond_5

    .line 176
    sget p1, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {v2, p1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.divider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p5, :cond_6

    .line 179
    sget p1, Lorg/wikipedia/R$id;->editButton:I

    invoke-virtual {v2, p1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "view.editButton"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    sget p1, Lorg/wikipedia/R$id;->editButton:I

    invoke-virtual {v2, p1}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_6
    sget p1, Lorg/wikipedia/R$id;->detailsContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private final adjustImagePlaceholderHeight(FFF)I
    .locals 1

    const/16 v0, 0x500

    int-to-float v0, v0

    div-float p2, v0, p2

    mul-float p2, p2, p3

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    .line 144
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method private final getImageTags(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, "\n"

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p2

    const-string v0, "commons"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    const-string p2, "WikipediaApp.getInstance().language()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WikipediaApp.getInstance\u2026anguage().appLanguageCode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private final imageCaptionOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 127
    new-instance v0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;-><init>(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    return-object v0
.end method

.method private final imageTagsOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 137
    new-instance v0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;-><init>(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V

    return-object v0
.end method

.method private final loadImage(Lorg/wikipedia/suggestededits/PageSummaryForEdit;III)V
    .locals 2

    .line 121
    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/wikipedia/views/ImageZoomHelper;->setViewZoomable(Landroid/view/View;)V

    .line 122
    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x500

    invoke-static {p1, v1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 123
    sget p1, Lorg/wikipedia/R$id;->imageViewPlaceholder:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "imageViewPlaceholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {p0, v1, p3, p4}, Lorg/wikipedia/commons/FilePageView;->adjustImagePlaceholderHeight(FFF)I

    move-result p3

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic setup$default(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 53
    invoke-virtual/range {v1 .. v12}, Lorg/wikipedia/commons/FilePageView;->setup(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/commons/FilePageView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/commons/FilePageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setup(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lorg/wikipedia/suggestededits/PageSummaryForEdit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            "IIIZZZ",
            "Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryForEdit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageTags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p2, p5, p6, p7}, Lorg/wikipedia/commons/FilePageView;->loadImage(Lorg/wikipedia/suggestededits/PageSummaryForEdit;III)V

    const/4 p5, 0x0

    if-eqz p9, :cond_0

    .line 58
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    const-string p7, "filenameView"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p9, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {p6, p9}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const-string p9, "filenameView.titleText"

    invoke-static {p6, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p9

    const v0, 0x7f1003da

    invoke-virtual {p9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p6, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p9, Lorg/wikipedia/R$id;->titleText:I

    invoke-virtual {p6, p9}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const/high16 p9, 0x41800000    # 16.0f

    const/4 v0, 0x2

    invoke-virtual {p6, v0, p9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p9, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {p6, p9}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const-string p9, "filenameView.contentText"

    invoke-static {p6, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDisplayTitle()Ljava/lang/String;

    move-result-object p9

    invoke-static {p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p9}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p6, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p9, Lorg/wikipedia/R$id;->contentText:I

    invoke-virtual {p6, p9}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const/high16 p9, 0x41c00000    # 24.0f

    invoke-virtual {p6, v0, p9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    sget p6, Lorg/wikipedia/R$id;->filenameView:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lorg/wikipedia/views/ImageDetailView;

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p7, Lorg/wikipedia/R$id;->divider:I

    invoke-virtual {p6, p7}, Lorg/wikipedia/views/ImageDetailView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    const-string p7, "filenameView.divider"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p7, 0x8

    invoke-virtual {p6, p7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    sget p6, Lorg/wikipedia/R$id;->detailsContainer:I

    invoke-virtual {p0, p6}, Lorg/wikipedia/commons/FilePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/LinearLayout;

    invoke-virtual {p6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 68
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p6

    invoke-virtual {p6}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p6

    const/4 p7, 0x1

    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-nez p6, :cond_1

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p6, 0x1

    :goto_1
    if-eqz p6, :cond_5

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    const/4 p6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p6, 0x1

    :goto_3
    if-eqz p6, :cond_5

    if-eqz p10, :cond_5

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    const p9, 0x7f100131

    invoke-virtual {p6, p9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    const-string p9, "context.getString(R.stri\u2026add_image_caption_button)"

    invoke-static {p6, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/commons/FilePageView;->imageCaptionOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)Landroid/view/View$OnClickListener;

    move-result-object p9

    invoke-direct {p0, p6, p9}, Lorg/wikipedia/commons/FilePageView;->addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 70
    :cond_5
    sget-object p6, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 p9, 0x0

    const-string v0, "context.getString(R.stri\u2026Edit, imageFromCommons)))"

    if-eq p11, p6, :cond_6

    if-nez p11, :cond_a

    :cond_6
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p6

    invoke-virtual {p6}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_8

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-nez p6, :cond_7

    goto :goto_4

    :cond_7
    const/4 p6, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p6, 0x1

    :goto_5
    if-eqz p6, :cond_a

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    const p11, 0x7f1003d7

    new-array v1, p7, [Ljava/lang/Object;

    .line 73
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    invoke-direct {p0, p2, p8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p5

    .line 72
    invoke-virtual {p6, p11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object p11

    if-eqz p10, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/commons/FilePageView;->imageCaptionOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)Landroid/view/View$OnClickListener;

    move-result-object p9

    .line 72
    :cond_9
    invoke-direct {p0, p6, p11, p9}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 76
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    const p11, 0x7f1003d5

    new-array v1, p7, [Ljava/lang/Object;

    .line 77
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    invoke-direct {p0, p2, p8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p5

    .line 76
    invoke-virtual {p6, p11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p11

    invoke-virtual {p11}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p11

    if-eqz p11, :cond_c

    invoke-interface {p11}, Ljava/lang/CharSequence;->length()I

    move-result p11

    if-nez p11, :cond_b

    goto :goto_6

    :cond_b
    const/4 p11, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 p11, 0x1

    :goto_7
    if-eqz p11, :cond_d

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object p11

    goto :goto_8

    .line 79
    :cond_d
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p11

    invoke-virtual {p11}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p11

    :goto_8
    if-eqz p10, :cond_e

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/commons/FilePageView;->imageCaptionOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)Landroid/view/View$OnClickListener;

    move-result-object p9

    .line 76
    :cond_e
    invoke-direct {p0, p6, p11, p9}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 82
    :goto_9
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_f

    invoke-direct {p0, p2, p8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_10

    :cond_f
    if-eqz p10, :cond_10

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p6, 0x7f100132

    invoke-virtual {p3, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p6, "context.getString(R.stri\u2026ge_add_image_tags_button)"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lorg/wikipedia/commons/FilePageView;->imageTagsOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/wikipedia/commons/FilePageView;->addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 85
    :cond_10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1003e0

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "context.getString(R.stri\u2026ggested_edits_image_tags)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lorg/wikipedia/commons/FilePageView;->getImageTags(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f1003cc

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "context.getString(R.stri\u2026ion_summary_title_author)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/gallery/ExtMetadata;->artist()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f1003d6

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "context.getString(R.stri\u2026mage_preview_dialog_date)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/gallery/ExtMetadata;->dateTime()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f1003d0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "context.getString(R.stri\u2026ion_summary_title_source)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/gallery/ExtMetadata;->credit()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/commons/FilePageView;->addDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f1003db

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "context.getString(R.stri\u2026preview_dialog_licensing)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p7, p1, p3, p4}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "context.getString(R.stri\u2026preview_dialog_more_info)"

    const p3, 0x7f1003dc

    if-eqz p8, :cond_11

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1003d8

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p6, 0x7f1003d3

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getTitle()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p7, p5

    invoke-virtual {p4, p6, p7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5, p3, p1, p2}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 95
    :cond_11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1003d9

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5, p3, p1, p2}, Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
