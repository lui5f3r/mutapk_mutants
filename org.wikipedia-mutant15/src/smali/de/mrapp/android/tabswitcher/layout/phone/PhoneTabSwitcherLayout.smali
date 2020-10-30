.class public Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;
.super Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;
.source "PhoneTabSwitcherLayout.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;
    }
.end annotation


# instance fields
.field private contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

.field private emptyView:Landroid/view/View;

.field private final emptyViewAnimationDuration:J

.field private final hideSwitcherAnimationDuration:J

.field private final maxCameraDistance:I

.field private final maxEndOvershootAngle:F

.field private final maxStartOvershootAngle:F

.field private final peekAnimationDuration:J

.field private final relocateAnimationDuration:J

.field private final revealAnimationDuration:J

.field private final revertOvershootAnimationDuration:J

.field private final showSwitcherAnimationDuration:J

.field private final stackedTabCount:I

.field private final swipeAnimationDuration:J

.field private final swipedTabAlpha:F

.field private final swipedTabDistance:I

.field private final swipedTabScale:F

.field private final tabBorderWidth:I

.field private tabContainer:Landroid/view/ViewGroup;

.field private final tabInset:I

.field private tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

.field private final tabTitleContainerHeight:I

.field private tabViewBottomMargin:I

.field private tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarAnimation:Landroid/view/ViewPropertyAnimator;

.field private final toolbarVisibilityAnimationDelay:J

.field private final toolbarVisibilityAnimationDuration:J


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/layout/phone/PhoneArithmetics;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)V
    .locals 0

    .line 2883
    invoke-direct/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/layout/Arithmetics;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)V

    .line 2884
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2885
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->phone_stacked_tab_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    .line 2886
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    .line 2887
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabBorderWidth:I

    .line 2888
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_title_container_height:I

    .line 2889
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    .line 2890
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->max_camera_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    .line 2891
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 2892
    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->swiped_tab_scale:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2893
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p3

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    .line 2894
    sget p3, Lde/mrapp/android/tabswitcher/R$dimen;->swiped_tab_alpha:I

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2895
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    .line 2896
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->show_switcher_animation_duration:I

    .line 2897
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->showSwitcherAnimationDuration:J

    .line 2898
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->hide_switcher_animation_duration:I

    .line 2899
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->hideSwitcherAnimationDuration:J

    .line 2900
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->toolbar_visibility_animation_duration:I

    .line 2901
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDuration:J

    .line 2902
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->toolbar_visibility_animation_delay:I

    .line 2903
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDelay:J

    .line 2904
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->swipe_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipeAnimationDuration:J

    .line 2905
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->relocate_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDuration:J

    .line 2906
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->revert_overshoot_animation_duration:I

    .line 2907
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    .line 2908
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->reveal_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revealAnimationDuration:J

    .line 2909
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->peek_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->peekAnimationDuration:J

    .line 2910
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->empty_view_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyViewAnimationDuration:J

    .line 2911
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->max_start_overshoot_angle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxStartOvershootAngle:F

    .line 2912
    sget p2, Lde/mrapp/android/tabswitcher/R$integer;->max_end_overshoot_angle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxEndOvershootAngle:F

    .line 2913
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->swiped_tab_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabDistance:I

    const/4 p1, -0x1

    .line 2914
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const/4 p1, 0x0

    .line 2915
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/util/view/AttachedViewRecycler;
    .locals 0

    .line 79
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-object p0
.end method

