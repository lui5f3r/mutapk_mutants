.class public Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListItemActionsView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

.field private view7f09031e:Landroid/view/View;

.field private view7f09031f:Landroid/view/View;

.field private view7f090320:Landroid/view/View;

.field private view7f090322:Landroid/view/View;

.field private view7f090324:Landroid/view/View;

.field private view7f090325:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090326

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->titleView:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090323

    const-string v2, "field \'removeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->removeTextView:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f090321

    const-string v2, "field \'offlineSwitchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->offlineSwitchView:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f09031f

    const-string v1, "field \'moveItemContainer\' and method \'onMoveToOtherClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'moveItemContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->moveItemContainer:Landroid/view/ViewGroup;

    .line 48
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031f:Landroid/view/View;

    .line 49
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$1;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090324

    const-string v1, "field \'selectItemContainer\' and method \'onSelectClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'selectItemContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->selectItemContainer:Landroid/view/ViewGroup;

    .line 57
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090324:Landroid/view/View;

    .line 58
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$2;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090320

    const-string v1, "method \'onOfflineClick\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090320:Landroid/view/View;

    .line 66
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$3;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090325

    const-string v1, "method \'onShareClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090325:Landroid/view/View;

    .line 74
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09031e

    const-string v1, "method \'onAddToOtherClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031e:Landroid/view/View;

    .line 82
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$5;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090322

    const-string v1, "method \'onRemoveClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 89
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090322:Landroid/view/View;

    .line 90
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$6;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 105
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->titleView:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->removeTextView:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->offlineSwitchView:Landroidx/appcompat/widget/SwitchCompat;

    .line 108
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->moveItemContainer:Landroid/view/ViewGroup;

    .line 109
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->selectItemContainer:Landroid/view/ViewGroup;

    .line 111
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031f:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090324:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090324:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090320:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090320:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090325:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090325:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f09031e:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090322:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;->view7f090322:Landroid/view/View;

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
