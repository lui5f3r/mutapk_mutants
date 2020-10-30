.class public Lorg/wikipedia/views/PageItemView_ViewBinding;
.super Ljava/lang/Object;
.source "PageItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/PageItemView;

.field private view7f0902d2:Landroid/view/View;

.field private view7f0902d5:Landroid/view/View;

.field private viewSource:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/PageItemView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/PageItemView_ViewBinding;-><init>(Lorg/wikipedia/views/PageItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/PageItemView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->target:Lorg/wikipedia/views/PageItemView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902db

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->titleView:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d4

    const-string v2, "field \'descriptionView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->descriptionView:Landroid/widget/TextView;

    const v0, 0x7f0902d5

    const-string v1, "field \'imageView\' and method \'onThumbClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->imageView:Landroid/widget/ImageView;

    .line 40
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d5:Landroid/view/View;

    .line 41
    new-instance v0, Lorg/wikipedia/views/PageItemView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageItemView_ViewBinding$1;-><init>(Lorg/wikipedia/views/PageItemView_ViewBinding;Lorg/wikipedia/views/PageItemView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d2

    const-string v1, "field \'secondaryActionView\' and method \'onSecondaryActionClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'secondaryActionView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->secondaryActionView:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d2:Landroid/view/View;

    .line 50
    new-instance v0, Lorg/wikipedia/views/PageItemView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageItemView_ViewBinding$2;-><init>(Lorg/wikipedia/views/PageItemView_ViewBinding;Lorg/wikipedia/views/PageItemView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d9

    const-string v1, "field \'secondaryContainer\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->secondaryContainer:Landroid/view/View;

    const v0, 0x7f0902da

    const-string v1, "field \'imageSelectedView\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->imageSelectedView:Landroid/view/View;

    .line 58
    const-class v0, Lorg/wikipedia/views/CircularProgressBar;

    const v1, 0x7f0902d3

    const-string v2, "field \'circularProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/CircularProgressBar;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->circularProgressBar:Lorg/wikipedia/views/CircularProgressBar;

    const v0, 0x7f0900b1

    const-string v1, "field \'chipsScrollView\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->chipsScrollView:Landroid/view/View;

    .line 60
    const-class v0, Lcom/google/android/material/chip/ChipGroup;

    const v1, 0x7f09032b

    const-string v2, "field \'readingListsChipGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iput-object v0, p1, Lorg/wikipedia/views/PageItemView;->readingListsChipGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 61
    iput-object p2, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->viewSource:Landroid/view/View;

    .line 62
    new-instance v0, Lorg/wikipedia/views/PageItemView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageItemView_ViewBinding$3;-><init>(Lorg/wikipedia/views/PageItemView_ViewBinding;Lorg/wikipedia/views/PageItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lorg/wikipedia/views/PageItemView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/PageItemView_ViewBinding$4;-><init>(Lorg/wikipedia/views/PageItemView_ViewBinding;Lorg/wikipedia/views/PageItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->target:Lorg/wikipedia/views/PageItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->target:Lorg/wikipedia/views/PageItemView;

    .line 83
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->titleView:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->descriptionView:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->imageView:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->secondaryActionView:Landroid/widget/ImageView;

    .line 87
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->secondaryContainer:Landroid/view/View;

    .line 88
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->imageSelectedView:Landroid/view/View;

    .line 89
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->circularProgressBar:Lorg/wikipedia/views/CircularProgressBar;

    .line 90
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->chipsScrollView:Landroid/view/View;

    .line 91
    iput-object v1, v0, Lorg/wikipedia/views/PageItemView;->readingListsChipGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 93
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d5:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->view7f0902d2:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    iput-object v1, p0, Lorg/wikipedia/views/PageItemView_ViewBinding;->viewSource:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
