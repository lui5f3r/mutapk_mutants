.class public Lorg/wikipedia/dataclient/okhttp/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 477
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 456
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->centerCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 312
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->centerInside()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 348
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->circleCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 366
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->clone()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->clone()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

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

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->clone()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 575
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->decode(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Class;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 231
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->disallowHardwareConfig()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public disallowHardwareConfig()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 276
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->dontAnimate()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 449
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->dontTransform()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 440
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 285
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->encodeQuality(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 249
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->error(Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->error(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 159
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 483
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->fallback(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->fitCenter()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 330
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 267
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->frame(J)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 258
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->getDownloadOnlyRequest()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadOnlyRequest()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 470
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/net/Uri;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/io/File;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/Integer;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/String;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/net/URL;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load([B)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Landroid/net/Uri;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/io/File;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/Integer;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/lang/String;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load(Ljava/net/URL;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->load([B)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 520
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 527
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 541
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 548
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 555
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 513
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 534
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public load([B)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 569
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->onlyRetrieveFromCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public onlyRetrieveFromCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalCenterCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 303
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalCenterInside()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 339
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalCircleCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 357
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalFitCenter()Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 321
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 411
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
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
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 421
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->override(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->override(II)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public override(II)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->placeholder(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->priority(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 222
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 213
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->sizeMultiplier(F)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->skipMemoryCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 186
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->theme(Landroid/content/res/Resources$Theme;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->thumbnail(F)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 506
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 490
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public final varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 499
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->timeout(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 294
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 375
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
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
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 431
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 388
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 463
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->useAnimationPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/okhttp/GlideRequest;->useUnlimitedSourceGeneratorsPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lorg/wikipedia/dataclient/okhttp/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/wikipedia/dataclient/okhttp/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/GlideRequest;

    return-object p1
.end method
