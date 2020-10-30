.class public Lorg/wikipedia/history/HistoryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HistoryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment_ViewBinding;->target:Lorg/wikipedia/history/HistoryFragment;

    .line 22
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901a9

    const-string v2, "field \'historyList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0901a4

    const-string v1, "field \'historyEmptyView\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/history/HistoryFragment;->historyEmptyView:Landroid/view/View;

    .line 24
    const-class v0, Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f090370

    const-string v2, "field \'searchEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/SearchEmptyView;

    iput-object p2, p1, Lorg/wikipedia/history/HistoryFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment_ViewBinding;->target:Lorg/wikipedia/history/HistoryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lorg/wikipedia/history/HistoryFragment_ViewBinding;->target:Lorg/wikipedia/history/HistoryFragment;

    .line 34
    iput-object v1, v0, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iput-object v1, v0, Lorg/wikipedia/history/HistoryFragment;->historyEmptyView:Landroid/view/View;

    .line 36
    iput-object v1, v0, Lorg/wikipedia/history/HistoryFragment;->searchEmptyView:Lorg/wikipedia/views/SearchEmptyView;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
