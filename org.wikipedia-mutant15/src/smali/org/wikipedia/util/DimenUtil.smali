.class public final Lorg/wikipedia/util/DimenUtil;
.super Ljava/lang/Object;
.source "DimenUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static articleHeaderViewScreenHeightRatio()F
    .locals 1

    const v0, 0x7f070054

    .line 145
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public static calculateLeadImageWidth()I
    .locals 2

    .line 61
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b9

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dpToPx(F)F
    .locals 2

    .line 19
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getContentTopOffset(Landroid/content/Context;)F
    .locals 0

    .line 78
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeight(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static getContentTopOffsetPx(Landroid/content/Context;)I
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getContentTopOffset(Landroid/content/Context;)F

    move-result p0

    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p0

    return p0
.end method

.method public static getDensityScalar()F
    .locals 1

    .line 35
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDimension(I)F
    .locals 0

    .line 44
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getValue(I)Landroid/util/TypedValue;

    move-result-object p0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    return p0
.end method

.method public static getDisplayHeightPx()I
    .locals 1

    .line 70
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 88
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayWidthPx()I
    .locals 1

    .line 66
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getFloat(I)F
    .locals 0

    .line 39
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getValue(I)Landroid/util/TypedValue;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getFontSizeFromSp(Landroid/view/Window;F)F
    .locals 1

    .line 54
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget p0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    return p1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)F
    .locals 0

    .line 102
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getNavigationBarId(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    .line 103
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getNavigationBarId(Landroid/content/Context;)I
    .locals 3

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 92
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)F
    .locals 0

    .line 97
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getStatusBarId(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    .line 98
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getStatusBarId(Landroid/content/Context;)I
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getToolbarHeight(Landroid/content/Context;)F
    .locals 0

    .line 107
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeightPx(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->roundedPxToDp(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getToolbarHeightPx(Landroid/content/Context;)I
    .locals 3

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f040003

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 121
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 122
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private static getValue(I)Landroid/util/TypedValue;
    .locals 3

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-object v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static leadImageHeightForDevice(Landroid/content/Context;)I
    .locals 1

    .line 139
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayWidthPx()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->articleHeaderViewScreenHeightRatio()F

    move-result v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayHeightPx()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->articleHeaderViewScreenHeightRatio()F

    move-result v0

    :goto_0
    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static pxToDp(F)F
    .locals 1

    .line 27
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    div-float/2addr p0, v0

    return p0
.end method

.method public static roundedDpToPx(F)I
    .locals 0

    .line 23
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static roundedPxToDp(F)I
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/wikipedia/util/DimenUtil;->pxToDp(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
