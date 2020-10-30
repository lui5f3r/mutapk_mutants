.class Lorg/wikipedia/history/HistoryFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/history/HistoryFragment;->setUpScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$1;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 119
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$1;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainActivity;

    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$1;->this$0:Lorg/wikipedia/history/HistoryFragment;

    iget-object p2, p2, Lorg/wikipedia/history/HistoryFragment;->historyList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/wikipedia/main/MainActivity;->updateToolbarElevation(Z)V

    return-void
.end method
