.class public Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TabSwitcherDrawable.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final size:I

.field private final textSizeNormal:I

.field private final textSizeSmall:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 90
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    .line 93
    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_normal:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    .line 95
    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_small:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    .line 97
    sget v0, Lde/mrapp/android/tabswitcher/R$drawable;->tab_switcher_drawable_background:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 100
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    const v0, 0x1010036

    .line 105
    invoke-static {p1, v0}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 106
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 133
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 134
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 135
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 136
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 137
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    .line 138
    div-int/lit8 v5, v0, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    .line 139
    iget-object v6, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 142
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 143
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 153
    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 148
    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 206
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 193
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setCount(I)V
    .locals 3

    .line 117
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The count must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    .line 121
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
