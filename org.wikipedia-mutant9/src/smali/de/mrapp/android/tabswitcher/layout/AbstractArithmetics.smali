.class public abstract Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;
.super Ljava/lang/Object;
.source "AbstractArithmetics.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/layout/Arithmetics;


# instance fields
.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-void
.end method


# virtual methods
.method public final animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;F)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 70
    invoke-interface/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->animatePosition(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/ViewPropertyAnimator;Lde/mrapp/android/tabswitcher/model/AbstractItem;FZ)V

    return-void
.end method

.method public final getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-interface {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getScale(Lde/mrapp/android/tabswitcher/model/AbstractItem;Z)F

    move-result p1

    return p1
.end method

.method public final getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;)F
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-interface {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getTabContainerSize(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Z)F

    move-result p1

    return p1
.end method

.method protected final getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 1

    .line 45
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractArithmetics;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object v0
.end method
