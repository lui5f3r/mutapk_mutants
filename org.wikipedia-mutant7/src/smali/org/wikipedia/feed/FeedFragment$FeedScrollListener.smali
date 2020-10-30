.class Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/FeedFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/FeedFragment;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/FeedFragment$1;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;-><init>(Lorg/wikipedia/feed/FeedFragment;)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 542
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 543
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/FeedView;->getFirstVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 544
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p2}, Lorg/wikipedia/feed/FeedFragment;->access$1200(Lorg/wikipedia/feed/FeedFragment;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 545
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p2, p1}, Lorg/wikipedia/feed/FeedFragment;->access$1202(Lorg/wikipedia/feed/FeedFragment;Z)Z

    .line 546
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 547
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$500(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/FeedFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedFragment;->access$500(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/FeedFragment$Callback;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;->this$0:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {p2}, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/wikipedia/feed/FeedFragment$Callback;->updateToolbarElevation(Z)V

    :cond_1
    return-void
.end method