.method static synthetic access$1000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRemove(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method

.method static synthetic access$10000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$10100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createZoomInAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$10200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$10300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method

.method static synthetic access$1200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    .line 79
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    return p0
.end method

.method static synthetic access$1900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateReveal(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V

    return-void
.end method

.method static synthetic access$2400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->peekAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$2500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animatePeek(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V

    return-void
.end method

.method static synthetic access$2700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialItems(IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Z[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingStackedTabs(Z[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object p2
.end method

.method static synthetic access$3100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZFZLde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingFloatingTabs([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZFZLde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object p1
.end method

.method static synthetic access$3200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenAddingHiddenTabs([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    return-object p1
.end method

.method static synthetic access$3300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    .line 79
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    return p0
.end method

.method static synthetic access$3500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    .line 79
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)F
    .locals 0

    .line 79
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    return p0
.end method

.method static synthetic access$500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$5400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    .line 79
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabDistance:I

    return p0
.end method

.method static synthetic access$5600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I
    .locals 0

    .line 79
    iget p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    return p0
.end method

.method static synthetic access$5802(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)I
    .locals 0

    .line 79
    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    return p1
.end method

.method static synthetic access$5900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)I
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateBottomMargin(Lde/mrapp/android/tabswitcher/model/AbstractItem;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$6000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptViewSize(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-void
.end method

.method static synthetic access$6100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 79
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$6200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    return-void
.end method

.method static synthetic access$6300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;
    .locals 0

    .line 79
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$6800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    return-void
.end method

.method static synthetic access$6900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;ZJ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method static synthetic access$7100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    return-void
.end method

.method static synthetic access$7200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipeAborted(Lde/mrapp/android/tabswitcher/model/AbstractItem;I)V

    return-void
.end method

.method static synthetic access$7300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    return-void
.end method

.method static synthetic access$7900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 79
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenRemovingStackedTab(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method

.method static synthetic access$8300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZLde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateWhenRemovingFloatingTab(Lde/mrapp/android/tabswitcher/model/AbstractItem;FZLde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method

.method static synthetic access$8400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    return-void
.end method

.method static synthetic access$8600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$9000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$9100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9800(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9900(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p0

    return-object p0
.end method

.method private adaptDecorator()V
    .locals 1

    .line 290
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->clearCachedPreviews()V

    return-void
.end method

.method private adaptEmptyView(J)V
    .locals 4

    .line 301
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->detachEmptyView()V

    .line 303
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getEmptyView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 308
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 311
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 312
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 314
    iget-wide p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyViewAnimationDuration:J

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 316
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;II)V
    .locals 2

    .line 2149
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_1

    .line 2150
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2151
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v0, v1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    .line 2152
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    .line 2154
    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_1

    .line 2156
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 2158
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2159
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    const/4 p1, 0x0

    .line 2160
    invoke-virtual {p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    :cond_1
    return-void
.end method

.method private adaptStackOnSwipeAborted(Lde/mrapp/android/tabswitcher/model/AbstractItem;I)V
    .locals 2

    .line 2177
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_0

    .line 2178
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2179
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v0, v1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    .line 2181
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_0

    .line 2183
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    .line 2184
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    .line 2183
    invoke-virtual {p0, v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 2185
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2186
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    const/4 p1, 0x0

    .line 2187
    invoke-virtual {p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateOrRemoveView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    :cond_0
    return-void
.end method

.method private adaptToolbarMargin()V
    .locals 5

    .line 336
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 338
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v2

    .line 339
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    .line 338
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private adaptViewSize(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 5

    .line 2200
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2201
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 2200
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2202
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2203
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 2202
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2204
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result v0

    .line 2205
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2206
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    return-void
.end method

.method private addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 6

    .line 683
    array-length v0, p2

    if-lez v0, :cond_2

    .line 684
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 685
    instance-of v0, p3, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    if-eqz v0, :cond_0

    check-cast p3, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    goto :goto_0

    :cond_0
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    .line 687
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p3

    .line 688
    :goto_0
    array-length v0, p2

    new-array v0, v0, [Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 689
    new-instance v2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;

    array-length v3, p2

    .line 690
    invoke-direct {p0, v0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeLayoutListener([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p3

    invoke-direct {v2, p0, v3, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$CompoundLayoutListener;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;ILandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p3, 0x0

    .line 692
    :goto_1
    array-length v3, p2

    if-ge p3, v3, :cond_2

    .line 693
    aget-object v3, p2, p3

    .line 694
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    add-int v5, p1, p3

    invoke-static {v4, v5, v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    .line 695
    aput-object v3, v0, p3

    new-array v4, v1, [Ljava/lang/Integer;

    .line 696
    invoke-virtual {p0, v3, v2, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 698
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p3

    if-nez p3, :cond_2

    .line 699
    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 701
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p3

    aget-object p2, p2, v1

    if-ne p3, p2, :cond_2

    .line 702
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p2, p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    .line 703
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createAddSelectedTabLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private animateBottomMargin(Landroid/view/View;IJJ)V
    .locals 3

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 453
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    sub-int/2addr p2, v0

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 454
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 455
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 456
    new-instance p3, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 459
    new-instance p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;

    invoke-direct {p3, p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateHideSwitcher()V
    .locals 6

    .line 788
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;)V

    .line 789
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 790
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 793
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 794
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 796
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 795
    :goto_1
    invoke-direct {p0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 797
    :cond_2
    move-object v4, v2

    check-cast v4, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 798
    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 802
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-wide/16 v0, 0x0

    invoke-direct {p0, v3, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 841
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v7

    .line 842
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabBorderWidth:I

    add-int/2addr v0, v1

    neg-int v2, v0

    move-object v0, p0

    move-object v1, v7

    move-wide v3, p2

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateBottomMargin(Landroid/view/View;IJJ)V

    .line 843
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 844
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 845
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 846
    new-instance p2, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p2, p0, p7}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 847
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object p3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-interface {p2, p3, v0, p4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 848
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object p3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p2, p3, v0, p4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 849
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 850
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p3

    sget-object p4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 851
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p7

    invoke-virtual {p7}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p7

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    const/4 v2, 0x0

    if-ne p7, v1, :cond_0

    iget p7, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p7, p7

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    .line 850
    :goto_0
    invoke-interface {p3, p4, v0, p1, p7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 853
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result p3

    .line 855
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p4

    if-ge p4, p3, :cond_1

    .line 856
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object p3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 857
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p4

    sget-object p7, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p4, p7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)F

    move-result p4

    .line 856
    invoke-interface {p2, p3, v0, p1, p4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_3

    .line 858
    :cond_1
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p4

    if-le p4, p3, :cond_3

    .line 859
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p3

    sget-object p4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 860
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p7

    invoke-virtual {p7}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p7

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p7, v1, :cond_2

    goto :goto_1

    :cond_2
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, p2

    .line 859
    :goto_1
    invoke-interface {p3, p4, v0, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_3

    .line 863
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p3

    sget-object p4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 864
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p7

    invoke-virtual {p7}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object p7

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p7, v1, :cond_4

    goto :goto_2

    :cond_4
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, p2

    .line 863
    :goto_2
    invoke-interface {p3, p4, v0, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 868
    :goto_3
    invoke-virtual {v0, p5, p6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 869
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 817
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->hideSwitcherAnimationDuration:J

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;JLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animatePeek(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;FLde/mrapp/android/tabswitcher/PeekAnimation;)V
    .locals 14

    move-object v6, p0

    move-object v3, p1

    move-object/from16 v7, p6

    .line 1187
    move-object v0, v3

    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 1188
    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1189
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 1190
    invoke-virtual/range {p6 .. p6}, Lde/mrapp/android/tabswitcher/PeekAnimation;->getX()F

    move-result v1

    .line 1191
    invoke-virtual/range {p6 .. p6}, Lde/mrapp/android/tabswitcher/PeekAnimation;->getY()F

    move-result v2

    iget v4, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabTitleContainerHeight:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 1192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1193
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1194
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v9

    sget-object v10, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v9, v10, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1195
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v9, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1196
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 1197
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1198
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v9, 0x0

    invoke-interface {v1, v2, p1, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1199
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1200
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v11, p4

    .line 1201
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1202
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    .line 1203
    invoke-direct {p0, p1, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    .line 1202
    invoke-virtual {v10, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    .line 1204
    invoke-virtual {v10, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-wide/from16 v12, p2

    .line 1205
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1206
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, v10, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 1207
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, v10, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 1208
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v5, 0x1

    move-object v2, v10

    move/from16 v4, p5

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    .line 1209
    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1210
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v0

    .line 1211
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v1, v2, v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    .line 1212
    iget-object v0, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    .line 1213
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0, v9}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 1215
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 1216
    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1218
    invoke-direct {p0, v1, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createZoomOutAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    move-object v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 1217
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateRelocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 8

    if-eqz p3, :cond_0

    .line 1008
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {v0, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1009
    invoke-virtual {p1, p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setTag(Lde/mrapp/android/tabswitcher/model/Tag;)V

    .line 1012
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p3

    .line 1013
    invoke-virtual {p6}, Lde/mrapp/android/tabswitcher/SwipeAnimation;->getRelocateAnimationDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1014
    invoke-virtual {p6}, Lde/mrapp/android/tabswitcher/SwipeAnimation;->getRelocateAnimationDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocateAnimationDuration:J

    .line 1015
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 1016
    new-instance p6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p6, p0, p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, p6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1017
    new-instance p5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1018
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1019
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v7, 0x1

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    int-to-long p1, p4

    .line 1020
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAnimationDelay(J)J

    move-result-wide p4

    mul-long p1, p1, p4

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 1021
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateRemove(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 9

    .line 972
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 973
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 972
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 974
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 975
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 974
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 977
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRemoveAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    .line 976
    invoke-direct/range {v3 .. v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateReveal(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V
    .locals 7

    const/4 v0, -0x1

    .line 1148
    iput v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    .line 1149
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->clearCachedPreviews()V

    .line 1150
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;)V

    .line 1151
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    .line 1152
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1154
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 1153
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1156
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    .line 1157
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 1158
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revealAnimationDuration:J

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1160
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p2, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 1161
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p2, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 1162
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1163
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateRevertEndOvershoot()V
    .locals 3

    .line 1091
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxEndOvershootAngle:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z

    return-void
.end method

.method private animateRevertStartOvershoot()V
    .locals 3

    .line 1028
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxStartOvershootAngle:F

    .line 1029
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertStartOvershootAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 1028
    invoke-direct {p0, v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method private animateRevertStartOvershoot(Landroid/view/animation/Interpolator;)V
    .locals 7

    .line 1044
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    .line 1045
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 1046
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, v0, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 1045
    invoke-interface {v1, v3, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1047
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 1048
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, v0, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 1047
    invoke-interface {v1, v3, v0, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 1049
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v3, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v1

    .line 1050
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v3

    .line 1051
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v4, v5, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    const/4 v4, 0x1

    new-array v4, v4, [F

    sub-float/2addr v3, v1

    aput v3, v4, v2

    .line 1052
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1053
    iget-wide v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    long-to-float v2, v4

    .line 1055
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result v4

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1053
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1056
    new-instance v2, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1057
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x0

    .line 1058
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1059
    new-instance p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$2;

    invoke-direct {p1, p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$2;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;F)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1084
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateShowSwitcher(IF)V
    .locals 3

    .line 510
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialItems(IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    .line 511
    new-instance p2, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    invoke-direct {p2, p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    move-result-object p1

    .line 514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 515
    move-object v0, p2

    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, p2, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    .line 517
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 519
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;

    .line 522
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createShowSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$LayoutListenerWrapper;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 520
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 529
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p1

    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDelay:J

    invoke-direct {p0, p1, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateToolbarVisibility(ZJ)V

    return-void
.end method

.method private animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    .line 743
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v9

    .line 744
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 745
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setX(F)V

    .line 746
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setY(F)V

    .line 747
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 748
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 749
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 750
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v3, v4, p1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v3

    .line 749
    invoke-interface {v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 751
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 752
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v3, v4, p1, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v3

    .line 751
    invoke-interface {v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 753
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result v10

    .line 754
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v1

    .line 756
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 757
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 758
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)F

    move-result v2

    .line 757
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_1

    .line 759
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 760
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 761
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    .line 760
    :goto_0
    invoke-interface {v1, v2, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 765
    :cond_2
    :goto_1
    iget v0, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 766
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateBottomMargin(Lde/mrapp/android/tabswitcher/model/AbstractItem;)I

    move-result v0

    iput v0, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    .line 769
    :cond_3
    iget v2, v7, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateBottomMargin(Landroid/view/View;IJJ)V

    .line 770
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    move-wide v0, p2

    .line 771
    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object v0, p4

    .line 772
    invoke-virtual {v6, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 773
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    move-object/from16 v1, p5

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 774
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, v6, v10}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 775
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, v6, v10}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 776
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 777
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v4

    const/4 v5, 0x1

    move-object v2, v6

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    .line 779
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    const-wide/16 v0, 0x0

    .line 780
    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 781
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 721
    iget-wide v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->showSwitcherAnimationDuration:J

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(Lde/mrapp/android/tabswitcher/model/AbstractItem;JLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V
    .locals 10

    .line 896
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 897
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result v1

    .line 898
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v2

    if-eqz p2, :cond_1

    .line 900
    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/SwipeAnimation;->getDirection()Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v3, v3, v2

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 902
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v3, v4, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v3

    sub-float v3, v8, v3

    .line 903
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 904
    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v9, v4, v6

    if-eqz v9, :cond_2

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/Animation;->getDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipeAnimationDuration:J

    long-to-float v4, v4

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 905
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    .line 906
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 908
    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p4

    goto :goto_2

    :cond_3
    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 907
    :goto_2
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 910
    new-instance p4, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    invoke-direct {p4, p0, p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 911
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 912
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v9, 0x1

    move-object v6, v0

    move-object v7, p1

    .line 913
    invoke-interface/range {v4 .. v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    .line 914
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object p4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-eqz p2, :cond_4

    iget p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float p5, p5, v1

    goto :goto_3

    :cond_4
    move p5, v1

    :goto_3
    invoke-interface {p1, p4, v0, p5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    .line 916
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object p4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    if-eqz p2, :cond_5

    iget p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float v1, v1, p5

    :cond_5
    invoke-interface {p1, p4, v0, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    if-eqz p2, :cond_6

    .line 918
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    goto :goto_4

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    int-to-long p1, p3

    .line 919
    invoke-direct {p0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAnimationDelay(J)J

    move-result-wide p3

    mul-long p1, p1, p3

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 920
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;FZJF)V
    .locals 7

    .line 943
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 944
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v2, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v1

    sub-float v1, p2, v1

    .line 945
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 946
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v2

    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabDistance:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, p6, v3

    if-lez v3, :cond_0

    div-float/2addr v1, p6

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float v1, v1, p4

    .line 947
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p4

    goto :goto_0

    :cond_0
    long-to-float p4, p4

    div-float/2addr v1, v2

    mul-float p4, p4, v1

    .line 948
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    :goto_0
    int-to-long p4, p4

    .line 949
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p6

    .line 950
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    if-eqz p3, :cond_1

    .line 951
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeSelectedTabAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    goto :goto_1

    .line 952
    :cond_1
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeNeighborAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    :goto_1
    invoke-direct {v0, p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    invoke-virtual {p6, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 953
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p6, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 954
    invoke-virtual {p6, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 p3, 0x0

    .line 955
    invoke-virtual {p6, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 956
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v6, 0x1

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    .line 957
    invoke-virtual {p6}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateTilt(Landroid/view/animation/Interpolator;FLandroid/animation/Animator$AnimatorListener;)Z
    .locals 8

    .line 1110
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 1111
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 1115
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1116
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v4, v5, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1118
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v4

    .line 1119
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1120
    new-instance v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;

    if-nez v2, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1121
    :goto_1
    invoke-direct {p0, v3, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertOvershootAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-direct {v6, p0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$AnimationListenerWrapper;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/animation/Animator$AnimatorListener;)V

    .line 1120
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1122
    iget-wide v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->revertOvershootAnimationDuration:J

    long-to-float v2, v6

    .line 1123
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v6, v7, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, p2

    mul-float v2, v2, v3

    .line 1122
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1125
    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1126
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3, v4, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animateRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;F)V

    const-wide/16 v2, 0x0

    .line 1127
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 1128
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private animateToolbarVisibility(ZJ)V
    .locals 3

    .line 483
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 487
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    .line 488
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 489
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarVisibilityAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 490
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createToolbarAnimationListener(Z)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 491
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 492
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 493
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private calculateAnimationDelay(J)J
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double p1, p1, v0

    .line 351
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private calculateBottomMargin(Lde/mrapp/android/tabswitcher/model/AbstractItem;)I
    .locals 4

    .line 429
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result p1

    mul-float v0, v0, p1

    .line 431
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->Y_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result p1

    .line 432
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result v2

    mul-int v2, v2, v1

    .line 434
    :goto_0
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private calculateInitialItems(IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 550
    iget-object v2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->reset()V

    const/4 v2, -0x1

    .line 551
    invoke-virtual {v0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    new-array v3, v3, [Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 554
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 555
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v4

    .line 556
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    if-eq v1, v2, :cond_0

    cmpl-float v7, p2, v6

    if-eqz v7, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    const/4 v8, 0x0

    if-eq v1, v2, :cond_1

    cmpl-float v1, p2, v6

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v6, v8}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v1

    mul-float v1, v1, p2

    goto :goto_1

    :cond_1
    move v1, v5

    .line 565
    :goto_1
    invoke-virtual {v0, v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxEndPosition(I)F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 566
    new-instance v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    invoke-direct {v6, v0, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    .line 567
    invoke-virtual {v6, v7}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    move-result-object v6

    .line 570
    :cond_2
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_8

    .line 571
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v12

    .line 574
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v14

    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v14

    sub-int/2addr v14, v11

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    .line 576
    :cond_3
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v13

    if-ne v13, v7, :cond_4

    move v13, v1

    goto :goto_2

    .line 579
    :cond_4
    invoke-virtual {v0, v9, v12}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v13

    .line 583
    :goto_2
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v14

    if-ne v14, v7, :cond_5

    if-lez v7, :cond_5

    sget-object v12, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    goto :goto_3

    :cond_5
    if-eqz v12, :cond_6

    .line 584
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v12

    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v12

    goto :goto_3

    :cond_6
    move-object v12, v10

    .line 585
    :goto_3
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v14

    invoke-virtual {v0, v14, v13, v12}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object v12

    .line 586
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v13

    iget-object v14, v12, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13, v14}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 587
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v13

    iget-object v14, v12, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v13, v14}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v13

    if-ne v13, v2, :cond_7

    iget-object v13, v12, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v14, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v13, v14, :cond_7

    sget-object v14, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v13, v14, :cond_7

    .line 591
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v9

    invoke-virtual {v0, v9}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    .line 594
    :cond_7
    iget-object v9, v12, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v12, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v9, v12, :cond_8

    sget-object v12, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v9, v12, :cond_2

    .line 599
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v9

    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v9

    sub-int/2addr v9, v11

    if-eq v7, v9, :cond_9

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 600
    invoke-virtual {v0, v9, v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const/4 v8, 0x1

    .line 601
    :cond_a
    new-instance v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    invoke-direct {v6, v0, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    invoke-virtual {v6, v11}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v6, v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v6, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    .line 602
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    move-result-object v6

    .line 603
    invoke-direct/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing()F

    move-result v9

    .line 604
    invoke-direct {v0, v10}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v10

    .line 606
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v12

    iget-object v13, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v12, v13, v4}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v12

    .line 607
    invoke-direct {v0, v12}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v12

    .line 608
    invoke-virtual {v6, v7}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v13

    .line 610
    :goto_4
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v14

    if-eqz v14, :cond_13

    if-nez v8, :cond_b

    .line 611
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    if-ge v15, v7, :cond_13

    .line 612
    :cond_b
    invoke-direct {v0, v13}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v15

    .line 613
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    if-eqz v8, :cond_d

    .line 619
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    if-le v7, v15, :cond_c

    .line 621
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v15

    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v16

    sub-int v15, v15, v16

    sub-int/2addr v15, v11

    int-to-float v15, v15

    mul-float v15, v15, v10

    add-float/2addr v15, v12

    goto :goto_5

    .line 625
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v15

    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float v15, v15, v10

    .line 628
    :goto_5
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v11

    invoke-virtual {v0, v11, v15, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v2

    const/16 v16, 0x1

    goto/16 :goto_7

    :cond_d
    sub-float v11, v5, v15

    cmpl-float v16, v1, v11

    if-ltz v16, :cond_f

    .line 632
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v11

    if-le v4, v11, :cond_e

    if-gt v4, v7, :cond_e

    add-float v11, v1, v12

    .line 634
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    sub-int v15, v7, v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    mul-float v15, v15, v10

    add-float/2addr v11, v15

    goto :goto_6

    :cond_e
    const/16 v16, 0x1

    .line 637
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v11

    sub-int v11, v7, v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    add-float/2addr v11, v1

    .line 640
    :goto_6
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    invoke-virtual {v0, v15, v11, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v2

    goto :goto_7

    :cond_f
    const/16 v16, 0x1

    .line 642
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v17

    .line 643
    invoke-virtual/range {v17 .. v17}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v17

    add-float v17, v17, v9

    mul-float v17, v17, v5

    add-float v18, v9, v5

    sub-float v18, v18, v15

    div-float v15, v17, v18

    move/from16 p1, v1

    .line 646
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v15, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 648
    iget-object v1, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_10

    .line 650
    iget-object v1, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 651
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v7

    move-object v13, v14

    goto :goto_7

    :cond_10
    move/from16 v1, p1

    .line 655
    :goto_7
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v11

    iget-object v15, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v11, v15}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 656
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v11

    iget-object v15, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v11, v15}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v11

    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    if-le v11, v15, :cond_12

    :cond_11
    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v11, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v2, v11, :cond_12

    .line 660
    invoke-virtual {v14}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    :cond_12
    const/4 v2, -0x1

    const/4 v11, 0x1

    goto/16 :goto_4

    .line 665
    :cond_13
    iget-object v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->setCallback(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;)V

    return-object v3
.end method

.method private calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 4

    .line 392
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    .line 394
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    const v3, 0x3f28f5c3    # 0.66f

    :goto_0
    mul-float v0, v0, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    const v3, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const v3, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_0

    :goto_1
    if-le v1, v2, :cond_3

    if-eqz p1, :cond_3

    .line 406
    check-cast p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 407
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    if-ne p1, v1, :cond_3

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float v0, v0, p1

    :cond_3
    return v0
.end method

.method private calculateMinTabSpacing()F
    .locals 2

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float v0, v0, v1

    return v0
.end method

.method private calculateSuccessorPosition(FF)F
    .locals 2

    .line 366
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateAttachedPosition(I)F

    move-result v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 365
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 367
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing()F

    move-result v1

    sub-float/2addr p1, v1

    sub-float/2addr p2, v1

    mul-float v0, v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method private calculateSwipePosition()F
    .locals 3

    .line 377
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    return v0
.end method

.method private createAddSelectedTabLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1350
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$7;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$7;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1585
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$12;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$12;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createClearAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1749
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$17;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$17;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createHideSwitcherAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1707
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$16;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$16;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createHideSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1257
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$4;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$4;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createInflateViewLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1624
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$13;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method private createPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 2013
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$25;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$25;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createPeekLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1424
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$9;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$9;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1905
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$22;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$22;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createRelocateLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 9

    .line 1327
    new-instance v8, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v8
.end method

.method private createRemoveAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1857
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$21;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$21;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v0
.end method

.method private createRemoveLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1284
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v0
.end method

.method private createRevealLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1387
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$8;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$8;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)V

    return-object v0
.end method

.method private createRevertOvershootAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1958
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$23;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$23;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createRevertPeekAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 2060
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$26;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$26;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createRevertStartOvershootAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1985
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$24;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$24;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)V

    return-object v0
.end method

.method private createShowSwitcherLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1234
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$3;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$3;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1774
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$18;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$18;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createSwipeLayoutListener([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1460
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$10;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-object v0
.end method

.method private createSwipeNeighborAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1830
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$20;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$20;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createSwipeNeighborLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;F)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1555
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$11;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$11;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;FLde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createSwipeSelectedTabAnimationListener(Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1803
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-object v0
.end method

.method private createToolbarAnimationListener(Z)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1651
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$14;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$14;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Z)V

    return-object v0
.end method

.method private createUpdateViewAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 1686
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$15;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$15;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createZoomInAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 2119
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$28;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$28;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private createZoomOutAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 2087
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$27;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$27;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/PeekAnimation;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-object v0
.end method

.method private detachEmptyView()V
    .locals 2

    .line 326
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->emptyView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private relocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 8

    .line 2712
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2714
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    .line 2713
    invoke-direct/range {v1 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2718
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    .line 2717
    invoke-direct/range {v1 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    .line 2716
    invoke-virtual {p0, p1, v0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2719
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private relocateWhenAddingFloatingTabs([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;ZFZLde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 2433
    aget-object v9, v7, v8

    .line 2434
    array-length v0, v7

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    aget-object v11, v7, v0

    .line 2435
    invoke-virtual/range {p2 .. p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 2438
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_0

    .line 2439
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    add-int/2addr v1, v10

    .line 2441
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v2, v3, v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    .line 2442
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v1

    sub-float v1, v0, v1

    .line 2440
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v12

    sub-float/2addr v0, v1

    .line 2446
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v13

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v1, v2, v13}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    const/4 v14, 0x0

    .line 2449
    invoke-direct {v6, v14}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v15

    .line 2450
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v16

    .line 2451
    invoke-direct/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing()F

    move-result v17

    .line 2453
    invoke-virtual/range {p2 .. p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    .line 2454
    new-instance v5, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2455
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v5, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 2457
    array-length v4, v7

    move v2, v0

    move v3, v1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move v1, v2

    :goto_0
    if-ge v14, v4, :cond_e

    aget-object v18, v7, v14

    .line 2462
    invoke-virtual/range {v18 .. v18}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v12

    invoke-virtual {v5, v12}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    invoke-virtual {v5, v10}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;

    move-result-object v12

    move/from16 v20, v2

    move v8, v3

    move/from16 v21, v8

    move v2, v1

    move v3, v2

    move-object v1, v0

    .line 2465
    :goto_1
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 2466
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v10

    .line 2468
    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v24

    move-object/from16 v25, v0

    if-eqz p3, :cond_3

    .line 2470
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    move-object/from16 v26, v1

    invoke-virtual/range {v18 .. v18}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz v10, :cond_1

    .line 2472
    invoke-virtual {v10}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2473
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v3, :cond_2

    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    :cond_2
    invoke-virtual {v6, v1, v2, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2477
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 2478
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 2479
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    move-object v8, v0

    move/from16 v21, v1

    move/from16 v28, v21

    move/from16 v24, v20

    move/from16 v27, v24

    move-object/from16 v25, v22

    move-object/from16 v26, v25

    goto/16 :goto_4

    :cond_3
    move-object/from16 v26, v1

    :cond_4
    sub-float v0, p4, v24

    cmpl-float v1, v2, v0

    if-ltz v1, :cond_6

    .line 2483
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    if-le v13, v0, :cond_5

    if-gt v13, v8, :cond_5

    add-float v0, v2, v16

    .line 2486
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    sub-int v1, v8, v1

    const/16 v23, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v15

    add-float/2addr v0, v1

    goto :goto_3

    .line 2490
    :cond_5
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v0, v0

    mul-float v0, v0, v15

    add-float/2addr v0, v2

    .line 2493
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {v6, v1, v0, v10}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v0

    move/from16 v24, v2

    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v20, v3

    move/from16 v21, v8

    move-object v8, v0

    goto :goto_4

    .line 2495
    :cond_6
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    .line 2496
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v1

    add-float v1, v1, v17

    mul-float v1, v1, p4

    add-float v27, v17, p4

    sub-float v27, v27, v24

    div-float v1, v1, v27

    move/from16 v24, v2

    .line 2499
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual {v6, v2, v1, v10}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v1

    .line 2501
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_7

    .line 2503
    iget-object v0, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2504
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    move/from16 v24, v0

    move-object v8, v1

    move/from16 v27, v20

    move/from16 v28, v21

    move-object/from16 v25, v22

    move/from16 v21, v2

    move/from16 v20, v3

    goto :goto_4

    :cond_7
    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v20, v3

    move/from16 v21, v8

    move-object v8, v1

    .line 2508
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 2509
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    if-gt v0, v1, :cond_9

    if-nez p3, :cond_8

    if-eqz p5, :cond_8

    .line 2511
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    .line 2512
    invoke-virtual {v12}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    .line 2513
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    .line 2514
    iget-object v1, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v0, v0, v19

    sub-float/2addr v1, v0

    .line 2515
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0, v1, v10}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2516
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object v8, v0

    goto :goto_5

    :cond_8
    const/high16 v19, 0x40000000    # 2.0f

    .line 2519
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    .line 2520
    iget-object v1, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2521
    iget-object v1, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    move/from16 v22, v4

    move-object v10, v5

    goto :goto_6

    :cond_9
    const/high16 v19, 0x40000000    # 2.0f

    .line 2523
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    .line 2524
    iget-object v0, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2525
    iget-object v0, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v3, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2527
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2529
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2530
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2531
    invoke-virtual/range {v22 .. v22}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2534
    :cond_a
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v22, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILde/mrapp/android/tabswitcher/SwipeAnimation;)V

    .line 2537
    :goto_6
    iget-object v0, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_c

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, v10

    move/from16 v3, v20

    move/from16 v8, v21

    move/from16 v4, v22

    move/from16 v2, v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v20, v27

    move/from16 v21, v28

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2538
    :cond_c
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    move/from16 v1, v20

    move-object/from16 v0, v26

    move/from16 v2, v27

    move/from16 v3, v28

    goto :goto_8

    :cond_d
    move-object/from16 v26, v1

    move/from16 v22, v4

    move-object v10, v5

    const/high16 v19, 0x40000000    # 2.0f

    move v1, v3

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v0, v26

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object v5, v10

    move/from16 v4, v22

    const/4 v10, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_e
    move-object v10, v5

    if-eqz p5, :cond_11

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_11

    .line 2546
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {v10, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    invoke-virtual {v10}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->create()Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;

    move-result-object v9

    .line 2549
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    .line 2551
    :goto_9
    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2552
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v4

    sub-int/2addr v4, v8

    if-ge v3, v4, :cond_11

    .line 2554
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v3

    invoke-direct {v6, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSuccessorPosition(FF)F

    move-result v2

    .line 2556
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    invoke-virtual {v6, v3, v2, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object v10

    .line 2557
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v11

    .line 2558
    iget-object v0, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v11, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2559
    iget-object v0, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v11, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2561
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    .line 2564
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual {v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    .line 2563
    invoke-virtual {v6, v0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2565
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v3, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2566
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2569
    :cond_f
    invoke-virtual {v11}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILde/mrapp/android/tabswitcher/SwipeAnimation;)V

    .line 2570
    iget-object v0, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2573
    iget-object v0, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_11

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v1, :cond_10

    goto :goto_a

    :cond_10
    move-object v0, v11

    goto/16 :goto_9

    :cond_11
    :goto_a
    return-object v7
.end method

.method private relocateWhenAddingHiddenTabs([Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 6

    .line 2667
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->isStackedAtStart(I)Z

    move-result p2

    .line 2669
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz p2, :cond_1

    .line 2673
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    if-lez v3, :cond_0

    .line 2674
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2676
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v4

    .line 2677
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    .line 2676
    invoke-virtual {p0, v4, v5, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v3

    goto :goto_2

    .line 2679
    :cond_1
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object v3

    .line 2682
    :goto_2
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    .line 2683
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2684
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private relocateWhenAddingStackedTabs(Z[Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)[Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 10

    if-nez p1, :cond_0

    .line 2602
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v0

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->setFirstVisibleIndex(I)V

    :cond_0
    const/4 v0, 0x0

    .line 2605
    aget-object v0, p2, v0

    .line 2606
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    .line 2607
    new-instance v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v2, v3, v4}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    if-eqz p1, :cond_1

    .line 2608
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v2, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2609
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v2

    .line 2612
    :goto_1
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2613
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v3, v5, :cond_2

    .line 2614
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v3, v5, :cond_2

    .line 2615
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v3, v5, :cond_2

    .line 2616
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v5, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v3, v5, :cond_7

    :cond_2
    if-eqz p1, :cond_3

    .line 2617
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    :goto_2
    if-eqz p1, :cond_4

    .line 2619
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v5

    .line 2620
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v6

    .line 2619
    invoke-virtual {p0, v5, v6, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v5

    goto :goto_3

    .line 2621
    :cond_4
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object v5

    :goto_3
    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    .line 2623
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v6

    sget-object v7, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v6, v7, :cond_5

    .line 2624
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v6

    .line 2625
    iget-object v7, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    .line 2627
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 2628
    invoke-virtual {p0, v4, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v5

    .line 2629
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v6

    invoke-virtual {p0, v6, v5, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v5

    .line 2633
    :cond_5
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 2634
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v6

    if-gt v3, v6, :cond_6

    .line 2635
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    sub-int/2addr v3, v4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    .line 2636
    iget-object v4, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2637
    iget-object v4, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v3, v4}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    goto/16 :goto_1

    .line 2638
    :cond_6
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2639
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v6

    .line 2640
    iget-object v3, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2641
    iget-object v3, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v6, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2642
    invoke-virtual {v6}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v5

    const/4 v7, 0x0

    .line 2643
    invoke-direct {p0, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    move-object v3, p0

    move-object v9, p3

    .line 2642
    invoke-direct/range {v3 .. v9}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    goto/16 :goto_1

    :cond_7
    return-object p2
.end method

.method private relocateWhenRemovingFloatingTab(Lde/mrapp/android/tabswitcher/model/AbstractItem;FZLde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 18

    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 2230
    invoke-direct {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v7

    .line 2231
    invoke-direct/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMinTabSpacing()F

    move-result v8

    .line 2232
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    .line 2234
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v1

    if-eqz p3, :cond_1

    .line 2236
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2237
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2239
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v3, v4, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    .line 2240
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    sub-float/2addr v2, v1

    .line 2238
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 2244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v6, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxEndPosition(I)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 2247
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    if-lez v1, :cond_7

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v11

    .line 2250
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {v1, v2, v11}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    .line 2251
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v12

    .line 2252
    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 2253
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v1, v9}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v13

    move-object/from16 v1, p1

    move v2, v10

    .line 2255
    :goto_1
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2256
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->peek()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v4

    .line 2257
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v5

    .line 2260
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v15

    sub-int/2addr v15, v9

    if-ne v14, v15, :cond_2

    .line 2261
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0, v2, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2263
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2264
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    move v14, v1

    move/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_5

    :cond_2
    sub-float v14, p2, v5

    cmpl-float v15, v2, v14

    if-ltz v15, :cond_4

    .line 2268
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    if-le v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    add-float v5, v2, v12

    .line 2270
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v14

    sub-int v14, v0, v14

    sub-int/2addr v14, v9

    int-to-float v14, v14

    mul-float v14, v14, v7

    add-float/2addr v5, v14

    goto :goto_2

    .line 2273
    :cond_3
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    mul-float v5, v5, v7

    add-float/2addr v5, v2

    .line 2276
    :goto_2
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v14

    invoke-virtual {v6, v14, v5, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v4

    goto :goto_3

    .line 2278
    :cond_4
    invoke-virtual {v13}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v15

    .line 2279
    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v15

    invoke-virtual {v15}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v15

    add-float/2addr v15, v8

    mul-float v15, v15, p2

    add-float v16, v8, p2

    sub-float v16, v16, v5

    div-float v15, v15, v16

    .line 2282
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v5

    invoke-virtual {v6, v5, v15, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v4

    .line 2284
    iget-object v5, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v14

    if-ltz v5, :cond_5

    .line 2286
    iget-object v0, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2287
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    move v14, v0

    move/from16 v16, v2

    move-object v15, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v14, v0

    move-object v15, v1

    move/from16 v16, v2

    :goto_4
    move-object v0, v4

    .line 2291
    :goto_5
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v4

    .line 2292
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2293
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v4, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2295
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_7

    .line 2296
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2298
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2300
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2301
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2302
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2305
    :cond_6
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILde/mrapp/android/tabswitcher/SwipeAnimation;)V

    move v0, v14

    move-object v1, v15

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_7
    if-eqz p3, :cond_a

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    .line 2313
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v0, v1, :cond_a

    .line 2314
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, v6, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 2315
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v7

    .line 2317
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    .line 2319
    :goto_6
    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2320
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_a

    .line 2322
    invoke-direct {v6, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v2

    invoke-direct {v6, v10, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSuccessorPosition(FF)F

    move-result v2

    .line 2324
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    invoke-virtual {v6, v3, v2, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;

    move-result-object v8

    .line 2325
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v10

    .line 2326
    iget-object v0, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v10, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2327
    iget-object v0, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v10, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2328
    invoke-virtual/range {p1 .. p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .line 2330
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    .line 2333
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v3

    .line 2332
    invoke-virtual {v6, v0, v2, v3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 2334
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v3, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2335
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2338
    :cond_8
    invoke-virtual {v10}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v2

    move-object/from16 v0, p0

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->relocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILde/mrapp/android/tabswitcher/SwipeAnimation;)V

    .line 2339
    iget-object v0, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2342
    iget-object v1, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v1, v2, :cond_a

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v1, v2, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v17, v10

    move v10, v0

    move-object/from16 v0, v17

    goto/16 :goto_6

    :cond_a
    :goto_7
    return-void
.end method

.method private relocateWhenRemovingStackedTab(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 10

    .line 2365
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 2366
    new-instance v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2367
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v2, v3, v4}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v2, p2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2368
    invoke-virtual {v2, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->start(I)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v2

    .line 2370
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p1

    :goto_1
    move v5, p1

    .line 2372
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq p1, v3, :cond_1

    .line 2373
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    if-eq p1, v3, :cond_1

    .line 2374
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-eq p1, v3, :cond_1

    .line 2375
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p1, v3, :cond_4

    .line 2376
    :cond_1
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p1

    .line 2378
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v3

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v3, v6, :cond_3

    .line 2379
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    .line 2380
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object p1

    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 2382
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    .line 2384
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    .line 2385
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p2

    .line 2384
    invoke-virtual {p0, p1, p2, v4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    goto :goto_2

    .line 2386
    :cond_2
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object p1

    .line 2387
    :goto_2
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p3, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p3}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2388
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    const/4 p1, 0x0

    .line 2389
    invoke-virtual {p0, v4, v1, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 2394
    :cond_3
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v3

    invoke-virtual {v3, v5}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 2395
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    const/4 v6, 0x0

    .line 2397
    invoke-direct {p0, v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    move-object v3, p0

    move-object v9, p3

    .line 2396
    invoke-direct/range {v3 .. v9}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRelocate(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    goto/16 :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private startOvershoot(F)V
    .locals 7

    .line 2768
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2769
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 2772
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2773
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    if-nez v2, :cond_1

    .line 2774
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2775
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2774
    invoke-interface {v2, v3, v1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2776
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2777
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2776
    invoke-interface {v2, v3, v1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2778
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_0

    .line 2779
    :cond_1
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2780
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->first()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    .line 2781
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v3

    .line 2782
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v4, v5, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v2

    .line 2783
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v4, v5, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2782
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private swipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 7

    .line 2733
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 2735
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/Tag;->isClosing()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2736
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, p1, v1, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;II)V

    .line 2739
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v1

    invoke-virtual {v1, v2}, Lde/mrapp/android/tabswitcher/model/Tag;->setClosing(Z)V

    .line 2742
    move-object v1, p1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2743
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    const/4 v3, 0x0

    cmpg-float p2, p2, v3

    if-gez p2, :cond_1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float v1, v1, p2

    :cond_1
    move p2, v1

    .line 2747
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2748
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, p1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2747
    invoke-interface {v1, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2749
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    .line 2750
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->SWIPE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-interface {v4, v5, p1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2749
    invoke-interface {v1, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2751
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result v1

    .line 2752
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 2753
    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabScale:F

    mul-float v4, v4, v1

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    .line 2755
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v5, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2756
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v1, v5, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setScale(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2757
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabAlpha:F

    sub-float/2addr v3, v1

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2758
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1, p2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    return-void
.end method

.method private tiltOnEndOvershoot(F)V
    .locals 10

    .line 2823
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2825
    new-instance v1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2826
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v1, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 2829
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2830
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2831
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v5

    .line 2833
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2834
    iget v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    .line 2836
    invoke-virtual {v5, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 2838
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v5

    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v5, v6, :cond_3

    .line 2839
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    goto :goto_1

    .line 2842
    :cond_2
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    .line 2844
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v7

    invoke-virtual {v7}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 2845
    iget v7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    mul-float v7, v7, v6

    add-float/2addr v7, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->setCameraDistance(F)V

    .line 2849
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    sget-object v8, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 2850
    invoke-interface {v7, v8, v4, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v7

    .line 2849
    invoke-interface {v5, v6, v4, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2851
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v7

    sget-object v8, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v9, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_END:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 2852
    invoke-interface {v7, v8, v4, v9}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v7

    .line 2851
    invoke-interface {v5, v6, v4, v7}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2853
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v5

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v5, v6, v4, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private tiltOnStartOvershoot(F)V
    .locals 7

    .line 2796
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 2797
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 2800
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2801
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 2803
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v3

    if-nez v3, :cond_1

    .line 2804
    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->maxCameraDistance:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setCameraDistance(F)V

    .line 2805
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 2806
    invoke-interface {v4, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2805
    invoke-interface {v2, v3, v1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2807
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v6, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->OVERSHOOT_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 2808
    invoke-interface {v4, v5, v1, v6}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v4

    .line 2807
    invoke-interface {v2, v3, v1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 2809
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_0

    .line 2810
    :cond_1
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected final calculateAttachedPosition(I)F
    .locals 3

    .line 3017
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const p1, 0x3f28f5c3    # 0.66f

    :goto_0
    mul-float v0, v0, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const p1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :goto_1
    return v0
.end method

.method protected final calculateMaxEndPosition(I)F
    .locals 5

    const/4 v0, 0x0

    .line 3103
    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    .line 3104
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 3107
    new-instance v2, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 3108
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v2, v3, v4}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v2

    .line 3109
    invoke-virtual {v2, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    .line 3110
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v1

    .line 3111
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    return p1

    .line 3115
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float p1, p1, v0

    return p1
.end method

.method protected final calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Lde/mrapp/android/tabswitcher/model/State;",
            ">;"
        }
    .end annotation

    .line 3065
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v0

    .line 3067
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3068
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    mul-int v1, v1, p1

    int-to-float p1, v1

    sub-float/2addr v0, p1

    .line 3069
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->STACKED_END:Lde/mrapp/android/tabswitcher/model/State;

    invoke-static {p1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1

    .line 3071
    :cond_0
    iget p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabInset:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result v1

    mul-int p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 3072
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    invoke-static {p1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/State;)Landroidx/core/util/Pair;
    .locals 2
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

    sub-int v0, p1, p2

    .line 3049
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3050
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p1, p2

    mul-int v0, v0, p1

    int-to-float p1, v0

    .line 3051
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p3, :cond_1

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START:Lde/mrapp/android/tabswitcher/model/State;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    :goto_1
    invoke-static {p1, p2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1

    .line 3055
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabSpacing()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getStackedTabCount()I

    move-result p2

    mul-int p1, p1, p2

    int-to-float p1, p1

    .line 3056
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p3, :cond_4

    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne p3, p2, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p2, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    :goto_3
    invoke-static {p1, p2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final calculatePredecessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 0

    .line 3129
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p1

    .line 3130
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method

.method protected final calculateSuccessorPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 0

    .line 3121
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p2

    .line 3122
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    .line 3123
    invoke-direct {p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSuccessorPosition(FF)F

    move-result p1

    return p1
.end method

.method public final getContentViewRecycler()Lde/mrapp/android/util/view/AbstractViewRecycler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AbstractViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2987
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    return-object v0
.end method

.method public final getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler<",
            "*>;"
        }
    .end annotation

    .line 2920
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    return-object v0
.end method

.method protected final getStackedTabCount()I
    .locals 1

    .line 3041
    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->stackedTabCount:I

    return v0
.end method

.method public final getTabContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 3136
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final getTabRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;
    .locals 1

    .line 2997
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    return-object v0
.end method

.method protected final getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2992
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-object v0
.end method

.method public final getToolbars()[Landroidx/appcompat/widget/Toolbar;
    .locals 3

    .line 3142
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected final inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .line 3035
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createInflateViewLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Integer;

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewBottomMargin:I

    .line 3036
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 3035
    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    return-void
.end method

.method protected final isOvershootingAtEnd(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;)Z
    .locals 3

    .line 3091
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 3092
    sget-object p2, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->DRAG_TO_START:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3094
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p1

    .line 3095
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p2

    .line 3096
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3097
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateMaxTabSpacing(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lt p2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected final isOvershootingAtStart()Z
    .locals 4

    .line 3078
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    .line 3081
    :cond_0
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 3082
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {v0, v2, v3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 3083
    invoke-virtual {v0, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    .line 3084
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v3, Lde/mrapp/android/tabswitcher/model/State;->STACKED_START_ATOP:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    .line 3211
    sget-object p3, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    instance-of p4, p6, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3212
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported for adding multiple tabs"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 3211
    invoke-virtual {p3, p4, p5}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 3213
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    const-class p4, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tabs at index "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " using a "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3215
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 3213
    invoke-virtual {p3, p4, p5}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3216
    invoke-direct {p0, p1, p2, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final onAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 7

    .line 3269
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    instance-of v1, p2, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3270
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not supported for removing tabs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3269
    invoke-virtual {v0, v1, v2}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 3271
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed all tabs using a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3271
    invoke-virtual {v0, v2, v3}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3274
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3275
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->removeAll()V

    .line 3276
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_4

    :cond_1
    if-eqz v1, :cond_2

    .line 3278
    check-cast p2, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    goto :goto_1

    :cond_2
    new-instance p2, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p2}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    .line 3280
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p2

    .line 3281
    :goto_1
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;

    .line 3282
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;[Lde/mrapp/android/tabswitcher/Tab;I)V

    const/4 p1, 0x1

    .line 3283
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;->reverse(Z)Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator$AbstractBuilder;

    check-cast v0, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ArrayItemIterator;

    move-result-object p1

    .line 3287
    :goto_2
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3288
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->previous()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    .line 3290
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v2

    sget-object v4, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_4

    .line 3291
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->FLOATING:Lde/mrapp/android/tabswitcher/model/State;

    if-ne v0, v2, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    move v6, v3

    .line 3295
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 3297
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createClearAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move-object v5, v0

    move-object v0, p0

    move v3, v6

    move-object v4, p2

    .line 3296
    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    move v3, v6

    goto :goto_2

    .line 3303
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getEmptyViewAnimationDuration()J

    move-result-wide p1

    goto :goto_5

    :cond_8
    const-wide/16 p1, 0x0

    .line 3302
    :goto_5
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptEmptyView(J)V

    return-void
.end method

.method public final onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 0

    .line 3147
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptDecorator()V

    .line 3148
    invoke-super {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    return-void
.end method

.method protected final onDetachLayout(Z)Landroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2957
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2959
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    .line 2960
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    .line 2962
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getState()Lde/mrapp/android/tabswitcher/model/State;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    if-eq v1, v2, :cond_0

    .line 2963
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/Tag;->getPosition()F

    move-result v0

    .line 2965
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v1

    .line 2967
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v4, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result v2

    .line 2968
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getFirstVisibleIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2969
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2968
    invoke-static {v3, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2973
    :goto_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/ViewRecycler;->removeAll()V

    .line 2974
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    .line 2975
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->clearCachedPreviews()V

    .line 2976
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->detachEmptyView()V

    if-nez p1, :cond_1

    .line 2979
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    :cond_1
    return-object v0
.end method

.method public final onEmptyViewChanged(Landroid/view/View;J)V
    .locals 0

    .line 3320
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    .line 3321
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptEmptyView(J)V

    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 4

    .line 3327
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3328
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getReferenceTabIndex()I

    move-result v0

    .line 3329
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getReferenceTabPosition()F

    move-result v2

    .line 3328
    invoke-direct {p0, v0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateInitialItems(IF)[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    .line 3330
    new-instance v2, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;

    invoke-direct {v2, p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIteratorBuilder;->create()Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;

    move-result-object v0

    .line 3333
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3334
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3335
    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createBottomMarginLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3338
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3339
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 3340
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v3

    .line 3339
    invoke-static {v0, v2, v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    .line 3341
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    .line 3344
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3345
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 3346
    :goto_1
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3347
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-wide/16 v0, 0x0

    .line 3348
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptEmptyView(J)V

    return-void
.end method

.method protected final onInflateLayout(Landroid/view/LayoutInflater;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 2927
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    sget v0, Lde/mrapp/android/tabswitcher/R$id;->primary_toolbar:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 2928
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    sget v0, Lde/mrapp/android/tabswitcher/R$id;->tab_container:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2930
    :cond_0
    sget p2, Lde/mrapp/android/tabswitcher/R$layout;->phone_toolbar:I

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 2931
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2932
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    .line 2933
    sget v0, Lde/mrapp/android/tabswitcher/R$id;->tab_container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 2934
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2938
    :goto_0
    new-instance p2, Lde/mrapp/android/util/view/ViewRecycler;

    invoke-direct {p2, p1}, Lde/mrapp/android/util/view/ViewRecycler;-><init>(Landroid/view/LayoutInflater;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    .line 2939
    new-instance p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStyle()Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-direct {p2, v0, v1, v2, v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;Lde/mrapp/android/util/view/ViewRecycler;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    .line 2941
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {p2, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    .line 2942
    new-instance p2, Lde/mrapp/android/util/view/AttachedViewRecycler;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabContainer:Landroid/view/ViewGroup;

    new-instance v1, Lde/mrapp/android/tabswitcher/model/ItemComparator;

    .line 2943
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/mrapp/android/tabswitcher/model/ItemComparator;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 2944
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    invoke-virtual {p2, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->setAdapter(Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;)V

    .line 2945
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;

    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->setViewRecycler(Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    .line 2946
    new-instance p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    .line 2947
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-direct {p1, p2, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/layout/Arithmetics;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->dragHandler:Lde/mrapp/android/tabswitcher/layout/phone/PhoneDragTabsEventHandler;

    .line 2948
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptDecorator()V

    .line 2949
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptToolbarMargin()V

    return-void
.end method

.method public final onPaddingChanged(IIII)V
    .locals 0

    .line 3310
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptToolbarMargin()V

    return-void
.end method

.method public final onPulledDown()V
    .locals 2

    .line 3479
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    .line 3480
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showSwitcher()V

    .line 3481
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V

    .line 3483
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->PHONE_LANDSCAPE:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 3484
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(IF)V

    goto :goto_0

    .line 3486
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(IF)V

    .line 3489
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getDragHelper()Lde/mrapp/android/util/gesture/DragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/util/gesture/DragHelper;->reset()V

    .line 3490
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->setPointerId(I)V

    .line 3491
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->PULLING_DOWN:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->setDragState(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)V

    return-void
.end method

.method public final onRevertEndOvershoot()V
    .locals 3

    .line 3359
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertEndOvershoot()V

    .line 3360
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    const-string v2, "Reverting overshoot at the end"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onRevertStartOvershoot()V
    .locals 3

    .line 3353
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRevertStartOvershoot()V

    .line 3354
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    const-string v2, "Reverting overshoot at the start"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V
    .locals 3

    .line 3167
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    const-class v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected tab at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 3170
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher()V

    goto :goto_0

    .line 3172
    :cond_0
    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 3173
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p4

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p4, v0, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    .line 3174
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p3

    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p3, p4, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    :goto_0
    return-void
.end method

.method public final onStartOvershoot(F)V
    .locals 4

    .line 3364
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->startOvershoot(F)V

    .line 3365
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overshooting at the start using a position of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V
    .locals 4

    .line 3385
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 3386
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swiping tab at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Current swipe distance is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3386
    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V
    .locals 8

    if-eqz p2, :cond_2

    .line 3396
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->RIGHT_OR_BOTTOM:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    :goto_0
    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 3399
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculateSwipePosition()F

    move-result v1

    div-float/2addr v1, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float v1, v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long v1, p3

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    .line 3400
    :goto_1
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p3, v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->setDirection(Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    move-result-object p3

    .line 3401
    invoke-virtual {p3, v1, v2}, Lde/mrapp/android/tabswitcher/Animation$Builder;->setDuration(J)Ljava/lang/Object;

    check-cast p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p3

    .line 3402
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3404
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v6

    .line 3405
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeAnimationListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .line 3404
    invoke-direct/range {v2 .. v7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/SwipeAnimation;Landroid/animation/Animator$AnimatorListener;)V

    .line 3408
    :goto_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    const-class v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ended swiping tab at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3409
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Tab will "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    const-string p1, "not "

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "be removed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3408
    invoke-virtual {p3, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwitcherHidden()V
    .locals 3

    .line 3159
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    const-string v2, "Hid tab switcher"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3160
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateHideSwitcher()V

    return-void
.end method

.method public final onSwitcherShown()V
    .locals 3

    .line 3153
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    const-string v2, "Showed tab switcher"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 3154
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateShowSwitcher(IF)V

    return-void
.end method

.method public final onSwitchingBetweenTabs(IF)V
    .locals 6

    .line 3415
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_3

    if-lez v2, :cond_0

    .line 3417
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_3

    :cond_0
    cmpg-float v3, p2, v1

    if-gez v3, :cond_1

    if-lez p1, :cond_1

    goto :goto_0

    .line 3433
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    if-gez v3, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    .line 3435
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v2, v3, v0, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    goto :goto_2

    .line 3419
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v3, v4, v0, p2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 3420
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {v3, v4, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    if-eqz v2, :cond_6

    .line 3423
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, p1, -0x1

    :goto_1
    invoke-static {v2, v3, v1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    .line 3426
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabDistance:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    .line 3427
    invoke-direct {p0, v1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createSwipeNeighborLayoutListener(Lde/mrapp/android/tabswitcher/model/TabItem;F)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    goto :goto_2

    .line 3429
    :cond_5
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    .line 3438
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swiping content of tab at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Current swipe distance is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onSwitchingBetweenTabsEnded(IIZFJ)V
    .locals 9

    .line 3449
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v0

    move-wide v6, p5

    move v8, p4

    .line 3450
    invoke-direct/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;FZJF)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 3455
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p3

    if-ge p1, p2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 3457
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object p3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p2, p3, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    add-int/2addr p1, v2

    .line 3458
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 3459
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p3

    move-object v3, p3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    .line 3464
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_0
    move-object v3, p3

    :goto_1
    if-eqz v3, :cond_5

    .line 3469
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3470
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p1

    sget-object p2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->X_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-interface {p1, p2, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result p1

    .line 3471
    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->swipedTabDistance:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    if-eqz v1, :cond_4

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    :cond_4
    move v4, p1

    const/4 v5, 0x0

    move-object v2, p0

    move-wide v6, p5

    move v8, p4

    .line 3473
    invoke-direct/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;FZJF)V

    :cond_5
    return-void
.end method

.method public final onTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    .line 3184
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    const-class p4, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added tab at index "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " using a "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 3184
    invoke-virtual {p3, p4, p5}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3187
    instance-of p3, p7, Lde/mrapp/android/tabswitcher/PeekAnimation;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result p3

    if-le p3, p4, :cond_0

    .line 3188
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3189
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not supported when the tab switcher is shown"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3188
    invoke-virtual {p1, p6, p3}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 3191
    check-cast p7, Lde/mrapp/android/tabswitcher/PeekAnimation;

    .line 3192
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-static {p1, p5, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    .line 3193
    invoke-direct {p0, p1, p7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createPeekLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/PeekAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    new-array p3, p5, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    goto :goto_0

    .line 3194
    :cond_0
    instance-of p3, p7, Lde/mrapp/android/tabswitcher/RevealAnimation;

    if-eqz p3, :cond_1

    if-eqz p6, :cond_1

    .line 3195
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-static {p1, p5, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    .line 3196
    check-cast p7, Lde/mrapp/android/tabswitcher/RevealAnimation;

    .line 3197
    invoke-direct {p0, p1, p7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevealLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/RevealAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p2

    new-array p3, p5, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->inflateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    new-array p3, p4, [Lde/mrapp/android/tabswitcher/Tab;

    aput-object p2, p3, p5

    .line 3199
    invoke-direct {p0, p1, p3, p7}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->addAllTabs(I[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    .line 3203
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getEmptyViewAnimationDuration()J

    move-result-wide p1

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x0

    .line 3202
    :goto_1
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptEmptyView(J)V

    return-void
.end method

.method public final onTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 4

    .line 3224
    sget-object p3, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    instance-of v0, p6, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3225
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported for removing tabs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3224
    invoke-virtual {p3, v0, v1}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 3226
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p3

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed tab at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " using a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3226
    invoke-virtual {p3, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3228
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p3, v1, p1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    .line 3230
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    .line 3231
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-virtual {p1, p2}, Lde/mrapp/android/util/view/AttachedViewRecycler;->remove(Ljava/lang/Object;)V

    .line 3233
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3234
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->areToolbarsShown()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_3

    :cond_1
    if-eqz p5, :cond_6

    .line 3236
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    .line 3237
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    iget-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    invoke-static {p2, p3, p4}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Integer;

    .line 3236
    invoke-virtual {p1, p2, p3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    goto :goto_3

    .line 3240
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p4

    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result p4

    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptStackOnSwipe(Lde/mrapp/android/tabswitcher/model/AbstractItem;II)V

    .line 3241
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lde/mrapp/android/tabswitcher/model/Tag;->setClosing(Z)V

    if-eqz v0, :cond_3

    .line 3242
    check-cast p6, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    goto :goto_1

    :cond_3
    new-instance p3, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    .line 3244
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object p6

    .line 3246
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3247
    invoke-direct {p0, p2, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->animateRemove(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    goto :goto_3

    .line 3249
    :cond_4
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->isStackedAtStart(I)Z

    move-result p3

    .line 3251
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p4

    iget-object p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tabViewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    add-int/lit8 v0, p1, -0x1

    invoke-static {p4, p5, v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p4

    if-eqz p3, :cond_5

    .line 3253
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p3

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result p3

    invoke-virtual {p0, p3, p1, p4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtStart(IILde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p1

    goto :goto_2

    .line 3254
    :cond_5
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->calculatePositionAndStateWhenStackedAtEnd(I)Landroidx/core/util/Pair;

    move-result-object p1

    .line 3255
    :goto_2
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object p4, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 3256
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 3258
    invoke-direct {p0, p2, p6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRemoveLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p1

    .line 3257
    invoke-virtual {p0, p2, v1, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->inflateAndUpdateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;ZLandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3263
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getEmptyViewAnimationDuration()J

    move-result-wide p1

    goto :goto_4

    :cond_7
    const-wide/16 p1, 0x0

    .line 3262
    :goto_4
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->adaptEmptyView(J)V

    return-void
.end method

.method public final onTiltOnEndOvershoot(F)V
    .locals 4

    .line 3378
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tiltOnEndOvershoot(F)V

    .line 3379
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tilting on end overshoot using an angle of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " degrees"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onTiltOnStartOvershoot(F)V
    .locals 4

    .line 3371
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->tiltOnStartOvershoot(F)V

    .line 3372
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tilting on start overshoot using an angle of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " degrees"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method protected final updateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V
    .locals 5

    .line 3002
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3003
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 3004
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3005
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 3006
    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 3005
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 3008
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    sget-object v4, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;

    .line 3009
    invoke-interface {v2, v3, p1, v4}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;)F

    move-result v2

    .line 3008
    invoke-interface {v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    .line 3011
    invoke-super {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->updateView(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)V

    .line 3012
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getArithmetics()Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object p2

    sget-object v0, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setRotation(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V

    return-void
.end method
