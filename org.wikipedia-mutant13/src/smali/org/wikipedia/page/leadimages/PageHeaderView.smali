.class public Lorg/wikipedia/page/leadimages/PageHeaderView;
.super Lorg/wikipedia/views/LinearLayoutOverWebView;
.source "PageHeaderView.java"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;
    }
.end annotation


# instance fields
.field callToActionContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field callToActionTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

.field gradientViewBottom:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field gradientViewTop:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field image:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/wikipedia/views/LinearLayoutOverWebView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/LinearLayoutOverWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/views/LinearLayoutOverWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0116

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10044f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewTop:Landroid/view/View;

    const v1, 0x7f060037

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/wikipedia/util/GradientUtil;->getPowerGradient(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewBottom:Landroid/view/View;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lorg/wikipedia/util/GradientUtil;->getPowerGradient(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateScroll()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->updateScroll(I)V

    return-void
.end method

.method private updateScroll(I)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 130
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    neg-int p1, p1

    int-to-float p1, p1

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public copyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {v0}, Lorg/wikipedia/views/ViewUtil;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->hide()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->show()V

    .line 92
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method onCallToActionClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;->onCallToActionClicked()V

    :cond_0
    return-void
.end method

.method onImageClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;->onImageClicked()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 121
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->updateScroll()V

    return-void
.end method

.method public onScrollChanged(IIZ)V
    .locals 0

    .line 103
    invoke-direct {p0, p2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->updateScroll(I)V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callback:Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;

    return-void
.end method

.method public setUpCallToAction(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewBottom:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 64
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->leadImageHeightForDevice(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
