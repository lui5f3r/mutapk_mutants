.class Lorg/wikipedia/views/FaceAndColorDetectImageView$CenterCropWithFace;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "FaceAndColorDetectImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/FaceAndColorDetectImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterCropWithFace"
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "org.wikipedia.views.CenterCropWithFace"


# instance fields
.field private final idBytes:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 97
    sget-object v0, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "org.wikipedia.views.CenterCropWithFace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/views/FaceAndColorDetectImageView$CenterCropWithFace;->idBytes:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/views/FaceAndColorDetectImageView$1;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/wikipedia/views/FaceAndColorDetectImageView$CenterCropWithFace;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 101
    instance-of p1, p1, Lorg/wikipedia/views/FaceAndColorDetectImageView$CenterCropWithFace;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x515b829

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 116
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p4, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-static {p2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->access$100(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-static {p1, p2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->access$200(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    :try_start_0
    invoke-static {v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->access$300(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 127
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 136
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v3, v3, p3

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_2

    int-to-float v0, p4

    .line 138
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p3

    .line 139
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    mul-float v2, v2, v5

    move v4, v2

    :goto_1
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    int-to-float v2, p3

    .line 142
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz v0, :cond_4

    int-to-float v3, p4

    mul-float v6, v3, v5

    .line 147
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v0

    sub-float/2addr v6, v7

    cmpl-float v0, v6, v4

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float/2addr v0, v3

    neg-float v0, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float/2addr v0, v3

    neg-float v0, v0

    goto :goto_2

    :cond_4
    int-to-float v0, p4

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    mul-float v0, v0, v5

    :goto_2
    move v6, v0

    :cond_5
    move v0, v2

    .line 158
    :goto_3
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v0, v0

    add-float/2addr v6, v5

    float-to-int v2, v6

    int-to-float v2, v2

    .line 159
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    invoke-static {p2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->access$400(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 163
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 165
    invoke-static {p2, p1, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->applyMatrixWithBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/wikipedia/views/FaceAndColorDetectImageView$CenterCropWithFace;->idBytes:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
