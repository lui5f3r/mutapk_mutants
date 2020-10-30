.class Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDownloadReceiverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity$1;)V
    .locals 0

    .line 878
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 881
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    const v1, 0x7f100148

    invoke-static {v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method
