.class public Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/readinglist/ReadingListItemView;

.field private view7f0901d1:Landroid/view/View;

.field private viewSource:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901d3

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->titleView:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901d2

    const-string v2, "field \'statisticalDescriptionView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->statisticalDescriptionView:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901cc

    const-string v2, "field \'descriptionView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->descriptionView:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900f2

    const-string v2, "field \'defaultListEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->defaultListEmptyView:Landroid/widget/ImageView;

    const v0, 0x7f0901d1

    const-string v1, "field \'overflowView\' and method \'showOverflowMenu\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->overflowView:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->view7f0901d1:Landroid/view/View;

    .line 40
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$1;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->viewSource:Landroid/view/View;

    .line 47
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$3;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 59
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0901cd

    const-string v3, "field \'imageViews\'"

    .line 60
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0901ce

    .line 61
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0901cf

    .line 62
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0901d0

    .line 63
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 59
    invoke-static {v0}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 73
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->titleView:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->statisticalDescriptionView:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->descriptionView:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->defaultListEmptyView:Landroid/widget/ImageView;

    .line 77
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->overflowView:Landroid/view/View;

    .line 78
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->view7f0901d1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->view7f0901d1:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;->viewSource:Landroid/view/View;

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
