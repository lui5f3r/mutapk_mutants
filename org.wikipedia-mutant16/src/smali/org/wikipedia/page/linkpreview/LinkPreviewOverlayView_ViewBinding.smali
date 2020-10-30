.class public Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;
.super Ljava/lang/Object;
.source "LinkPreviewOverlayView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

.field private view7f0901fc:Landroid/view/View;

.field private view7f0901fe:Landroid/view/View;

.field private view7f0901ff:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    const v0, 0x7f0901fc

    const-string v1, "field \'primaryButton\' and method \'onPrimaryClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'primaryButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->primaryButton:Landroid/widget/Button;

    .line 36
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fc:Landroid/view/View;

    .line 37
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$1;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901fe

    const-string v1, "field \'secondaryButton\' and method \'onSecondaryClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'secondaryButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->secondaryButton:Landroid/widget/Button;

    .line 45
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fe:Landroid/view/View;

    .line 46
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ff

    const-string v1, "field \'tertiaryButton\' and method \'onTertiaryClick\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 53
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'tertiaryButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->tertiaryButton:Landroid/widget/Button;

    .line 54
    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901ff:Landroid/view/View;

    .line 55
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$3;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->primaryButton:Landroid/widget/Button;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->secondaryButton:Landroid/widget/Button;

    .line 72
    iput-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->tertiaryButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fc:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901fe:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901ff:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;->view7f0901ff:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
