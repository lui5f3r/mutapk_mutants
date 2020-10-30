.class public Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;
.super Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;
.source "PhoneArithmetics.java"


# instance fields
.field private final endOvershootPivot:F

.field private final stackedTabCount:I

.field private final stackedTabSpacing:F

.field private final tabInset:I

.field private final tabTitleContainerHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    .line 171
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 172
    sget v0, Lde/mrapp/android/tabswitcher/R$dimen;->tab_title_container_height:I

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabTitleContainerHeight:I

    .line 174
    sget v0, Lde/mrapp/android/tabswitcher/R$dimen;->tab_inset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabInset:I

    .line 175
    sget v0, Lde/mrapp/android/tabswitcher/R$integer;->phone_stacked_tab_count:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabCount:I

    .line 176
    sget v0, Lde/mrapp/android/tabswitcher/R$dimen;->stacked_tab_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabSpacing:F

    .line 177
    sget v0, Lde/mrapp/android/tabswitcher/R$dimen;->end_overshoot_pivot:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->endOvershootPivot:F

    return-void
.end method

.method private getDefaultPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 4

    .line 100
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v3, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    div-float v2, p1, v1

    :goto_0
    return v2

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v3, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v0, v3, :cond_3

    .line 102
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    div-float v2, p1, v1

    :cond_3
    return v2
.end method

.method private getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;
    .locals 2

    .line 78
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    .line 79
    sget-object p1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    return-object p1

    .line 80
    :cond_0
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_1

    .line 81
    sget-object p1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    return-object p1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v0, v1, :cond_3

    .line 83
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method private getPivotWhenOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 3

    .line 154
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    div-float/2addr p1, v1

    return p1

    .line 155
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->endOvershootPivot:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    div-float/2addr p1, v1

    :goto_1
    return p1
.end method

