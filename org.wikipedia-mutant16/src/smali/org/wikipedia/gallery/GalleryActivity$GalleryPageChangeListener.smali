.class Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryPageChangeListener"
.end annotation


# instance fields
.field private currentPosition:I

.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, -0x1

    .line 474
    iput p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->currentPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 492
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/gallery/GalleryActivity;->access$500(Lorg/wikipedia/gallery/GalleryActivity;Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 478
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->layOutGalleryDescription()V

    .line 479
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryActivity;->access$200(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v0

    .line 480
    iget v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->currentPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v1}, Lorg/wikipedia/gallery/GalleryActivity;->access$300(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/analytics/GalleryFunnel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 481
    iget v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->currentPosition:I

    if-ge p1, v1, :cond_0

    .line 482
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v1}, Lorg/wikipedia/gallery/GalleryActivity;->access$300(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/analytics/GalleryFunnel;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v2}, Lorg/wikipedia/gallery/GalleryActivity;->access$400(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/analytics/GalleryFunnel;->logGallerySwipeLeft(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    .line 484
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v1}, Lorg/wikipedia/gallery/GalleryActivity;->access$300(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/analytics/GalleryFunnel;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v2}, Lorg/wikipedia/gallery/GalleryActivity;->access$400(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/analytics/GalleryFunnel;->logGallerySwipeRight(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 487
    :cond_1
    :goto_0
    iput p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;->currentPosition:I

    return-void
.end method
