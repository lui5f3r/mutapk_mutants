.class public Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "OnThisDayPagesViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

.field private view7f0902e9:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902db

    const-string v2, "field \'pageItemTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemTitleTextView:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d4

    const-string v2, "field \'pageItemDescTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemDescTextView:Landroid/widget/TextView;

    .line 28
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f0902d5

    const-string v2, "field \'pageItemImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v0, 0x7f0902e9

    const-string v1, "field \'parent\', method \'onBaseViewClicked\', and method \'showOverflowMenu\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->parent:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->view7f0902e9:Landroid/view/View;

    .line 32
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemTitleTextView:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemDescTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->parent:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->view7f0902e9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->view7f0902e9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 60
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;->view7f0902e9:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
