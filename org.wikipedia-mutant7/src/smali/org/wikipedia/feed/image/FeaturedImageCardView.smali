.class public Lorg/wikipedia/feed/image/FeaturedImageCardView;
.super Lorg/wikipedia/feed/view/DefaultFeedCardView;
.source "FeaturedImageCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/image/FeaturedImageCardView$CardShareListener;,
        Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;,
        Lorg/wikipedia/feed/image/FeaturedImageCardView$CardClickListener;,
        Lorg/wikipedia/feed/image/FeaturedImageCardView$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/DefaultFeedCardView<",
        "Lorg/wikipedia/feed/image/FeaturedImageCard;",
        ">;"
    }
.end annotation


# instance fields
.field descriptionView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field footerView:Lorg/wikipedia/feed/view/ActionFooterView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field headerView:Lorg/wikipedia/feed/view/CardHeaderView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f2

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 41
    iget-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p1}, Lorg/wikipedia/views/ImageZoomHelper;->setViewZoomable(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/wikipedia/feed/image/FeaturedImageCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p0

    return-object p0
.end method

.method private description(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->descriptionView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/richtext/RichTextUtil;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private footer()V
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->actionIcon(I)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    const v1, 0x7f100465

    .line 83
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->actionText(I)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardDownloadListener;-><init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;Lorg/wikipedia/feed/image/FeaturedImageCardView$1;)V

    .line 84
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->onActionListener(Landroid/view/View$OnClickListener;)Lorg/wikipedia/feed/view/ActionFooterView;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardShareListener;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardShareListener;-><init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;Lorg/wikipedia/feed/image/FeaturedImageCardView$1;)V

    .line 85
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/ActionFooterView;->onShareListener(Landroid/view/View$OnClickListener;)Lorg/wikipedia/feed/view/ActionFooterView;

    return-void
.end method

.method private header(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f080138

    .line 74
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const v1, 0x7f06002f

    .line 75
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/view/CardHeaderView;->setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method private image(Landroid/net/Uri;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    return-void
.end method

.method private onClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    .line 56
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/image/FeaturedImageCard;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->image()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->image(Landroid/net/Uri;)V

    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/feed/image/FeaturedImageCard;->description()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->description(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->header(Lorg/wikipedia/feed/image/FeaturedImageCard;)V

    .line 50
    invoke-direct {p0}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->footer()V

    .line 51
    new-instance p1, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/feed/image/FeaturedImageCardView$CardClickListener;-><init>(Lorg/wikipedia/feed/image/FeaturedImageCardView;Lorg/wikipedia/feed/image/FeaturedImageCardView$1;)V

    invoke-direct {p0, p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->onClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/wikipedia/feed/image/FeaturedImageCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/image/FeaturedImageCardView;->setCard(Lorg/wikipedia/feed/image/FeaturedImageCard;)V

    return-void
.end method
