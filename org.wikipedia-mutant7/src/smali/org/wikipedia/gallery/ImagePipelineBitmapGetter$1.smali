.class Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ImagePipelineBitmapGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->get(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;->this$0:Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object p2, p0, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;->this$0:Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;

    invoke-virtual {p2, p1}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
