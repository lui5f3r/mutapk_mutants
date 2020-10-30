.class Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;
.super Ljava/lang/Object;
.source "FeaturedImageCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/image/FeaturedImageCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;->this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;Lorg/wikipedia/feed/image/FeaturedImageCardView$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;-><init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;->this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->access$500(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;->this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;->this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->access$600(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;->this$0:Lorg/wikipedia/feed/image/FeaturedImageCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/image/FeaturedImageCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImageCard;->baseImage()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/image/FeaturedImageCardView$Callback;->onDownloadImage(Lorg/wikipedia/feed/image/FeaturedImage;)V

    :cond_0
    return-void
.end method
