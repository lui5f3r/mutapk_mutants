.class public Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GalleryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/gallery/GalleryActivity;

.field private view7f090179:Landroid/view/View;

.field private view7f09017c:Landroid/view/View;

.field private view7f090187:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->target:Lorg/wikipedia/gallery/GalleryActivity;

    .line 40
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090190

    const-string v2, "field \'transitionReceiver\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    .line 41
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f09018e

    const-string v2, "field \'toolbarContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->toolbarContainer:Landroid/view/ViewGroup;

    .line 42
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09018d

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f09018f

    const-string v1, "field \'toolbarGradient\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->toolbarGradient:Landroid/view/View;

    .line 44
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090182

    const-string v2, "field \'infoContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    const v0, 0x7f090183

    const-string v1, "field \'infoGradient\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->infoGradient:Landroid/view/View;

    .line 46
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09018b

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f09017f

    const-string v1, "field \'galleryDescriptionContainer\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->galleryDescriptionContainer:Landroid/view/View;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090180

    const-string v2, "field \'descriptionText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->descriptionText:Landroid/widget/TextView;

    const v0, 0x7f090187

    const-string v1, "field \'licenseContainer\', method \'onClick\', and method \'onLongClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->licenseContainer:Landroid/view/View;

    .line 51
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090187:Landroid/view/View;

    .line 52
    new-instance v1, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;-><init>(Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v1, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$2;-><init>(Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090188

    const-string v2, "field \'licenseIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    .line 65
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090189

    const-string v2, "field \'byIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->byIcon:Landroid/widget/ImageView;

    .line 66
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09018a

    const-string v2, "field \'saIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->saIcon:Landroid/widget/ImageView;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09017b

    const-string v2, "field \'creditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->creditText:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f090185

    const-string v2, "field \'galleryPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 69
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090478

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v0, 0x7f090179

    const-string v1, "field \'captionEditButton\' and method \'onEditClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'captionEditButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090179:Landroid/view/View;

    .line 73
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$3;-><init>(Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017e

    const-string v1, "field \'ctaContainer\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->ctaContainer:Landroid/view/View;

    .line 80
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09017d

    const-string v2, "field \'ctaButtonText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/gallery/GalleryActivity;->ctaButtonText:Landroid/widget/TextView;

    const v0, 0x7f09017c

    const-string v1, "method \'onTranslateClick\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 82
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f09017c:Landroid/view/View;

    .line 83
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$4;-><init>(Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->target:Lorg/wikipedia/gallery/GalleryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->target:Lorg/wikipedia/gallery/GalleryActivity;

    .line 98
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    .line 99
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarContainer:Landroid/view/ViewGroup;

    .line 100
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 101
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarGradient:Landroid/view/View;

    .line 102
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    .line 103
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->infoGradient:Landroid/view/View;

    .line 104
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 105
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->galleryDescriptionContainer:Landroid/view/View;

    .line 106
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->descriptionText:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->licenseContainer:Landroid/view/View;

    .line 108
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    .line 109
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->byIcon:Landroid/widget/ImageView;

    .line 110
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->saIcon:Landroid/widget/ImageView;

    .line 111
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->creditText:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 113
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 114
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    .line 115
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->ctaContainer:Landroid/view/View;

    .line 116
    iput-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->ctaButtonText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090187:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090187:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090187:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090179:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f090179:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f09017c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;->view7f09017c:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
