.class final Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RearrangeableItemTouchHelperCallback"
.end annotation


# instance fields
.field private final adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 289
    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 324
    new-instance p2, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback$WZ97NkNbBye-pO4z-kmrsMj5ppQ;

    invoke-direct {p2, p0}, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback$WZ97NkNbBye-pO4z-kmrsMj5ppQ;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 309
    instance-of p1, p2, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 310
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$clearView$0$WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    :cond_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 315
    instance-of p1, p3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onMoveItem(II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
