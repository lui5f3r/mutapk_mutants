.class public abstract Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;
.super Ljava/lang/Object;
.source "ImagePipelineBitmapGetter.java"


# instance fields
.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->imageUrl:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;-><init>(Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 27
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
