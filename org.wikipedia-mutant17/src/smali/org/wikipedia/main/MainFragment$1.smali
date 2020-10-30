.class Lorg/wikipedia/main/MainFragment$1;
.super Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/main/MainFragment;->onFeedShareImage(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/main/MainFragment;

.field final synthetic val$card:Lorg/wikipedia/feed/image/FeaturedImageCard;

.field final synthetic val$fullSizeUrl:Ljava/lang/String;

.field final synthetic val$thumbUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wikipedia/main/MainFragment;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/image/FeaturedImageCard;Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$1;->this$0:Lorg/wikipedia/main/MainFragment;

    iput-object p3, p0, Lorg/wikipedia/main/MainFragment$1;->val$thumbUrl:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/main/MainFragment$1;->val$card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    iput-object p5, p0, Lorg/wikipedia/main/MainFragment$1;->val$fullSizeUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$1;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/wikipedia/main/MainFragment$1;->val$thumbUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/main/MainFragment$1;->this$0:Lorg/wikipedia/main/MainFragment;

    .line 331
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/main/MainFragment$1;->val$card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    invoke-virtual {v3}, Lorg/wikipedia/feed/image/FeaturedImageCard;->age()I

    move-result v3

    invoke-static {v2, v3}, Lorg/wikipedia/util/ShareUtil;->getFeaturedImageShareSubject(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/main/MainFragment$1;->val$fullSizeUrl:Ljava/lang/String;

    .line 328
    invoke-static {v0, p1, v1, v2, v3}, Lorg/wikipedia/util/ShareUtil;->shareImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment$1;->this$0:Lorg/wikipedia/main/MainFragment;

    const v0, 0x7f100149

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/wikipedia/main/MainFragment$1;->val$card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    invoke-virtual {v3}, Lorg/wikipedia/feed/image/FeaturedImageCard;->baseImage()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/feed/image/FeaturedImage;->title()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
