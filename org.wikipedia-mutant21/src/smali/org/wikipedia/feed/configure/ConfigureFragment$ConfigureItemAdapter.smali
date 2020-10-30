.class final Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/configure/ConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigureItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/configure/ConfigureFragment;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureFragment$1;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->access$100(Lorg/wikipedia/feed/configure/ConfigureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onViewAttachedToWindow$0$ConfigureFragment$ConfigureItemAdapter(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 265
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 267
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-static {p2}, Lorg/wikipedia/feed/configure/ConfigureFragment;->access$300(Lorg/wikipedia/feed/configure/ConfigureFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 246
    check-cast p1, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->onBindViewHolder(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->access$100(Lorg/wikipedia/feed/configure/ConfigureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;->bindItem(Lorg/wikipedia/feed/FeedContentType;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 246
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;
    .locals 2

    .line 254
    new-instance p1, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;

    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureItemView;

    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureItemView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureItemView;)V

    return-object p1
.end method

.method onMoveItem(II)V
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->access$100(Lorg/wikipedia/feed/configure/ConfigureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 288
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->access$200(Lorg/wikipedia/feed/configure/ConfigureFragment;)V

    .line 289
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 246
    check-cast p1, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->onViewAttachedToWindow(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;)V
    .locals 2

    .line 263
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 264
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/configure/ConfigureItemView;

    new-instance v1, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$ConfigureItemAdapter$kliTFB2BRoiFXfBPdL-vS67AE0U;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$ConfigureItemAdapter$kliTFB2BRoiFXfBPdL-vS67AE0U;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/configure/ConfigureItemView;

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-virtual {p1, v0}, Lorg/wikipedia/feed/configure/ConfigureItemView;->setCallback(Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 246
    check-cast p1, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;->onViewDetachedFromWindow(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;)V
    .locals 2

    .line 281
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/configure/ConfigureItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureItemView;->setCallback(Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;)V

    .line 282
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
