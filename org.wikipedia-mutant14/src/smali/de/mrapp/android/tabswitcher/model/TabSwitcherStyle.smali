.class public Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;
.super Ljava/lang/Object;
.source "TabSwitcherStyle.java"


# instance fields
.field private final model:Lde/mrapp/android/tabswitcher/model/Model;

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private final themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/tabswitcher/util/ThemeHelper;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The theme helper may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 217
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    .line 218
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    return-void
.end method

.method private getTabCloseButtonIconTintList(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getCloseButtonIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabCloseButtonIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 126
    :try_start_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabCloseButtonIconTint:I

    invoke-virtual {p1, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :catch_0
    :goto_1
    return-object v0
.end method

.method private getTabCloseButtonIconTintMode(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getCloseButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 152
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabCloseButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    return-object p1
.end method

.method private getTabIconTintList(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getCloseButtonIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabCloseButtonIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 74
    :try_start_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabIconTint:I

    invoke-virtual {p1, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :catch_0
    :goto_1
    return-object v0
.end method

.method private getTabIconTintMode(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    return-object p1
.end method

.method private getToolbarNavigationIconTintList()Landroid/content/res/ColorStateList;
    .locals 3

    .line 168
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getTabCloseButtonIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherToolbarNavigationIconTint:I

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getToolbarNavigationIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 193
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getToolbarNavigationIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getAddTabButtonColor()Landroid/content/res/ColorStateList;
    .locals 3

    .line 410
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getAddTabButtonColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherAddTabButtonColor:I

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getTabBackgroundColor(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;
    .locals 2

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 285
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 288
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getTabCloseButtonIcon(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/Tab;->getCloseButtonIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 360
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabCloseButtonIcon:I

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getDrawable(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 365
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabCloseButtonIconTintList(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 368
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabCloseButtonIconTintMode(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 369
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 370
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v0
.end method

.method public final getTabContentBackgroundColor(Lde/mrapp/android/tabswitcher/Tab;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getContentBackgroundColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 310
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabContentBackgroundColor()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 313
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabContentBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColor(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public final getTabIcon(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/Tab;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 251
    :try_start_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 252
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v2

    sget v3, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabIcon:I

    invoke-virtual {v1, v2, v3}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getDrawable(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 260
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabIconTintList(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 263
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabIconTintMode(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 264
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 265
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v0
.end method

.method public final getTabProgressBarColor(Lde/mrapp/android/tabswitcher/Tab;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getProgressBarColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 390
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabProgressBarColor()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 393
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 394
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabProgressBarColor:I

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColor(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public final getTabTitleTextColor(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;
    .locals 2

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/Tab;->getTitleTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 333
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabTitleTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 336
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget v1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherTabTitleTextColor:I

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getThemeHelper()Lde/mrapp/android/tabswitcher/util/ThemeHelper;
    .locals 1

    .line 230
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    return-object v0
.end method

.method public final getToolbarNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 452
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getToolbarNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    :try_start_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v2

    sget v3, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherToolbarNavigationIcon:I

    invoke-virtual {v1, v2, v3}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getDrawable(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getToolbarNavigationIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 467
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getToolbarNavigationIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 468
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 469
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-object v0
.end method

.method public final getToolbarTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 429
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v0}, Lde/mrapp/android/tabswitcher/model/Model;->getToolbarTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->themeHelper:Lde/mrapp/android/tabswitcher/util/ThemeHelper;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 434
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v1

    sget v2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherToolbarTitle:I

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getText(Lde/mrapp/android/tabswitcher/Layout;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method
