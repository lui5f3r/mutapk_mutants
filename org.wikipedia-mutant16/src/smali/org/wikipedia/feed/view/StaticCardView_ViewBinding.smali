.class public Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;
.super Ljava/lang/Object;
.source "StaticCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/StaticCardView;

.field private view7f09049c:Landroid/view/View;

.field private view7f09049e:Landroid/view/View;

.field private view7f0904a0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/StaticCardView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/StaticCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/StaticCardView;Landroid/view/View;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/StaticCardView;

    const v0, 0x7f0904a0

    const-string v1, "field \'containerView\' and method \'onContentClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->containerView:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f0904a0:Landroid/view/View;

    .line 38
    new-instance v1, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;Lorg/wikipedia/feed/view/StaticCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a4

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->title:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a3

    const-string v2, "field \'subtitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->subtitle:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0904a1

    const-string v2, "field \'icon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0904a2

    const-string v1, "field \'progress\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->progress:Landroid/view/View;

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09049d

    const-string v2, "field \'actionIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->actionIcon:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09049f

    const-string v2, "field \'actionText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/StaticCardView;->actionText:Landroid/widget/TextView;

    const v0, 0x7f09049e

    const-string v1, "method \'onMenuClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049e:Landroid/view/View;

    .line 52
    new-instance v1, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$2;-><init>(Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;Lorg/wikipedia/feed/view/StaticCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09049c

    const-string v1, "method \'onActionClick\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 59
    iput-object p2, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049c:Landroid/view/View;

    .line 60
    new-instance v0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding$3;-><init>(Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;Lorg/wikipedia/feed/view/StaticCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/StaticCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->target:Lorg/wikipedia/feed/view/StaticCardView;

    .line 75
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->containerView:Landroid/view/View;

    .line 76
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->title:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->subtitle:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->icon:Landroid/widget/ImageView;

    .line 79
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->progress:Landroid/view/View;

    .line 80
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->actionIcon:Landroid/widget/ImageView;

    .line 81
    iput-object v1, v0, Lorg/wikipedia/feed/view/StaticCardView;->actionText:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f0904a0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f0904a0:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049e:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView_ViewBinding;->view7f09049c:Landroid/view/View;

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
