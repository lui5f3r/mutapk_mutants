.class public Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "PageHeaderView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/page/leadimages/PageHeaderView;

.field private view7f090095:Landroid/view/View;

.field private view7f090493:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/leadimages/PageHeaderView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/leadimages/PageHeaderView;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->target:Lorg/wikipedia/page/leadimages/PageHeaderView;

    const v0, 0x7f090493

    const-string v1, "field \'image\' and method \'onImageClick\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const-string v3, "field \'image\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 35
    iput-object v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090493:Landroid/view/View;

    .line 36
    new-instance v0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$1;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;Lorg/wikipedia/page/leadimages/PageHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090495

    const-string v1, "field \'gradientViewTop\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewTop:Landroid/view/View;

    const v0, 0x7f090494

    const-string v1, "field \'gradientViewBottom\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewBottom:Landroid/view/View;

    const v0, 0x7f090095

    const-string v1, "field \'callToActionContainer\' and method \'onCallToActionClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p1, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionContainer:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090095:Landroid/view/View;

    .line 47
    new-instance v1, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;Lorg/wikipedia/page/leadimages/PageHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090096

    const-string v2, "field \'callToActionTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->target:Lorg/wikipedia/page/leadimages/PageHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->target:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 63
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 64
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewTop:Landroid/view/View;

    .line 65
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->gradientViewBottom:Landroid/view/View;

    .line 66
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionContainer:Landroid/view/View;

    .line 67
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->callToActionTextView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090493:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090493:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090095:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;->view7f090095:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
