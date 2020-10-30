.class Lorg/wikipedia/gallery/GalleryItemFragment$1;
.super Ljava/lang/Object;
.source "GalleryItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loading:Z

.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->loading:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$GalleryItemFragment$1(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 278
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$100(Lorg/wikipedia/gallery/GalleryItemFragment;Z)V

    .line 280
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryActivity;->layOutGalleryDescription()V

    .line 282
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoPlayButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 286
    iput-boolean v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->loading:Z

    return-void
.end method

.method public synthetic lambda$onClick$1$GalleryItemFragment$1(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 289
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$100(Lorg/wikipedia/gallery/GalleryItemFragment;Z)V

    .line 290
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f100141

    invoke-static {p1, p3}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    .line 292
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 293
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoPlayButton:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iput-boolean p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->loading:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 265
    iget-boolean p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->loading:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getBestDerivative()Lorg/wikipedia/gallery/ImageInfo$Derivative;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 268
    iput-boolean p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->loading:Z

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading video from url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getBestDerivative()Lorg/wikipedia/gallery/ImageInfo$Derivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo$Derivative;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object v0, v0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    new-instance v2, Landroid/widget/MediaController;

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$002(Lorg/wikipedia/gallery/GalleryItemFragment;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 272
    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isNavigationBarShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$000(Lorg/wikipedia/gallery/GalleryItemFragment;)Landroid/widget/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/MediaController;->setPadding(IIII)V

    .line 275
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$100(Lorg/wikipedia/gallery/GalleryItemFragment;Z)V

    .line 276
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object v0, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->access$000(Lorg/wikipedia/gallery/GalleryItemFragment;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 277
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$1$X_59BFZxSmgPH1sJnacSrzgd4tw;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$1$X_59BFZxSmgPH1sJnacSrzgd4tw;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 288
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$1$xWbPnMEqOVTXVrxpKRJb9giGkUc;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$1$xWbPnMEqOVTXVrxpKRJb9giGkUc;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 298
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    iget-object v0, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getBestDerivative()Lorg/wikipedia/gallery/ImageInfo$Derivative;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo$Derivative;->getSrc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method