.method private getPivotWhenOvershootingAtStart(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private getPivotWhenSwiping(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 1

    .line 120
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-eq p1, v0, :cond_1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getDefaultPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    return p1

    .line 121
    :cond_1
    :goto_0
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->endOvershootPivot:F

    return p1
.end method


# virtual methods
.method public final animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V
    .locals 2

    .line 284
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animator may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne v0, v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object p3

    .line 290
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areToolbarsShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    aget-object p3, p3, v1

    .line 292
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabInset:I

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p5, :cond_1

    const p5, 0x800003

    .line 293
    invoke-virtual {p0, p1, p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I

    move-result v1

    :cond_1
    add-int/2addr p3, v1

    int-to-float p1, p3

    add-float/2addr p1, p4

    .line 290
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 295
    :cond_2
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 298
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    add-float/2addr p4, p1

    const/4 p1, 0x0

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p5, :cond_3

    .line 299
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p5

    invoke-virtual {p5}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingLeft()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p3

    .line 300
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    sub-float/2addr p5, v0

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    add-float/2addr p4, p5

    .line 301
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p5

    invoke-virtual {p5}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p5

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p5, v0, :cond_4

    .line 302
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p5

    invoke-virtual {p5}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p5

    if-eqz p5, :cond_4

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabCount:I

    int-to-float p1, p1

    iget p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabSpacing:F

    mul-float p1, p1, p5

    div-float/2addr p1, p3

    :cond_4
    sub-float/2addr p4, p1

    .line 298
    invoke-virtual {p2, p4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    :goto_2
    return-void
.end method

.method public final animateRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V
    .locals 2

    .line 434
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animator may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v1, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_0

    mul-float p3, p3, v1

    .line 438
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_2

    mul-float p3, p3, v1

    .line 441
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public final animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V
    .locals 2

    .line 339
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animator may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    .line 343
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public final getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F
    .locals 2

    .line 365
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The drag state may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p3, v0, :cond_0

    .line 370
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getPivotWhenSwiping(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    return p1

    .line 371
    :cond_0
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p3, v0, :cond_1

    .line 372
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getPivotWhenOvershootingAtStart(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    return p1

    .line 373
    :cond_1
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p3, v0, :cond_2

    .line 374
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getPivotWhenOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    return p1

    .line 376
    :cond_2
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getDefaultPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    return p1
.end method

.method public final getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 3

    .line 233
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 237
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    .line 240
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areToolbarsShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    aget-object v0, v0, v2

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabInset:I

    sub-int v2, v0, v1

    :cond_0
    int-to-float v0, v2

    sub-float/2addr p2, v0

    const v0, 0x800003

    .line 243
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2

    .line 246
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr p2, p1

    .line 248
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingRight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p2, p1

    .line 249
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabCount:I

    int-to-float p1, p1

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabSpacing:F

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    add-float/2addr p2, p1

    return p2
.end method

.method public final getRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 2

    .line 403
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 407
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    .line 408
    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result p1

    return p1

    .line 410
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1
.end method

.method public final getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F
    .locals 2

    .line 309
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 313
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    if-eqz p2, :cond_0

    .line 315
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-float p2, p2

    sub-float/2addr v1, p2

    .line 316
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p2

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p2, v0, :cond_1

    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabCount:I

    int-to-float p2, p2

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabSpacing:F

    mul-float p2, p2, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    sub-float/2addr v1, p2

    div-float/2addr v1, p1

    return v1
.end method

.method public final getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 2

    .line 351
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 355
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v1, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p2

    :goto_0
    mul-float p1, p1, p2

    return p1

    .line 358
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p2

    goto :goto_0
.end method

.method public final getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F
    .locals 6

    .line 197
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTabContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const v3, 0x800003

    .line 202
    invoke-virtual {p0, p1, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I

    move-result v3

    const v4, 0x800005

    .line 203
    invoke-virtual {p0, p1, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 204
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v4

    .line 206
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_1

    .line 208
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areToolbarsShown()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    aget-object p1, v4, v2

    .line 209
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabInset:I

    sub-int v2, p1, p2

    .line 210
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v2

    :goto_1
    int-to-float p1, p1

    return p1

    .line 213
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, p2

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v3

    goto :goto_1
.end method

.method public final getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I
    .locals 4

    .line 182
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const v1, 0x800003

    if-eq p2, v1, :cond_1

    const v2, 0x800005

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Invalid gravity"

    .line 184
    invoke-virtual {v0, v2, v3}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingTop()I

    move-result p1

    goto :goto_2

    .line 188
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingBottom()I

    move-result p1

    :goto_2
    return p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 190
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingLeft()I

    move-result p1

    goto :goto_3

    .line 191
    :cond_4
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingRight()I

    move-result p1

    :goto_3
    return p1
.end method

.method public final getTouchPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/MotionEvent;)F
    .locals 2

    .line 221
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The motion event may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1

    .line 227
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public final setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 3

    .line 383
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 386
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v1, :cond_0

    .line 389
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabTitleContainerHeight:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p1

    .line 391
    invoke-virtual {p2}, Landroid/view/View;->getPivotY()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 390
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 392
    invoke-virtual {p2, p3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 394
    :cond_0
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    .line 395
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 396
    invoke-virtual {p2}, Landroid/view/View;->getPivotX()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v1

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 395
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 397
    invoke-virtual {p2, p3}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    return-void
.end method

.method public final setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 3

    .line 258
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 262
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areToolbarsShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    aget-object v0, v0, v2

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->tabInset:I

    sub-int v2, v0, v1

    :cond_0
    const v0, 0x800003

    .line 267
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getTabSwitcherPadding(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;I)I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    add-float/2addr p1, p3

    .line 264
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    add-float/2addr p3, p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p3, p1

    .line 272
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getPaddingRight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr p3, p1

    .line 273
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v1, :cond_2

    .line 274
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabCount:I

    int-to-float p1, p1

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->stackedTabSpacing:F

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    sub-float/2addr p3, p1

    .line 271
    invoke-virtual {p2, p3}, Landroid/view/View;->setX(F)V

    :goto_1
    return-void
.end method

.method public final setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 2

    .line 417
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 421
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v1, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_0

    mul-float p3, p3, v1

    .line 422
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_2

    mul-float p3, p3, v1

    .line 425
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method public final setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 2

    .line 324
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The axis may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p2

    .line 328
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;->getOrientationInvariantAxis(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-ne p1, v0, :cond_0

    .line 329
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    :goto_0
    return-void
.end method
