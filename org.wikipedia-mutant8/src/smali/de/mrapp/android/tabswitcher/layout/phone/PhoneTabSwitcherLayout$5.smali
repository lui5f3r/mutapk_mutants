.class Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;
.super Ljava/lang/Object;
.source "PhoneTabSwitcherLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRemoveLayoutListener(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

.field final synthetic val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field final synthetic val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V
    .locals 0

    .line 1284
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1288
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->val$item:Lde/mrapp/android/tabswitcher/model/AbstractItem;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$5;->val$swipeAnimation:Lde/mrapp/android/tabswitcher/SwipeAnimation;

    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$1000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/SwipeAnimation;)V

    return-void
.end method
