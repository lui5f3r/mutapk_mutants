.class public Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;
.super Ljava/lang/Object;
.source "FeaturedArticleCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

.field private view7f090472:Landroid/view/View;

.field private view7f090474:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    .line 36
    const-class v0, Lorg/wikipedia/feed/view/CardHeaderView;

    const v1, 0x7f090471

    const-string v2, "field \'headerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/CardHeaderView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 37
    const-class v0, Lorg/wikipedia/feed/view/ActionFooterView;

    const v1, 0x7f090470

    const-string v2, "field \'footerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/view/ActionFooterView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    const v0, 0x7f090473

    const-string v1, "field \'imageContainerView\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageContainerView:Landroid/view/View;

    const v0, 0x7f090472

    const-string v1, "field \'imageView\' and method \'onCardClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const-string v3, "field \'imageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 41
    iput-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090472:Landroid/view/View;

    .line 42
    new-instance v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046e

    const-string v2, "field \'articleTitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleTitleView:Landroid/widget/TextView;

    .line 49
    const-class v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const v1, 0x7f09046d

    const-string v2, "field \'articleSubtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046f

    const-string v2, "field \'extractView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->extractView:Landroid/widget/TextView;

    const v0, 0x7f090474

    const-string v1, "field \'textContainerView\' and method \'onCardClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    iput-object p2, p1, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->textContainerView:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090474:Landroid/view/View;

    .line 54
    new-instance v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$2;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->headerView:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->footerView:Lorg/wikipedia/feed/view/ActionFooterView;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageContainerView:Landroid/view/View;

    .line 72
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 73
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleTitleView:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 75
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->extractView:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->textContainerView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090472:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090472:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090474:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;->view7f090474:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
