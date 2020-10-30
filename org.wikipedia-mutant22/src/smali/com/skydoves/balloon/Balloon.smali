.class public final Lcom/skydoves/balloon/Balloon;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/balloon/Balloon$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalloon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon\n+ 2 IconForm.kt\ncom/skydoves/balloon/IconFormKt\n+ 3 TextForm.kt\ncom/skydoves/balloon/TextFormKt\n*L\n1#1,1355:1\n380#1,14:1358\n404#1,4:1372\n414#1,6:1376\n380#1,14:1382\n404#1,4:1396\n414#1,6:1400\n380#1,14:1406\n404#1,4:1420\n414#1,6:1424\n380#1,14:1430\n404#1,4:1444\n414#1,6:1448\n380#1,14:1454\n404#1,4:1468\n414#1,6:1472\n380#1,14:1478\n404#1,4:1492\n414#1,6:1496\n380#1,14:1502\n404#1,4:1516\n414#1,6:1520\n380#1,14:1526\n404#1,4:1540\n414#1,6:1544\n380#1,14:1550\n404#1,4:1564\n414#1,6:1568\n380#1,14:1574\n404#1,4:1588\n414#1,6:1592\n380#1,14:1598\n404#1,4:1612\n414#1,6:1616\n380#1,14:1622\n404#1,4:1636\n414#1,6:1640\n640#1,5:1646\n640#1,5:1651\n35#2:1356\n36#3:1357\n*E\n*S KotlinDebug\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon\n*L\n424#1,14:1358\n424#1,4:1372\n436#1,6:1376\n440#1,14:1382\n440#1,4:1396\n448#1,6:1400\n454#1,14:1406\n454#1,4:1420\n462#1,6:1424\n468#1,14:1430\n468#1,4:1444\n476#1,6:1448\n482#1,14:1454\n482#1,4:1468\n494#1,6:1472\n500#1,14:1478\n500#1,4:1492\n512#1,6:1496\n518#1,14:1502\n518#1,4:1516\n530#1,6:1520\n536#1,14:1526\n536#1,4:1540\n548#1,6:1544\n554#1,14:1550\n554#1,4:1564\n565#1,6:1568\n571#1,14:1574\n571#1,4:1588\n582#1,6:1592\n588#1,14:1598\n588#1,4:1612\n599#1,6:1616\n605#1,14:1622\n605#1,4:1636\n616#1,6:1640\n622#1,5:1646\n632#1,5:1651\n315#1:1356\n329#1:1357\n*E\n"
.end annotation


# instance fields
.field private final balloonPersistence:Lcom/skydoves/balloon/BalloonPersistence;

.field private final binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

.field private final bodyWindow:Landroid/widget/PopupWindow;

.field private final builder:Lcom/skydoves/balloon/Balloon$Builder;

.field private final context:Landroid/content/Context;

.field private destroyed:Z

.field private isShowing:Z

.field private onBalloonClickListener:Lcom/skydoves/balloon/OnBalloonClickListener;

.field private onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

.field private onBalloonInitializedListener:Lcom/skydoves/balloon/OnBalloonInitializedListener;

.field private onBalloonOutsideTouchListener:Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;

