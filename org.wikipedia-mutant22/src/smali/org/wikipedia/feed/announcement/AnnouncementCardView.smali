.class public Lorg/wikipedia/feed/announcement/AnnouncementCardView;
.super Lorg/wikipedia/feed/view/DefaultFeedCardView;
.source "AnnouncementCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/DefaultFeedCardView<",
        "Lorg/wikipedia/feed/announcement/AnnouncementCard;",
        ">;"
    }
.end annotation


# instance fields
.field actionViewNegative:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field actionViewPositive:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private callback:Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;

.field footerBorderView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field footerTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
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

    .line 41
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c00ef

    .line 42
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->setNegativeActionVisible(Z)V

    .line 46
    iget-object p1, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 47
    iget-object p1, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->footerTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method onNegativeActionClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;->onAnnouncementNegativeAction(Lorg/wikipedia/feed/model/Card;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->callback:Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;->onAnnouncementNegativeAction(Lorg/wikipedia/feed/model/Card;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onPositiveActionClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/announcement/AnnouncementCard;

    invoke-virtual {v2}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->actionUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;->onAnnouncementPositiveAction(Lorg/wikipedia/feed/model/Card;Landroid/net/Uri;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->callback:Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/announcement/AnnouncementCard;

    invoke-virtual {v2}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->actionUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;->onAnnouncementPositiveAction(Lorg/wikipedia/feed/model/Card;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->callback:Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/announcement/AnnouncementCard;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->extract()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->extract()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->hasAction()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewPositive:Landroid/widget/Button;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->actionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->negativeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewNegative:Landroid/widget/Button;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->negativeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    :goto_1
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->image()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    goto :goto_2

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_2
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->imageHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 79
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->imageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 81
    iget-object v1, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->headerImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_4
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->hasFooterCaption()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->footerTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->footerCaption()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 87
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->footerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->footerBorderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_3
    invoke-virtual {p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;->hasBorder()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    const/16 p1, 0xa

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    :cond_6
    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 26
    check-cast p1, Lorg/wikipedia/feed/announcement/AnnouncementCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->setCard(Lorg/wikipedia/feed/announcement/AnnouncementCard;)V

    return-void
.end method

.method protected setNegativeActionVisible(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->actionViewNegative:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
