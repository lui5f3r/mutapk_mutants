.class final Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/configure/ConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RearrangeableItemTouchHelperCallback"
.end annotation


# instance fields
.field private final adapter:Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;

.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 297
    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;->adapter:Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 316
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 321
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;->adapter:Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->onMoveItem(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
