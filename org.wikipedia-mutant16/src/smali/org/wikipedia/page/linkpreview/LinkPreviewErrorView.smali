.class public Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;
.super Landroid/widget/LinearLayout;
.source "LinkPreviewErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;,
        Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;,
        Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;
    }
.end annotation


# instance fields
.field private addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

.field private callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

.field private dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

.field icon:Landroid/widget/ImageView;
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

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$1;)V

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    .line 29
    new-instance p2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$1;)V

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    const p2, 0x7f0c010a

    .line 41
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    return-object p0
.end method


# virtual methods
.method addToListCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    return-object v0
.end method

.method dismissCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 3

    .line 58
    invoke-static {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->get(Ljava/lang/Throwable;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->icon()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    if-ne p1, v0, :cond_0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->text()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
