.class public Lorg/wikipedia/richtext/DrawableSpan;
.super Landroid/text/style/ImageSpan;
.source "DrawableSpan.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 62
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 67
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 22
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 27
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/richtext/DrawableSpan;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {p0}, Lorg/wikipedia/richtext/DrawableSpan;->setIntrinsicBounds()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 88
    iget-object p2, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    invoke-virtual {p0, p7, p8}, Lorg/wikipedia/richtext/DrawableSpan;->drawY(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object p2, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawY(II)I
    .locals 2

    .line 111
    iget v0, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 116
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    sub-int/2addr p1, p2

    return p1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIntrinsicBounds()V
    .locals 4

    .line 104
    iget-object v0, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/richtext/DrawableSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method
