.class Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;
.super Ljava/lang/Object;
.source "FeedView.java"

# interfaces
.implements Lorg/wikipedia/views/AutoFitRecyclerView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/FeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewColumnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/view/FeedView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/view/FeedView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;->this$0:Lorg/wikipedia/feed/view/FeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/view/FeedView;Lorg/wikipedia/feed/view/FeedView$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;-><init>(Lorg/wikipedia/feed/view/FeedView;)V

    return-void
.end method


# virtual methods
.method public onColumns(I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;->this$0:Lorg/wikipedia/feed/view/FeedView;

    invoke-static {v0}, Lorg/wikipedia/feed/view/FeedView;->access$100(Lorg/wikipedia/feed/view/FeedView;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    const v0, 0x7f0701cb

    .line 64
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    .line 65
    iget-object v1, p0, Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;->this$0:Lorg/wikipedia/feed/view/FeedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/view/FeedView$RecyclerViewColumnCallback;->this$0:Lorg/wikipedia/feed/view/FeedView;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method
