.class public Lde/mrapp/android/tabswitcher/util/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final globalTheme:I

.field private final phoneTheme:I

.field private final tabletTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    .line 132
    iput p2, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->globalTheme:I

    .line 133
    iput p3, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->phoneTheme:I

    .line 134
    iput p4, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->tabletTheme:I

    return-void
.end method

.method private obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I
    .locals 2

    .line 96
    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_0

    sget p1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherThemeTablet:I

    goto :goto_0

    :cond_0
    sget p1, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherThemePhone:I

    .line 98
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;III)I

    move-result p1

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    sget p2, Lde/mrapp/android/tabswitcher/R$attr;->tabSwitcherThemeGlobal:I

    invoke-static {p1, p2, v1}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;II)I

    move-result p1

    if-nez p1, :cond_1

    .line 104
    sget p1, Lde/mrapp/android/tabswitcher/R$style;->TabSwitcher_Light:I

    :cond_1
    return p1
.end method

.method private obtainThemeFromXmlAttributes(Lde/mrapp/android/tabswitcher/Layout;)I
    .locals 1

    .line 68
    sget-object v0, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->tabletTheme:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->phoneTheme:I

    :goto_0
    if-nez p1, :cond_1

    .line 71
    iget p1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->globalTheme:I

    :cond_1
    if-eqz p1, :cond_2

    return p1

    .line 78
    :cond_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getColor(Lde/mrapp/android/tabswitcher/Layout;I)I
    .locals 2

    .line 170
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 172
    :catch_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 175
    :try_start_1
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 177
    :catch_1
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 178
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getColorStateList(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 201
    :catch_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 204
    :try_start_1
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getColorStateList(Landroid/content/Context;II)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 206
    :catch_1
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 207
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getColorStateList(Landroid/content/Context;II)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Lde/mrapp/android/tabswitcher/Layout;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 226
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 228
    :catch_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 231
    :try_start_1
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 233
    :catch_1
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 234
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Lde/mrapp/android/tabswitcher/Layout;II)I
    .locals 3

    .line 312
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lde/mrapp/android/util/ThemeUtil;->getInt(Landroid/content/Context;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 316
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0, p2, v1}, Lde/mrapp/android/util/ThemeUtil;->getInt(Landroid/content/Context;III)I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 320
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lde/mrapp/android/util/ThemeUtil;->getInt(Landroid/content/Context;III)I

    move-result p1

    return p1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public getResourceId(Lde/mrapp/android/tabswitcher/Layout;II)I
    .locals 3

    .line 281
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 285
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0, p2, v1}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;III)I

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 289
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;III)I

    move-result p1

    return p1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public getText(Lde/mrapp/android/tabswitcher/Layout;I)Ljava/lang/CharSequence;
    .locals 2

    .line 252
    :try_start_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 254
    :catch_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result v0

    .line 257
    :try_start_1
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lde/mrapp/android/util/ThemeUtil;->getText(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 259
    :catch_1
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    .line 260
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getText(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final getThemeResourceId(Lde/mrapp/android/tabswitcher/Layout;)I
    .locals 1

    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromXmlAttributes(Lde/mrapp/android/tabswitcher/Layout;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 150
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/util/ThemeHelper;->obtainThemeFromThemeAttributes(Lde/mrapp/android/tabswitcher/Layout;I)I

    move-result p1

    :goto_0
    return p1
.end method
