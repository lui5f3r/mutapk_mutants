.class public final Lorg/wikipedia/dataclient/okhttp/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static centerCropTransform2:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

.field private static centerInsideTransform1:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

.field private static circleCropTransform3:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

.field private static fitCenterTransform0:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

.field private static noAnimation5:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

.field private static noTransformation4:Lorg/wikipedia/dataclient/okhttp/GlideOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 172
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerCropTransform2:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 174
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerCropTransform2:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 176
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerCropTransform2:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 159
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerInsideTransform1:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 161
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerInside()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerInsideTransform1:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 163
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerInsideTransform1:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 185
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->circleCropTransform3:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 187
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->circleCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->circleCropTransform3:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 189
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->circleCropTransform3:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->decode(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 56
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 256
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 283
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 274
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->encodeQuality(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 101
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->error(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 92
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 146
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fitCenterTransform0:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 148
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fitCenter()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fitCenterTransform0:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 150
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fitCenterTransform0:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 238
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 247
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->frame(J)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 292
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noAnimation5:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 294
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->dontAnimate()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noAnimation5:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 296
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noAnimation5:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 207
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noTransformation4:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    .line 209
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->dontTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noTransformation4:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    .line 211
    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->noTransformation4:Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 128
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->override(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 119
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->override(II)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 83
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->placeholder(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 74
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 65
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 137
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 47
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->sizeMultiplier(F)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 110
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->skipMemoryCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 265
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->timeout(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 610
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public autoClone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 622
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 498
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->centerInside()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 526
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->circleCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 540
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->clone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->clone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 421
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->decode(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 435
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->disallowHardwareConfig()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public disallowHardwareConfig()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 470
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 331
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->dontAnimate()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 603
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->dontTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 596
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 477
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 442
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->encodeQuality(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 449
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->error(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 380
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 373
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fallback(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 366
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->fitCenter()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 463
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->frame(J)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 456
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->lock()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 616
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public onlyRetrieveFromCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalCenterCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 491
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalCenterInside()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 519
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalCircleCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 533
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalFitCenter()Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 1

    .line 505
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 573
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 581
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->override(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->override(II)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public override(II)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 401
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->placeholder(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 338
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 428
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 415
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->sizeMultiplier(F)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 303
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->skipMemoryCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 394
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->timeout(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 484
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 547
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .line 589
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public final varargs transform([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 556
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 566
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->useAnimationPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 317
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideOptions;
    .locals 0

    .line 310
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideOptions;

    return-object p1
.end method
