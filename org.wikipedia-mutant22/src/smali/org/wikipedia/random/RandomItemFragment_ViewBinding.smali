.class public Lorg/wikipedia/random/RandomItemFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RandomItemFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/random/RandomItemFragment;

.field private view7f090308:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/random/RandomItemFragment;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomItemFragment;

    const v0, 0x7f090308

    const-string v1, "field \'containerView\' and method \'onClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'containerView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->containerView:Landroid/view/ViewGroup;

    .line 31
    iput-object v1, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->view7f090308:Landroid/view/View;

    .line 32
    new-instance v0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;-><init>(Lorg/wikipedia/random/RandomItemFragment_ViewBinding;Lorg/wikipedia/random/RandomItemFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09030b

    const-string v1, "field \'progressBar\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->progressBar:Landroid/view/View;

    .line 39
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f09049a

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090498

    const-string v2, "field \'articleTitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->articleTitleView:Landroid/widget/TextView;

    .line 41
    const-class v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const v1, 0x7f090497

    const-string v2, "field \'articleSubtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090499

    const-string v2, "field \'extractView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    .line 43
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090309

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    iput-object p2, p1, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomItemFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomItemFragment;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->containerView:Landroid/view/ViewGroup;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->progressBar:Landroid/view/View;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->articleTitleView:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->articleSubtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 58
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lorg/wikipedia/random/RandomItemFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 61
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->view7f090308:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding;->view7f090308:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
