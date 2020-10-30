.class public final Lcom/skydoves/balloon/extensions/TextViewExtensionKt;
.super Ljava/lang/Object;
.source "TextViewExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextViewExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExtension.kt\ncom/skydoves/balloon/extensions/TextViewExtensionKt\n*L\n1#1,85:1\n*E\n"
.end annotation


# direct methods
.method public static final applyDrawable(Landroid/widget/TextView;Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V
    .locals 10

    const-string v0, "$this$applyDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorTextViewParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getIconSize()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "context"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getHeightRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getSquareSizeRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 54
    :goto_1
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getIconSize()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getWidthRes()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getSquareSizeRes()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v1

    .line 59
    :goto_3
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 61
    :cond_8
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableLeftRes()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 59
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getTintColorRes()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->tint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5, v3, v0}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v1

    .line 64
    :goto_4
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableRight()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    goto :goto_5

    .line 66
    :cond_a
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableRightRes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 64
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getTintColorRes()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->tint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v3, v0}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object v5, v1

    .line 69
    :goto_5
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableBottom()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_c

    goto :goto_6

    .line 71
    :cond_c
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableBottomRes()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 69
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getTintColorRes()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->tint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v3, v0}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    :cond_d
    move-object v6, v1

    .line 74
    :goto_6
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableTop()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object v1, v7

    goto :goto_7

    .line 76
    :cond_e
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getDrawableTopRes()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 74
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getTintColorRes()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->tint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1, v3, v0}, Lcom/skydoves/balloon/extensions/DrawableExtensionKt;->resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    :cond_f
    :goto_7
    invoke-virtual {p0, v4, v1, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getCompoundDrawablePadding()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_8

    .line 81
    :cond_10
    invoke-virtual {p1}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->getCompoundDrawablePaddingRes()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_11
    :goto_8
    return-void
.end method

.method public static final applyTextForm(Landroid/widget/TextView;Lcom/skydoves/balloon/TextForm;)V
    .locals 2

    const-string v0, "$this$applyTextForm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextIsHtml()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/skydoves/balloon/extensions/TextViewExtensionKt;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/skydoves/balloon/TextForm;->getTextStyle()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void

    .line 33
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    return-object p0
.end method
