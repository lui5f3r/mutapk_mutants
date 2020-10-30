.class public final Lcom/skydoves/balloon/vectortext/VectorTextViewParams;
.super Ljava/lang/Object;
.source "VectorTextViewParams.kt"


# instance fields
.field private final compoundDrawablePadding:Ljava/lang/Integer;

.field private compoundDrawablePaddingRes:Ljava/lang/Integer;

.field private drawableBottom:Landroid/graphics/drawable/Drawable;

.field private drawableBottomRes:Ljava/lang/Integer;

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableLeftRes:Ljava/lang/Integer;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

.field private drawableRightRes:Ljava/lang/Integer;

.field private drawableTop:Landroid/graphics/drawable/Drawable;

.field private drawableTopRes:Ljava/lang/Integer;

.field private heightRes:Ljava/lang/Integer;

.field private final iconSize:Ljava/lang/Integer;

.field private squareSizeRes:Ljava/lang/Integer;

.field private tintColorRes:Ljava/lang/Integer;

.field private widthRes:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    iput-object p14, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    iput-object p15, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    .line 40
    invoke-direct/range {p1 .. p16}, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCompoundDrawablePadding()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCompoundDrawablePaddingRes()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDrawableBottom()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableBottomRes()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDrawableLeft()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableLeftRes()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDrawableRight()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableRightRes()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDrawableTop()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableTopRes()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHeightRes()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIconSize()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSquareSizeRes()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTintColorRes()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidthRes()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDrawableBottom(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDrawableBottomRes(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    return-void
.end method

.method public final setDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDrawableLeftRes(Ljava/lang/Integer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    return-void
.end method

.method public final setDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDrawableRightRes(Ljava/lang/Integer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    return-void
.end method

.method public final setDrawableTop(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDrawableTopRes(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VectorTextViewParams(drawableLeftRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeftRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableRightRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRightRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableBottomRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottomRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableTopRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTopRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawableTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->drawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compoundDrawablePadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePadding:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->iconSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compoundDrawablePaddingRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->compoundDrawablePaddingRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tintColorRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->tintColorRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widthRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->widthRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", heightRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->heightRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", squareSizeRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->squareSizeRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
