.class public Lorg/wikipedia/util/AnimationUtil$PagerTransformer;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagerTransformer"
.end annotation


# instance fields
.field private rtl:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lorg/wikipedia/util/AnimationUtil$PagerTransformer;->rtl:Z

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 8

    .line 20
    iget-boolean v0, p0, Lorg/wikipedia/util/AnimationUtil$PagerTransformer;->rtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v0, :cond_3

    cmpg-float v0, p2, v5

    if-gez v0, :cond_0

    .line 23
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    .line 24
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-float p2, p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_0

    :cond_0
    cmpg-float v0, p2, v7

    if-gtz v0, :cond_1

    mul-float v2, v2, p2

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    neg-float p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_0

    :cond_1
    cmpg-float v0, p2, v6

    if-gtz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    invoke-static {v4}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    neg-float v0, p2

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    mul-float p2, p2, v3

    sub-float/2addr v6, p2

    .line 39
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 41
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    .line 45
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-float p2, p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    :cond_3
    cmpl-float v0, p2, v6

    if-lez v0, :cond_4

    .line 51
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    .line 52
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-float p2, p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    :cond_4
    cmpl-float v0, p2, v7

    if-lez v0, :cond_5

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    invoke-static {v4}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    neg-float v0, p2

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    mul-float p2, p2, v3

    sub-float/2addr v6, p2

    .line 61
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 63
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_5
    cmpl-float v0, p2, v5

    if-ltz v0, :cond_6

    mul-float v2, v2, p2

    neg-float v0, v2

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    div-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    neg-float p2, p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/View;->setRotation(F)V

    .line 73
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-float p2, p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    :goto_0
    return-void
.end method
