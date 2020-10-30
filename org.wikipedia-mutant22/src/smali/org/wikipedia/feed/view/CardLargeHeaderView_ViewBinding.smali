.class public Lorg/wikipedia/feed/view/CardLargeHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "CardLargeHeaderView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/CardLargeHeaderView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/CardLargeHeaderView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/CardLargeHeaderView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/CardLargeHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/CardLargeHeaderView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/feed/view/CardLargeHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardLargeHeaderView;

    const v0, 0x7f090451

    const-string v1, "field \'backgroundView\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardLargeHeaderView;->backgroundView:Landroid/view/View;

    .line 28
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f090452

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardLargeHeaderView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090454

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardLargeHeaderView;->titleView:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090453

    const-string v2, "field \'subtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/feed/view/CardLargeHeaderView;->subtitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardLargeHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardLargeHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lorg/wikipedia/feed/view/CardLargeHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardLargeHeaderView;

    .line 40
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;->backgroundView:Landroid/view/View;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 42
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;->titleView:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardLargeHeaderView;->subtitleView:Landroid/widget/TextView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
