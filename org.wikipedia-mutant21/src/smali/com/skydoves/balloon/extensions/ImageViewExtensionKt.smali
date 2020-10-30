.class public final Lcom/skydoves/balloon/extensions/ImageViewExtensionKt;
.super Ljava/lang/Object;
.source "ImageViewExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageViewExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageViewExtension.kt\ncom/skydoves/balloon/extensions/ImageViewExtensionKt\n*L\n1#1,53:1\n*E\n"
.end annotation


# direct methods
.method public static final applyIconForm(Lcom/skydoves/balloon/vectortext/VectorTextView;Lcom/skydoves/balloon/IconForm;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "$this$applyIconForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "iconForm"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 27
    new-instance v1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getIconSize()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getIconSpace()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getIconColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x74ff

    const/16 v20, 0x0

    .line 27
    invoke-direct/range {v3 .. v20}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getIconGravity()Lcom/skydoves/balloon/IconGravity;

    move-result-object v3

    sget-object v4, Lcom/skydoves/balloon/extensions/ImageViewExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawableRes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableRightRes(Ljava/lang/Integer;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableBottom(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawableRes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableBottomRes(Ljava/lang/Integer;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableTop(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawableRes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableTopRes(Ljava/lang/Integer;)V

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/skydoves/balloon/IconForm;->getDrawableRes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->setDrawableLeftRes(Ljava/lang/Integer;)V

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lcom/skydoves/balloon/vectortext/VectorTextView;->setDrawableTextViewParams(Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V

    :cond_4
    return-void
.end method
