.class public final Lcom/skydoves/balloon/vectortext/VectorTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VectorTextView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorTextView.kt\ncom/skydoves/balloon/vectortext/VectorTextView\n*L\n1#1,69:1\n*E\n"
.end annotation


# instance fields
.field private drawableTextViewParams:Lcom/skydoves/balloon/vectortext/VectorTextViewParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/skydoves/balloon/vectortext/VectorTextView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v0, p2

    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/skydoves/balloon/R$styleable;->VectorTextView:[I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    new-instance v15, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    move-object v1, v15

    .line 46
    sget v2, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableLeft:I

    const/high16 v14, -0x80000000

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 47
    invoke-static {v2}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    .line 48
    sget v3, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableRight:I

    invoke-virtual {v0, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 49
    invoke-static {v3}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    sget v4, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableBottom:I

    invoke-virtual {v0, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 51
    invoke-static {v4}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v4

    .line 52
    sget v5, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableTop:I

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 53
    invoke-static {v5}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 55
    sget v12, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawablePadding:I

    .line 54
    invoke-virtual {v0, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 56
    invoke-static {v12}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v12

    .line 57
    sget v13, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableTintColor:I

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 58
    invoke-static {v13}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v13

    .line 59
    sget v6, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableWidth:I

    invoke-virtual {v0, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 60
    invoke-static {v6}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v7, -0x80000000

    move-object v14, v6

    .line 61
    sget v6, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 62
    invoke-static {v6}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v19, v15

    move-object v15, v6

    .line 63
    sget v6, Lcom/skydoves/balloon/R$styleable;->VectorTextView_drawableSquareSize:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 64
    invoke-static {v6}, Lcom/skydoves/balloon/DefinitionKt;->takeIfNotNoIntValue(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3f0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 45
    invoke-direct/range {v1 .. v18}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/skydoves/balloon/vectortext/VectorTextView;->setDrawableTextViewParams(Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    return-void
.end method


# virtual methods
.method public final getDrawableTextViewParams()Lcom/skydoves/balloon/vectortext/VectorTextViewParams;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextView;->drawableTextViewParams:Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    return-object v0
.end method

.method public final setDrawableTextViewParams(Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/skydoves/balloon/extensions/TextViewExtensionKt;->applyDrawable(Landroid/widget/TextView;Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextView;->drawableTextViewParams:Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    return-void
.end method
