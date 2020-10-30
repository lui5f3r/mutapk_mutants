.class public Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;
.super Lorg/wikipedia/views/WikiCardView;
.source "HorizontalScrollingListCardItemView.java"


# instance fields
.field private callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lorg/wikipedia/views/WikiCardView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0105

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-object v0
.end method

.method public getImageView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->textView:Landroid/widget/TextView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/richtext/RichTextUtil;->removeUnderlinesFromLinksAndMakeBold(Landroid/widget/TextView;)V

    return-void
.end method
