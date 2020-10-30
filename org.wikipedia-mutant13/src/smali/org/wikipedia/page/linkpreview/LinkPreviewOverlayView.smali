.class public Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;
.super Landroid/widget/FrameLayout;
.source "LinkPreviewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

.field primaryButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tertiaryButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c010b

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method onPrimaryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 66
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onPrimaryClick()V

    :cond_0
    return-void
.end method

.method onSecondaryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 72
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onSecondaryClick()V

    :cond_0
    return-void
.end method

.method onTertiaryClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 78
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onTertiaryClick()V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    return-void
.end method

.method public setPrimaryButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->primaryButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondaryButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->secondaryButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSecondaryButton(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->secondaryButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showTertiaryButton(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->tertiaryButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
