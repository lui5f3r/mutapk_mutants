.class Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;
.super Ljava/lang/Object;
.source "AbstractTabSwitcherLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->createFlingAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 579
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getDragHandler()Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 580
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-static {p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->access$402(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 581
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->access$100(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
