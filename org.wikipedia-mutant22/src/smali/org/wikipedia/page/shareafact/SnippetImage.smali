.class public final Lorg/wikipedia/page/shareafact/SnippetImage;
.super Ljava/lang/Object;
.source "SnippetImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;
    }
.end annotation


# static fields
.field private static final BOTTOM_PADDING:I = 0x19

.field private static final DESCRIPTION_WIDTH:I = 0x168

.field private static final HEIGHT:I = 0x168

.field private static final HORIZONTAL_PADDING:I = 0x1e

.field private static final ICONS_HEIGHT:I = 0x10

.field private static final ICONS_WIDTH:I = 0x10

.field private static final QUARTER:I = 0x4

.field private static final SERIF:Landroid/graphics/Typeface;

.field private static final SPACING_MULTIPLIER:F = 1.0f

.field private static final TEXT_WIDTH:I = 0x244

.field private static final TOP_PADDING:I = 0x16

.field private static final WIDTH:I = 0x280


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "serif"

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/page/shareafact/SnippetImage;->SERIF:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLayout(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/StaticLayout;
    .locals 9

    .line 348
    new-instance v8, Landroid/text/StaticLayout;

    .line 349
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$200(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 350
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$100(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/TextPaint;

    move-result-object v2

    .line 351
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$300(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)I

    move-result v3

    .line 352
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$400(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/Layout$Alignment;

    move-result-object v4

    .line 353
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$500(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private static drawBackground(Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x168

    const/16 v1, 0x280

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageLicense;->hasLicenseInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-static {p0, v1, v0}, Lorg/wikipedia/page/shareafact/SnippetImage;->scaleCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const p1, -0xdbdbc8

    .line 91
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-object p0
.end method

.method private static drawDescription(Landroid/graphics/Canvas;Ljava/lang/String;IZ)I
    .locals 8

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x5

    return p2

    .line 148
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 149
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    .line 150
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 151
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 152
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, -0x777778

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v2, v0, v3, v3, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 155
    new-instance v7, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    const/16 v3, 0x168

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLorg/wikipedia/page/shareafact/SnippetImage$1;)V

    const/16 p1, 0x17

    const/4 v0, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v7, p1, v0, v6, v1}, Lorg/wikipedia/page/shareafact/SnippetImage;->optimizeTextSize(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;IIFF)Landroid/text/StaticLayout;

    move-result-object p1

    const/16 v0, 0x1e

    if-eqz p3, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p3

    rsub-int v0, p3, 0x262

    :cond_1
    add-int/lit8 p2, p2, -0x5

    .line 163
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, v0

    int-to-float v0, p2

    .line 165
    invoke-virtual {p0, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method private static drawGradient(Landroid/graphics/Canvas;)V
    .locals 9

    .line 101
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x60000000

    const/high16 v6, -0x60000000

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 104
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static drawLicenseIcons(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;Landroid/graphics/Canvas;Z)V
    .locals 1

    if-eqz p4, :cond_0

    const/16 p4, 0x262

    const/16 v0, 0x252

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    const/16 p4, 0x2e

    .line 217
    :goto_0
    invoke-static {p1, p2}, Lorg/wikipedia/page/shareafact/SnippetImage;->shouldDefaultToCCLicense(Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0800e7

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p2}, Lorg/wikipedia/gallery/ImageLicense;->getLicenseIcon()I

    move-result p1

    .line 216
    :goto_1
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x13f

    const/16 p2, 0x14f

    .line 219
    invoke-virtual {p0, v0, p1, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static drawTextSnippet(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 116
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    .line 118
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v6, 0x43430000    # 195.0f

    .line 119
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 120
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, -0x777778

    .line 122
    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 124
    new-instance v7, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    const/16 v3, 0x244

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLorg/wikipedia/page/shareafact/SnippetImage$1;)V

    const/16 p1, 0xe1

    const/4 v0, 0x5

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v7, p1, v0, v6, v1}, Lorg/wikipedia/page/shareafact/SnippetImage;->optimizeTextSize(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;IIFF)Landroid/text/StaticLayout;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 129
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x16

    int-to-float p1, p1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 130
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method private static drawTitle(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IZ)V
    .locals 8

    .line 180
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    .line 182
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v6, 0x41f00000    # 30.0f

    .line 183
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 184
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    sget-object v0, Lorg/wikipedia/page/shareafact/SnippetImage;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v3, -0x777778

    .line 186
    invoke-virtual {v2, v0, v1, v0, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 188
    new-instance v7, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    const/16 v3, 0x168

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLorg/wikipedia/page/shareafact/SnippetImage$1;)V

    const/16 p1, 0x46

    const/4 v0, 0x2

    invoke-static {v7, p1, v0, v6, v6}, Lorg/wikipedia/page/shareafact/SnippetImage;->optimizeTextSize(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;IIFF)Landroid/text/StaticLayout;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 193
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p3

    rsub-int p3, p3, 0x262

    goto :goto_0

    :cond_0
    const/16 p3, 0x1e

    :goto_0
    add-int/lit8 p2, p2, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    int-to-float p2, p2

    .line 198
    invoke-virtual {p0, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawWordmarkFromStaticImage(Landroid/content/Context;Landroid/graphics/Canvas;Z)V
    .locals 3

    const v0, 0x7f08017e

    .line 240
    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const v0, -0x333334

    .line 241
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x1e

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e0

    :goto_0
    add-int/lit16 v0, p2, 0x82

    const/16 v1, 0x139

    const/16 v2, 0x14f

    .line 249
    invoke-virtual {p0, p2, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static drawWordmarkFromText(Landroid/content/Context;Landroid/graphics/Canvas;Z)V
    .locals 6

    .line 259
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 260
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const v0, -0x333334

    .line 261
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 262
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 263
    sget-object v0, Lorg/wikipedia/page/shareafact/SnippetImage;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v0, 0x3f87ae14    # 1.06f

    .line 264
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    const v0, 0x7f10048c

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 267
    invoke-static {}, Lorg/wikipedia/util/L10nUtil;->isDeviceRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v5, p0

    .line 268
    new-instance p0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    const/16 v3, 0xdc

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFLandroid/text/Layout$Alignment;)V

    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage;->buildLayout(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/StaticLayout;

    move-result-object p0

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 271
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    rsub-int v1, v1, 0x14f

    rsub-int v0, v0, 0x262

    if-eqz p2, :cond_1

    const/16 v0, 0x1e

    .line 281
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, v0

    int-to-float v0, v1

    .line 282
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getSnippetImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Lorg/wikipedia/gallery/ImageLicense;)Landroid/graphics/Bitmap;
    .locals 4

    .line 61
    invoke-static {p1, p5}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawBackground(Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 64
    invoke-static {v1}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawGradient(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    invoke-static {v1, p4}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawTextSnippet(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object p4

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p4

    const/4 v3, -0x1

    if-ne p4, v3, :cond_1

    const/4 v2, 0x1

    .line 70
    :cond_1
    invoke-static {p0, p1, p5, v1, v2}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawLicenseIcons(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;Landroid/graphics/Canvas;Z)V

    const/16 p1, 0x13f

    .line 71
    invoke-static {v1, p3, p1, v2}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawDescription(Landroid/graphics/Canvas;Ljava/lang/String;IZ)I

    move-result p1

    .line 72
    invoke-static {v1, p2, p1, v2}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawTitle(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IZ)V

    .line 73
    invoke-static {p0}, Lorg/wikipedia/util/L10nUtil;->canLangUseImageForWikipediaWordmark(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-static {p0, v1, v2}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawWordmarkFromStaticImage(Landroid/content/Context;Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {p0, v1, v2}, Lorg/wikipedia/page/shareafact/SnippetImage;->drawWordmarkFromText(Landroid/content/Context;Landroid/graphics/Canvas;Z)V

    :goto_0
    return-object v0
.end method

.method private static optimizeTextSize(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;IIFF)Landroid/text/StaticLayout;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p3, p4

    if-ltz v3, :cond_3

    .line 302
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$100(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 303
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage;->buildLayout(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    if-gt v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr p3, v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    sub-float/2addr p3, v2

    :cond_2
    :goto_1
    sub-float/2addr p3, v2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_5

    .line 320
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$200(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_4

    .line 323
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p4

    add-int/lit8 p4, p4, -0x3

    goto :goto_3

    .line 324
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    :goto_3
    const/16 v3, 0x20

    .line 325
    invoke-virtual {p3, v3, p4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p4

    add-int/2addr p4, v2

    if-lez p4, :cond_5

    .line 327
    new-instance v0, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-virtual {p3, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "..."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p3}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {v0}, Lorg/wikipedia/page/shareafact/SnippetImage;->buildLayout(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    if-gt p3, p2, :cond_5

    goto :goto_4

    :cond_5
    move v2, p1

    :goto_4
    if-nez v2, :cond_6

    const p1, 0x3f5eb852    # 0.87f

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 338
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$300(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    .line 339
    new-instance p1, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;

    .line 340
    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$200(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p0}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;->access$100(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/TextPaint;

    move-result-object p4

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p4, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;-><init>(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;Ljava/lang/CharSequence;)V

    .line 339
    invoke-static {p1}, Lorg/wikipedia/page/shareafact/SnippetImage;->buildLayout(Lorg/wikipedia/page/shareafact/SnippetImage$TextLayoutParams;)Landroid/text/StaticLayout;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method private static scaleCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 364
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p1

    int-to-float v0, v0

    div-float v3, v2, v0

    int-to-float v4, p2

    int-to-float v1, v1

    div-float v5, v4, v1

    const/4 v6, 0x0

    cmpl-float v7, v3, v5

    if-lez v7, :cond_2

    mul-float v1, v1, v3

    sub-float v0, v1, v4

    float-to-int v0, v0

    .line 377
    div-int/lit8 v3, v0, 0x2

    if-gez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    add-int v4, v3, p2

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    move v0, v3

    goto :goto_1

    :cond_2
    mul-float v2, v0, v5

    :goto_0
    const/4 v0, 0x0

    :goto_1
    float-to-int v1, v2

    float-to-int v2, v4

    const/4 v3, 0x1

    .line 389
    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 390
    invoke-static {p0, v6, v0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 391
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private static shouldDefaultToCCLicense(Landroid/graphics/Bitmap;Lorg/wikipedia/gallery/ImageLicense;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageLicense;->hasLicenseInfo()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