.field private supportRtlLayoutFactor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/skydoves/balloon/Balloon$Builder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object p1

    const-string p2, "LayoutBalloonBinding.inf\u2026om(context), null, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    .line 95
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->isRtlSupport:Z

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/skydoves/balloon/DefinitionKt;->unaryMinus(IZ)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon;->supportRtlLayoutFactor:I

    .line 96
    sget-object p1, Lcom/skydoves/balloon/BalloonPersistence;->Companion:Lcom/skydoves/balloon/BalloonPersistence$Companion;

    iget-object p2, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/skydoves/balloon/BalloonPersistence$Companion;->getInstance(Landroid/content/Context;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object p1

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon;->balloonPersistence:Lcom/skydoves/balloon/BalloonPersistence;

    .line 99
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {p2}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 101
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->createByBuilder()V

    return-void
.end method

.method public static final synthetic access$applyBalloonAnimation(Lcom/skydoves/balloon/Balloon;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->applyBalloonAnimation()V

    return-void
.end method

.method public static final synthetic access$getArrowConstraintPositionX(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)F
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getArrowConstraintPositionY(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)F
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->balloonPersistence:Lcom/skydoves/balloon/BalloonPersistence;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    return-object p0
.end method

.method public static final synthetic access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    return-object p0
.end method

.method public static final synthetic access$getDestroyed$p(Lcom/skydoves/balloon/Balloon;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    return p0
.end method

.method public static final synthetic access$getSupportRtlLayoutFactor$p(Lcom/skydoves/balloon/Balloon;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/skydoves/balloon/Balloon;->supportRtlLayoutFactor:I

    return p0
.end method

.method public static final synthetic access$initializeArrow(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/skydoves/balloon/Balloon;->initializeArrow(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setShowing$p(Lcom/skydoves/balloon/Balloon;Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    return-void
.end method

.method private final applyBalloonAnimation()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimationStyle:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    .line 363
    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    sget-object v1, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$4:[I

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

    .line 371
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/balloon/R$style;->Normal:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/balloon/R$style;->Overshoot:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/balloon/R$style;->Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "bodyWindow.contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-wide v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->circularDuration:J

    invoke-static {v0, v1, v2}, Lcom/skydoves/balloon/extensions/ViewExtensionKt;->circularRevealed(Landroid/view/View;J)V

    .line 367
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/balloon/R$style;->NormalDispose:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/balloon/R$style;->Elastic:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void
.end method

.method private final createByBuilder()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeBackground()V

    .line 106
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeBalloonWindow()V

    .line 107
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeBalloonContent()V

    .line 108
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeBalloonListeners()V

    .line 110
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->layoutRes:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeCustomLayoutWithResource()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->layout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeCustomLayoutWithView()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeIcon()V

    .line 116
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->initializeText()V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    return-void
.end method

.method private final getArrowConstraintPositionX(Landroid/view/View;)F
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "bodyWindow.contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/skydoves/balloon/Balloon;->getWindowBodyScreenLocation(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 193
    invoke-direct {p0, p1}, Lcom/skydoves/balloon/Balloon;->getWindowBodyScreenLocation(Landroid/view/View;)[I

    move-result-object v2

    aget v1, v2, v1

    .line 194
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->getMinArrowPosition()F

    move-result v2

    .line 195
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    .line 196
    iget-object v4, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v5, v4, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 197
    iget-object v4, v4, Lcom/skydoves/balloon/Balloon$Builder;->arrowConstraints:Lcom/skydoves/balloon/ArrowConstraints;

    sget-object v6, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v4, v0, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v4

    add-int/2addr v4, v0

    if-ge v4, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v4, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v4, v4, Lcom/skydoves/balloon/Balloon$Builder;->arrowPosition:F

    mul-float p1, p1, v4

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sub-float/2addr p1, v5

    .line 207
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getDoubleArrowSize()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getDoubleArrowSize()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p1

    goto :goto_1

    .line 200
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 198
    :cond_5
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {p1}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowPosition:F

    mul-float p1, p1, v0

    sub-float v2, p1, v5

    :goto_1
    return v2
.end method

.method private final getArrowConstraintPositionY(Landroid/view/View;)F
    .locals 9

    .line 219
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "bodyWindow.contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/skydoves/balloon/Balloon;->getWindowBodyScreenLocation(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 220
    invoke-direct {p0, p1}, Lcom/skydoves/balloon/Balloon;->getWindowBodyScreenLocation(Landroid/view/View;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getStatusBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 221
    invoke-direct {p0}, Lcom/skydoves/balloon/Balloon;->getMinArrowPosition()F

    move-result v3

    .line 222
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 223
    iget-object v5, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v6, v5, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    const/4 v7, 0x2

    div-int/2addr v6, v7

    .line 224
    iget-object v5, v5, Lcom/skydoves/balloon/Balloon$Builder;->arrowConstraints:Lcom/skydoves/balloon/ArrowConstraints;

    sget-object v8, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    if-eq v5, v1, :cond_5

    if-ne v5, v7, :cond_4

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v1

    add-int/2addr v1, v0

    if-ge v1, v2, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowPosition:F

    mul-float p1, p1, v1

    int-to-float v1, v2

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    int-to-float v0, v6

    sub-float/2addr p1, v0

    .line 234
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getDoubleArrowSize()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getDoubleArrowSize()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, p1

    goto :goto_1

    .line 227
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 225
    :cond_5
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {p1}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowPosition:F

    mul-float p1, p1, v0

    int-to-float v0, v6

    sub-float v3, p1, v0

    :goto_1
    return v3
.end method

.method private final getMeasureTextWidth(I)I
    .locals 6

    .line 712
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->displaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 714
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->space:I

    .line 715
    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->padding:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 716
    :cond_0
    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingLeft:I

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingRight:I

    add-int/2addr v3, v1

    :goto_0
    add-int/2addr v2, v3

    .line 717
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    const/16 v3, 0x18

    invoke-static {v1, v3}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 718
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 719
    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconSize:I

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconSpace:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 723
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->widthRatio:F

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-eqz v5, :cond_2

    int-to-float p1, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    sub-int/2addr p1, v2

    goto :goto_2

    .line 725
    :cond_2
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    if-eq v1, v4, :cond_3

    if-gt v1, v0, :cond_3

    sub-int p1, v1, v2

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    return p1
.end method

.method private final getMinArrowPosition()F
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    int-to-float v1, v1

    iget v2, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPaddingRatio:F

    mul-float v1, v1, v2

    .line 170
    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPadding:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    return v1
.end method

.method private final getWindowBodyScreenLocation(Landroid/view/View;)[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 174
    fill-array-data v0, :array_0

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final initializeArrow(Landroid/view/View;)V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    .line 123
    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/ViewExtensionKt;->visible(Landroid/view/View;Z)V

    .line 124
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    sget-object v3, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const-string v4, "binding.balloonContent"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    .line 139
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v3, v3, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 135
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v3, v3, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    .line 131
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v3, v3, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 127
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v3, v3, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x43340000    # 180.0f

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 143
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->alpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowLeftPadding:I

    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowTopPadding:I

    .line 147
    iget v4, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowRightPadding:I

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowBottomPadding:I

    .line 146
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 148
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowColor:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_5

    .line 149
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 151
    :cond_5
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {v1}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final initializeBackground()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    .line 246
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->alpha:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 247
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 248
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 249
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 250
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->cornerRadius:F

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private final initializeBalloonContent()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    .line 301
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v1, -0x2

    add-int/lit8 v4, v1, -0x2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 304
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 305
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->padding:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 306
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 308
    :cond_0
    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingLeft:I

    iget v3, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingTop:I

    .line 309
    iget v4, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingRight:I

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->paddingBottom:I

    .line 308
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private final initializeBalloonListeners()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->onBalloonClickListener:Lcom/skydoves/balloon/OnBalloonClickListener;

    iput-object v1, p0, Lcom/skydoves/balloon/Balloon;->onBalloonClickListener:Lcom/skydoves/balloon/OnBalloonClickListener;

    .line 270
    iget-object v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

    iput-object v1, p0, Lcom/skydoves/balloon/Balloon;->onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

    .line 271
    iget-object v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->onBalloonInitializedListener:Lcom/skydoves/balloon/OnBalloonInitializedListener;

    iput-object v1, p0, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/OnBalloonInitializedListener;

    .line 272
    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->onBalloonOutsideTouchListener:Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;

    iput-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonOutsideTouchListener:Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;

    .line 273
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;

    invoke-direct {v1, p0}, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$1;-><init>(Lcom/skydoves/balloon/Balloon;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 278
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 279
    new-instance v1, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;

    invoke-direct {v1, p0}, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$1;-><init>(Lcom/skydoves/balloon/Balloon;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 283
    new-instance v1, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$2;

    invoke-direct {v1, p0}, Lcom/skydoves/balloon/Balloon$initializeBalloonListeners$$inlined$with$lambda$2;-><init>(Lcom/skydoves/balloon/Balloon;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final initializeBalloonWindow()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 260
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 261
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    :cond_0
    return-void
.end method

.method private final initializeCustomLayoutWithResource()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 353
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->layoutRes:I

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v2, v2, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void

    .line 352
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeCustomLayoutWithView()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 358
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final initializeIcon()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 316
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconForm:Lcom/skydoves/balloon/IconForm;

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/ImageViewExtensionKt;->applyIconForm(Lcom/skydoves/balloon/vectortext/VectorTextView;Lcom/skydoves/balloon/IconForm;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/skydoves/balloon/IconForm$Builder;

    invoke-direct {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;->setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/skydoves/balloon/IconForm$Builder;

    .line 320
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconSize:I

    invoke-virtual {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;->setIconSize(I)Lcom/skydoves/balloon/IconForm$Builder;

    .line 321
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconColor:I

    invoke-virtual {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;->setIconColor(I)Lcom/skydoves/balloon/IconForm$Builder;

    .line 322
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconSpace:I

    invoke-virtual {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;->setIconSpace(I)Lcom/skydoves/balloon/IconForm$Builder;

    .line 323
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    invoke-virtual {v2, v1}, Lcom/skydoves/balloon/IconForm$Builder;->setDrawableGravity(Lcom/skydoves/balloon/IconGravity;)Lcom/skydoves/balloon/IconForm$Builder;

    .line 35
    invoke-virtual {v2}, Lcom/skydoves/balloon/IconForm$Builder;->build()Lcom/skydoves/balloon/IconForm;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/ImageViewExtensionKt;->applyIconForm(Lcom/skydoves/balloon/vectortext/VectorTextView;Lcom/skydoves/balloon/IconForm;)V

    :goto_0
    return-void
.end method

.method private final initializeText()V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 330
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textForm:Lcom/skydoves/balloon/TextForm;

    const-string v2, "context"

    if-eqz v1, :cond_0

    .line 331
    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/TextViewExtensionKt;->applyTextForm(Landroid/widget/TextView;Lcom/skydoves/balloon/TextForm;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v3, Lcom/skydoves/balloon/TextForm$Builder;

    invoke-direct {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setText(Ljava/lang/CharSequence;)Lcom/skydoves/balloon/TextForm$Builder;

    .line 334
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textSize:F

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextSize(F)Lcom/skydoves/balloon/TextForm$Builder;

    .line 335
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textColor:I

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextColor(I)Lcom/skydoves/balloon/TextForm$Builder;

    .line 336
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textIsHtml:Z

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextIsHtml(Z)Lcom/skydoves/balloon/TextForm$Builder;

    .line 337
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textGravity:I

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextGravity(I)Lcom/skydoves/balloon/TextForm$Builder;

    .line 338
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textTypeface:I

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextTypeface(I)Lcom/skydoves/balloon/TextForm$Builder;

    .line 339
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->textTypefaceObject:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Lcom/skydoves/balloon/TextForm$Builder;->setTextTypeface(Landroid/graphics/Typeface;)Lcom/skydoves/balloon/TextForm$Builder;

    .line 36
    invoke-virtual {v3}, Lcom/skydoves/balloon/TextForm$Builder;->build()Lcom/skydoves/balloon/TextForm;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/TextViewExtensionKt;->applyTextForm(Landroid/widget/TextView;Lcom/skydoves/balloon/TextForm;)V

    :goto_0
    const/4 v1, 0x0

    .line 342
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 344
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->displaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 345
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 346
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/skydoves/balloon/Balloon;->getMeasureTextWidth(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 5

    .line 648
    iget-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    if-eqz v0, :cond_1

    .line 649
    new-instance v0, Lcom/skydoves/balloon/Balloon$dismiss$dismissWindow$1;

    invoke-direct {v0, p0}, Lcom/skydoves/balloon/Balloon$dismiss$dismissWindow$1;-><init>(Lcom/skydoves/balloon/Balloon;)V

    .line 653
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    sget-object v2, Lcom/skydoves/balloon/BalloonAnimation;->CIRCULAR:Lcom/skydoves/balloon/BalloonAnimation;

    if-ne v1, v2, :cond_0

    .line 654
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "this.bodyWindow.contentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-wide v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->circularDuration:J

    new-instance v4, Lcom/skydoves/balloon/Balloon$dismiss$1;

    invoke-direct {v4, v0}, Lcom/skydoves/balloon/Balloon$dismiss$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2, v3, v4}, Lcom/skydoves/balloon/extensions/ViewExtensionKt;->circularUnRevealed(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissWithDelay(J)V
    .locals 2

    .line 665
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/skydoves/balloon/Balloon$dismissWithDelay$1;

    invoke-direct {v1, p0}, Lcom/skydoves/balloon/Balloon$dismissWithDelay$1;-><init>(Lcom/skydoves/balloon/Balloon;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.balloonCard"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDoubleArrowSize()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getMeasureHeight()I
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const-string v1, "this.binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final getMeasureWidth()I
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->displaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 702
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->widthRatio:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-eqz v3, :cond_0

    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 703
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->space:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 704
    :cond_0
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-ge v1, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {v1}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_0

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const-string v1, "this.binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getOnBalloonClickListener()Lcom/skydoves/balloon/OnBalloonClickListener;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonClickListener:Lcom/skydoves/balloon/OnBalloonClickListener;

    return-object v0
.end method

.method public final getOnBalloonDismissListener()Lcom/skydoves/balloon/OnBalloonDismissListener;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

    return-object v0
.end method

.method public final getOnBalloonInitializedListener()Lcom/skydoves/balloon/OnBalloonInitializedListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/OnBalloonInitializedListener;

    return-object v0
.end method

.method public final getOnBalloonOutsideTouchListener()Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonOutsideTouchListener:Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;

    return-object v0
.end method

.method public final getStatusBarHeight()I
    .locals 3

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->isStatusBarVisible:Z

    if-eqz v2, :cond_0

    .line 182
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "context.window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 183
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    return v0
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 757
    iput-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    .line 758
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    iget-boolean v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenLifecycleOnPause:Z

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_0
    return-void
.end method

.method public final relayShowAlignBottom(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)Lcom/skydoves/balloon/Balloon;
    .locals 1

    const-string v0, "balloon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;-><init>(Lcom/skydoves/balloon/Balloon;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public final setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    new-instance v0, Lcom/skydoves/balloon/Balloon$setOnBalloonDismissListener$1;

    invoke-direct {v0, p1}, Lcom/skydoves/balloon/Balloon$setOnBalloonDismissListener$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/skydoves/balloon/Balloon;->onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

    return-void
.end method

.method public final showAlignBottom(Landroid/view/View;)V
    .locals 5

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getDestroyed$p(Lcom/skydoves/balloon/Balloon;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 381
    invoke-static {p0, v0}, Lcom/skydoves/balloon/Balloon;->access$setShowing$p(Lcom/skydoves/balloon/Balloon;Z)V

    .line 382
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->preferenceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v2

    iget v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->showTimes:I

    invoke-virtual {v1, v0, v2}, Lcom/skydoves/balloon/BalloonPersistence;->shouldShowUP(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/skydoves/balloon/BalloonPersistence;->putIncrementedTimes(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-wide v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->autoDismissDuration:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/skydoves/balloon/Balloon;->dismissWithDelay(J)V

    .line 393
    :cond_1
    new-instance v0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;

    invoke-direct {v0, p0, p1, p0, p1}, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;-><init>(Lcom/skydoves/balloon/Balloon;Landroid/view/View;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object p1

    iget-boolean p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenShowAgain:Z

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showAlignBottom(Landroid/view/View;II)V
    .locals 12

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getDestroyed$p(Lcom/skydoves/balloon/Balloon;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 381
    invoke-static {p0, v0}, Lcom/skydoves/balloon/Balloon;->access$setShowing$p(Lcom/skydoves/balloon/Balloon;Z)V

    .line 382
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->preferenceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v2

    iget v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->showTimes:I

    invoke-virtual {v1, v0, v2}, Lcom/skydoves/balloon/BalloonPersistence;->shouldShowUP(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/skydoves/balloon/BalloonPersistence;->putIncrementedTimes(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-wide v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->autoDismissDuration:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/skydoves/balloon/Balloon;->dismissWithDelay(J)V

    .line 393
    :cond_1
    new-instance v0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$2;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p0

    move-object v9, p1

    move v10, p2

    move v11, p3

    invoke-direct/range {v5 .. v11}, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$2;-><init>(Lcom/skydoves/balloon/Balloon;Landroid/view/View;Lcom/skydoves/balloon/Balloon;Landroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object p1

    iget-boolean p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenShowAgain:Z

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showAlignTop(Landroid/view/View;II)V
    .locals 12

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getDestroyed$p(Lcom/skydoves/balloon/Balloon;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 381
    invoke-static {p0, v0}, Lcom/skydoves/balloon/Balloon;->access$setShowing$p(Lcom/skydoves/balloon/Balloon;Z)V

    .line 382
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->preferenceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v2

    iget v2, v2, Lcom/skydoves/balloon/Balloon$Builder;->showTimes:I

    invoke-virtual {v1, v0, v2}, Lcom/skydoves/balloon/BalloonPersistence;->shouldShowUP(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBalloonPersistence$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/BalloonPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/skydoves/balloon/BalloonPersistence;->putIncrementedTimes(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-wide v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->autoDismissDuration:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/skydoves/balloon/Balloon;->dismissWithDelay(J)V

    .line 393
    :cond_1
    new-instance v0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p0

    move-object v9, p1

    move v10, p2

    move v11, p3

    invoke-direct/range {v5 .. v11}, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;-><init>(Lcom/skydoves/balloon/Balloon;Landroid/view/View;Lcom/skydoves/balloon/Balloon;Landroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-static {p0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object p1

    iget-boolean p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenShowAgain:Z

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
