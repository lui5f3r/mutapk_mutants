.class Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;
.super Ljava/lang/Object;
.source "PhoneTabSwitcherLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRelocateLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

.field final synthetic val$delayMultiplier:I

.field final synthetic val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$position:F

.field final synthetic val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

.field final synthetic val$tag:Lde/mrapp/android/tabswitcher/model/Tag;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 1327
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iput p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$position:F

    iput-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$tag:Lde/mrapp/android/tabswitcher/model/Tag;

    iput p5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$delayMultiplier:I

    iput-object p6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p7, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1331
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$position:F

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$tag:Lde/mrapp/android/tabswitcher/model/Tag;

    iget v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$delayMultiplier:I

    iget-object v5, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$6;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-static/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$1100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;FLde/mrapp/android/tabswitcher/model/Tag;ILandroid/animation/Animator$AnimatorListener;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method
