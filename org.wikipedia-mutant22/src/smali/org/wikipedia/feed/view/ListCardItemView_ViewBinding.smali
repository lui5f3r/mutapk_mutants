.class public Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;
.super Ljava/lang/Object;
.source "ListCardItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/ListCardItemView;

.field private viewSource:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/ListCardItemView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/ListCardItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/ListCardItemView;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardItemView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09047f

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090481

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardItemView;->titleView:Landroid/widget/TextView;

    .line 33
    const-class v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    const v1, 0x7f090480

    const-string v2, "field \'subtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/ListCardItemView;->subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 34
    iput-object p2, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->viewSource:Landroid/view/View;

    .line 35
    new-instance v0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;Lorg/wikipedia/feed/view/ListCardItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$2;-><init>(Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;Lorg/wikipedia/feed/view/ListCardItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/ListCardItemView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardItemView;->titleView:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lorg/wikipedia/feed/view/ListCardItemView;->subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 60
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 62
    iput-object v1, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;->viewSource:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
