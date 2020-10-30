.class public Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "TabSwitcherButton.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# instance fields
.field private drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 52
    new-instance v0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$attr;->selectableItemBackgroundBorderless:I

    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    invoke-static {p0, v0}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method public final onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    return-void
.end method

.method public final onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    return-void
.end method

.method public final onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final setCount(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/view/TabSwitcherButton;->drawable:Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method
