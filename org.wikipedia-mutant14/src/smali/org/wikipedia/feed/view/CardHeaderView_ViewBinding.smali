.class public Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "CardHeaderView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/CardHeaderView;

.field private view7f09047e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/CardHeaderView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/CardHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/CardHeaderView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 31
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090450

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardHeaderView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090456

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardHeaderView;->titleView:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090455

    const-string v2, "field \'subtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardHeaderView;->subtitleView:Landroid/widget/TextView;

    const v0, 0x7f09047c

    const-string v1, "field \'langCodeBackground\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeBackground:Landroid/view/View;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047d

    const-string v2, "field \'langCodeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeView:Landroid/widget/TextView;

    const v0, 0x7f09047e

    const-string v1, "method \'onMenuClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->view7f09047e:Landroid/view/View;

    .line 38
    new-instance v0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;Lorg/wikipedia/feed/view/CardHeaderView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->target:Lorg/wikipedia/feed/view/CardHeaderView;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardHeaderView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardHeaderView;->titleView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardHeaderView;->subtitleView:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeBackground:Landroid/view/View;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->view7f09047e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lorg/wikipedia/feed/view/CardHeaderView_ViewBinding;->view7f09047e:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
