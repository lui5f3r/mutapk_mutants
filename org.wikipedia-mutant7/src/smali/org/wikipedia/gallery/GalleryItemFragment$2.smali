.class Lorg/wikipedia/gallery/GalleryItemFragment$2;
.super Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;
.source "GalleryItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/gallery/GalleryItemFragment;->shareImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 345
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$200(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$300(Lorg/wikipedia/gallery/GalleryItemFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$400(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$200(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$300(Lorg/wikipedia/gallery/GalleryItemFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryItemFragment$2;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$400(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lorg/wikipedia/gallery/GalleryItemFragment$Callback;->onShare(Lorg/wikipedia/gallery/GalleryItemFragment;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    :cond_1
    return-void
.end method
