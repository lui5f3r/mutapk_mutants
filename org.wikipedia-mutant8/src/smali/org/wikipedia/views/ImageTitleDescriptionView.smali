.class public final Lorg/wikipedia/views/ImageTitleDescriptionView;
.super Landroid/widget/LinearLayout;
.source "ImageTitleDescriptionView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private tooltipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 19
    iput-object p2, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->tooltipText:Ljava/lang/String;

    const p2, 0x7f0c0108

    .line 22
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance p1, Lorg/wikipedia/views/ImageTitleDescriptionView$1;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/ImageTitleDescriptionView$1;-><init>(Lorg/wikipedia/views/ImageTitleDescriptionView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/ImageTitleDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->tooltipText:Ljava/lang/String;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 2

    const-string v0, "descriptionText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "description"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setGoodnessState(I)V
    .locals 8

    const v0, 0x7f06011a

    const v1, 0x7f060119

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x7f060087

    const v5, 0x7f060086

    const v6, 0x7f0800a2

    if-eqz p1, :cond_5

    const/4 v7, 0x1

    if-eq p1, v7, :cond_4

    const/4 v7, 0x2

    if-eq p1, v7, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const v6, 0x7f0800bd

    const v1, 0x7f0600f2

    const v0, 0x7f0600f4

    const p1, 0x7f100403

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_0
    const p1, 0x7f100404

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_1
    const p1, 0x7f100401

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    goto :goto_1

    :cond_2
    const p1, 0x7f1003ff

    const-wide v0, 0x404b800000000000L    # 55.0

    goto :goto_0

    :cond_3
    const p1, 0x7f100405

    const-wide v0, 0x4052c00000000000L    # 75.0

    goto :goto_0

    :cond_4
    const p1, 0x7f1003fe

    const-wide v0, 0x4055400000000000L    # 85.0

    goto :goto_0

    :cond_5
    const p1, 0x7f100402

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    move-wide v4, v0

    const v0, 0x7f060087

    const v1, 0x7f060086

    .line 61
    :goto_1
    sget v7, Lorg/wikipedia/R$id;->circularProgressBar:I

    invoke-virtual {p0, v7}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/wikipedia/views/CircularProgressBar;

    invoke-virtual {v7, v4, v5}, Lorg/wikipedia/views/CircularProgressBar;->setCurrentProgress(D)V

    .line 62
    sget v4, Lorg/wikipedia/R$id;->circularProgressBar:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/CircularProgressBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/wikipedia/views/CircularProgressBar;->setProgressBackgroundColor(I)V

    .line 63
    sget v4, Lorg/wikipedia/R$id;->circularProgressBar:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/CircularProgressBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/wikipedia/views/CircularProgressBar;->setProgressColor(I)V

    .line 64
    sget v4, Lorg/wikipedia/R$id;->circularProgressBar:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/CircularProgressBar;

    const-string v5, "circularProgressBar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    sget v4, Lorg/wikipedia/R$id;->circularProgressBarOverlay:I

    invoke-virtual {p0, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 67
    sget v0, Lorg/wikipedia/R$id;->circularProgressBarOverlay:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "circularProgressBarOverlay"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    sget v0, Lorg/wikipedia/R$id;->title:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "title"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget p1, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget p1, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 74
    sget p1, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const v1, 0x7f070198

    .line 75
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    int-to-float v3, v3

    mul-float v1, v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    sget v1, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    sget p1, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public final setImageDrawable(I)V
    .locals 2

    .line 41
    sget v0, Lorg/wikipedia/R$id;->image:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Lorg/wikipedia/R$id;->title:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTooltipText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/wikipedia/views/ImageTitleDescriptionView;->tooltipText:Ljava/lang/String;

    return-void
.end method
