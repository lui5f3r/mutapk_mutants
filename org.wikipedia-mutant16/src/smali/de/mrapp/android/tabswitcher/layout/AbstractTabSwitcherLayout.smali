.class public abstract Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;
.super Ljava/lang/Object;
.source "AbstractTabSwitcherLayout.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lde/mrapp/android/tabswitcher/model/Model$Listener;
.implements Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;
.implements Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;
.implements Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;
.implements Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$FlingAnimation;,
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;,
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;,
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;,
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;,
        Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;
    }
.end annotation


# instance fields
.field private final arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

.field private callback:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;

.field private firstVisibleIndex:I

.field private flingAnimation:Landroid/view/animation/Animation;

.field private final logger:Lde/mrapp/android/util/logging/Logger;

.field private final model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

.field private runningAnimations:I

.field private final stackedTabSpacing:I

.field private final style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private final touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/layout/Arithmetics;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)V
    .locals 2

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The arithmetics may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The style may not be null"

    invoke-virtual {v0, p4, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1141
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dispatcher may not be null"

    invoke-virtual {v0, p5, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 1143
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 1144
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    .line 1145
    iput-object p4, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    .line 1146
    iput-object p5, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    .line 1147
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1148
    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->stacked_tab_spacing:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->stackedTabSpacing:I

    .line 1149
    new-instance p1, Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object p2

    invoke-direct {p1, p2}, Lde/mrapp/android/util/logging/Logger;-><init>(Lde/mrapp/android/util/logging/LogLevel;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->logger:Lde/mrapp/android/util/logging/Logger;

    const/4 p1, 0x0

    .line 1150
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;

    const/4 p2, 0x0

    .line 1151
    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    .line 1152
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    const/4 p1, -0x1

    .line 1153
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    return-void
.end method

.method static synthetic access$006(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)I
    .locals 1

    .line 76
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    return v0
.end method

.method static synthetic access$008(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)I
    .locals 2

    .line 76
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    return v0
.end method

.method static synthetic access$100(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->notifyOnAnimationsEnded()V

    return-void
.end method

.method static synthetic access$300(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)I
    .locals 0

    .line 76
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->stackedTabSpacing:I

    return p0
.end method

.method static synthetic access$400(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)Landroid/view/animation/Animation;
    .locals 0

    .line 76
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$402(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 76
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private adaptDecorator()V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContentViewRecycler()Lde/mrapp/android/util/view/AbstractViewRecycler;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->onCreateContentRecyclerAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setAdapter(Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;)V

    return-void
.end method

.method private adaptLogLevel()V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    .line 537
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContentViewRecycler()Lde/mrapp/android/util/view/AbstractViewRecycler;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method private adaptToolbarNavigationIcon()V
    .locals 2

    .line 515
    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 518
    aget-object v0, v0, v1

    .line 519
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getToolbarNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 521
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getToolbarNavigationIconListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private adaptToolbarTitle()V
    .locals 3

    .line 503
    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getToolbarTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 507
    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private adaptToolbarVisibility()V
    .locals 6

    .line 486
    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 491
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    .line 490
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculatePositionWhenDraggingToEnd(FLde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Z
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p3, :cond_2

    .line 640
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    .line 659
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateMaxEndPosition(I)F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 662
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 664
    :cond_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 665
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 666
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto :goto_1

    .line 641
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    if-eqz v1, :cond_4

    .line 642
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v1, v2, :cond_6

    .line 643
    :cond_4
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v1

    add-float/2addr v1, p1

    .line 645
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateMaxEndPosition(I)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    .line 648
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 651
    :cond_5
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1, v1, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 652
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 653
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto :goto_1

    .line 654
    :cond_6
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p1, p2, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private calculatePositionWhenDraggingToStart(FLde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Z
    .locals 4

    .line 757
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p3, :cond_2

    .line 759
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v2, v3, :cond_2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 760
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    .line 786
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateMinStartPosition(I)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 789
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 792
    :cond_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 793
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 794
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto/16 :goto_1

    .line 761
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_4

    .line 762
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    add-float/2addr v0, p1

    .line 764
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculateMinStartPosition(I)F

    move-result p1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_3

    .line 767
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 770
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1, v0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 771
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 772
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto :goto_1

    .line 773
    :cond_4
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 774
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p1

    .line 776
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 777
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 778
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    return v1

    .line 780
    :cond_5
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object p3, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq p1, p3, :cond_7

    .line 781
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method private calculatePositionsWhenDraggingToEnd(F)V
    .locals 8

    const/4 v0, -0x1

    .line 599
    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    .line 600
    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 601
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 605
    :goto_0
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 606
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getItemCount()I

    move-result v4

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 607
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    invoke-direct {p0, p1, v3, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionWhenDraggingToEnd(FLde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Z

    move-result v2

    .line 609
    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v4, v6, :cond_1

    .line 610
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    iput v4, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    goto :goto_1

    .line 613
    :cond_0
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v6

    .line 614
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v7

    .line 613
    invoke-virtual {p0, v4, v6, v7}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v4

    .line 615
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    iget-object v7, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 616
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v6, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 619
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calculatePositionsWhenDraggingToStart(F)V
    .locals 7

    .line 679
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 680
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    const/4 v2, 0x0

    .line 681
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 685
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 686
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getItemCount()I

    move-result v4

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v4, v3, :cond_0

    .line 688
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    .line 687
    invoke-direct {p0, p1, v1, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionWhenDraggingToStart(FLde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Z

    move-result v2

    goto :goto_1

    .line 690
    :cond_0
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v5

    .line 691
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v6

    .line 690
    invoke-virtual {p0, v4, v5, v6}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v4

    .line 692
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 693
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v5, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 696
    :goto_1
    invoke-virtual {p0, v1, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    goto :goto_0

    .line 699
    :cond_1
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    if-lez p1, :cond_4

    sub-int/2addr p1, v3

    .line 701
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 702
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0, v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 703
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 705
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 706
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    .line 708
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 709
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v4

    .line 711
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    invoke-virtual {p0, v5, v4, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v4

    .line 712
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 713
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v5, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 714
    invoke-virtual {p0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    .line 716
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v4, v5, :cond_4

    .line 717
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    iput v4, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    .line 723
    :cond_3
    invoke-virtual {p0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePredecessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v2

    .line 724
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 726
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 728
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 729
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    iget-object v5, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 730
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v4, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 731
    invoke-virtual {p0, v1, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    .line 733
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v2

    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v2, v4, :cond_2

    .line 734
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    iput v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method private createFlingAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 570
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)V

    return-object v0
.end method

.method private inflateToolbarMenu()V
    .locals 4

    .line 544
    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getToolbarMenuId()I

    move-result v1

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 548
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 550
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 553
    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 556
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 557
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getToolbarMenuItemListener()Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    :cond_2
    return-void
.end method

.method private notifyOnAnimationsEnded()V
    .locals 1

    .line 804
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;

    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;->onAnimationsEnded()V

    :cond_0
    return-void
.end method

.method private registerEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 1

    .line 448
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;

    if-eqz v0, :cond_0

    .line 449
    check-cast p1, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;

    invoke-virtual {p1, p0}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;)V

    goto :goto_0

    .line 450
    :cond_0
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;

    if-eqz v0, :cond_1

    .line 451
    check-cast p1, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;

    invoke-virtual {p1, p0}, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerEventHandlerCallbacks()V
    .locals 2

    .line 432
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 433
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->registerEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->setCallback(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;)V

    return-void
.end method

.method private unregisterEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 2

    .line 475
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 476
    check-cast p1, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/gesture/SwipeGestureEventHandler$Callback;)V

    goto :goto_0

    .line 477
    :cond_0
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;

    if-eqz v0, :cond_1

    .line 478
    check-cast p1, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/gesture/PullDownGestureEventHandler$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterEventHandlerCallbacks()V
    .locals 2

    .line 459
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 460
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->unregisterEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->setCallback(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;)V

    return-void
.end method


# virtual methods
.method protected abstract calculateAttachedPosition(I)F
.end method

.method protected abstract calculateMaxEndPosition(I)F
.end method

.method protected calculateMinStartPosition(I)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected abstract calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation
.end method

.method protected final calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1024
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1023
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected abstract calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract calculatePredecessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
.end method

.method protected abstract calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
.end method

.method protected final clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 964
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 963
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation

    .line 983
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object p3

    .line 985
    iget-object v0, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    .line 988
    iget-object p1, p3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 989
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1

    .line 991
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object p1

    .line 992
    iget-object p3, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float v0, p2, p3

    if-ltz v0, :cond_1

    .line 995
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    .line 996
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1

    .line 998
    :cond_1
    sget-object p1, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    .line 999
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final detachLayout(Z)Landroidx/core/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1425
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->onDetachLayout(Z)Landroidx/core/util/Pair;

    move-result-object v0

    .line 1426
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->removeAll()V

    .line 1427
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    .line 1428
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->unregisterEventHandlerCallbacks()V

    .line 1429
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->touchEventDispatcher:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->removeEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    if-nez p1, :cond_0

    .line 1432
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-object v0
.end method

.method protected final getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 1

    .line 839
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->arithmetics:Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    return-object v0
.end method

.method public abstract getContentViewRecycler()Lde/mrapp/android/util/view/AbstractViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AbstractViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 882
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler<",
            "*>;"
        }
    .end annotation
.end method

.method protected final getFirstVisibleIndex()I
    .locals 1

    .line 892
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    return v0
.end method

.method protected final getItemCount()I
    .locals 2

    .line 913
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isAddTabButtonShown()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getLogger()Lde/mrapp/android/util/logging/Logger;
    .locals 1

    .line 871
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->logger:Lde/mrapp/android/util/logging/Logger;

    return-object v0
.end method

.method protected final getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 1

    .line 828
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    return-object v0
.end method

.method protected abstract getStackedTabCount()I
.end method

.method protected final getStackedTabSpacing()I
    .locals 1

    .line 860
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->stackedTabSpacing:I

    return v0
.end method

.method protected final getStyle()Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;
    .locals 1

    .line 850
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    return-object v0
.end method

.method protected abstract getTabRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;
.end method

.method protected final getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 1

    .line 817
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object v0
.end method

.method protected abstract getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public final getToolbarMenu()Landroid/view/Menu;
    .locals 3

    .line 1457
    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/layout/TabSwitcherLayout;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1460
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1462
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
.end method

.method public final inflateLayout(Z)V
    .locals 3

    .line 1398
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getThemeHelper()Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 1399
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 1400
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1401
    invoke-virtual {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->onInflateLayout(Landroid/view/LayoutInflater;Z)V

    .line 1402
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->registerEventHandlerCallbacks()V

    .line 1403
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptDecorator()V

    .line 1404
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptLogLevel()V

    if-nez p1, :cond_0

    .line 1407
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarVisibility()V

    .line 1408
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarTitle()V

    .line 1409
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarNavigationIcon()V

    .line 1410
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateToolbarMenu()V

    :cond_0
    return-void
.end method

.method protected final inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V
    .locals 1

    .line 1039
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1042
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->updateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final varargs inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1071
    iget-object p3, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1074
    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;

    invoke-direct {v0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1076
    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1078
    :cond_0
    invoke-interface {p2}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isAnimationRunning()Z
    .locals 1

    .line 1451
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->runningAnimations:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;)Z
.end method

.method protected abstract isOvershootingAtStart()Z
.end method

.method protected final isStackedAtStart(I)Z
    .locals 3

    .line 927
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 928
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 929
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 932
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 933
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    .line 935
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 938
    :cond_1
    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final onAddTabButtonColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onAddedEventHandler(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 0

    .line 1556
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->registerEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    return-void
.end method

.method public final onCancelFling()V
    .locals 3

    .line 1656
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 1658
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    .line 1659
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 1660
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Canceled fling animation"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onClick(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 4

    .line 1623
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v0, :cond_0

    .line 1624
    check-cast p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 1625
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectTab(Lde/mrapp/android/tabswitcher/Tab;)V

    .line 1626
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clicked tab at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isAddTabButtonShown()Z

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1626
    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1628
    :cond_0
    instance-of p1, p1, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    if-eqz p1, :cond_2

    .line 1629
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getAddTabButtonListener()Lde/mrapp/android/tabswitcher/AddTabButtonListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1632
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-interface {p1, v0}, Lde/mrapp/android/tabswitcher/AddTabButtonListener;->onAddTab(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Clicked add tab button"

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreateContentRecyclerAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContentRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 0

    .line 1476
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptDecorator()V

    const/4 p1, 0x1

    .line 1477
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->detachLayout(Z)Landroidx/core/util/Pair;

    .line 1478
    invoke-interface {p0}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    return-void
.end method

.method protected abstract onDetachLayout(Z)Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public final onDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 1569
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-ne p1, v0, :cond_0

    .line 1570
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionsWhenDraggingToEnd(F)V

    goto :goto_0

    .line 1572
    :cond_0
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionsWhenDraggingToStart(F)V

    .line 1575
    :goto_0
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->secondLayoutPass(Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;)V

    .line 1578
    :cond_1
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 1579
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 1578
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_1

    .line 1581
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->isOvershootingAtStart()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1582
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dragging using a distance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " pixels. Drag state is "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", overshoot is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onFling(FJ)V
    .locals 4

    .line 1641
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1642
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$FlingAnimation;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$FlingAnimation;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;F)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 1643
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1644
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->createFlingAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1645
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1646
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1647
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->flingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1648
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started fling animation using a distance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels and a duration of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract onInflateLayout(Landroid/view/LayoutInflater;Z)V
.end method

.method public final onLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 0

    .line 1470
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptLogLevel()V

    return-void
.end method

.method public final onPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 1618
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final onPressStarted(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 5

    .line 1593
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1594
    move-object v0, p1

    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 1595
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 1596
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v3, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabBackgroundColor(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1597
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    if-ne v4, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1598
    :cond_0
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    if-eqz v0, :cond_1

    .line 1599
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getAddTabButtonColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1603
    fill-array-data v0, :array_0

    goto :goto_2

    :cond_3
    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    :goto_2
    const/4 v1, -0x1

    .line 1606
    invoke-virtual {v3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1609
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    .line 1610
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1611
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x10100a1
    .end array-data
.end method

.method public final onRemovedEventHandler(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 0

    .line 1562
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->unregisterEventHandlerCallback(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    return-void
.end method

.method public onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onTabContentBackgroundColorChanged(I)V
    .locals 0

    return-void
.end method

.method public final onTabIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onTabProgressBarColorChanged(I)V
    .locals 0

    return-void
.end method

.method public final onTabTitleColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1510
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateToolbarMenu()V

    return-void
.end method

.method public final onToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1504
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarNavigationIcon()V

    return-void
.end method

.method public final onToolbarTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1498
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarTitle()V

    return-void
.end method

.method public final onToolbarVisibilityChanged(Z)V
    .locals 0

    .line 1493
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->adaptToolbarVisibility()V

    return-void
.end method

.method protected secondLayoutPass(Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;)V
    .locals 0

    return-void
.end method

.method public final setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->callback:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$Callback;

    return-void
.end method

.method protected final setFirstVisibleIndex(I)V
    .locals 0

    .line 903
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->firstVisibleIndex:I

    return-void
.end method

.method protected updateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V
    .locals 2

    .line 1094
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p2

    .line 1095
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1, p2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1096
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    return-void
.end method
