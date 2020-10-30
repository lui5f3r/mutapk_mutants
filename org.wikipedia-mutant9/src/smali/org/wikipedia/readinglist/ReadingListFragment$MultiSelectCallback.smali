.class Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;
.super Lorg/wikipedia/views/MultiSelectActionModeCallback;
.source "ReadingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Lorg/wikipedia/views/MultiSelectActionModeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 916
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionItemClicked$0$ReadingListFragment$MultiSelectCallback()V
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2300(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 934
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public synthetic lambda$onActionItemClicked$1$ReadingListFragment$MultiSelectCallback()V
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2300(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 941
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 926
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 939
    :sswitch_0
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3200(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MultiSelectCallback$hypPOT0A7elZeDvddeozZWWR4Dg;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MultiSelectCallback$hypPOT0A7elZeDvddeozZWWR4Dg;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 943
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return p2

    .line 932
    :sswitch_1
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3200(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MultiSelectCallback$-7KrwXAjh1uqYfa1uDb9bDcC2Vo;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$MultiSelectCallback$-7KrwXAjh1uqYfa1uDb9bDcC2Vo;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 936
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return p2

    .line 950
    :sswitch_2
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3400(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    .line 951
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return p2

    .line 928
    :sswitch_3
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onDeleteSelected()V

    .line 929
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return p2

    .line 946
    :sswitch_4
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3300(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    .line 947
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3100(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09021d -> :sswitch_4
        0x7f090221 -> :sswitch_3
        0x7f09023c -> :sswitch_2
        0x7f09024b -> :sswitch_1
        0x7f09024d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 918
    invoke-super {p0, p1, p2}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 919
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 920
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p2, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1202(Lorg/wikipedia/readinglist/ReadingListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 921
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2900(Lorg/wikipedia/readinglist/ReadingListFragment;Z)V

    return p2
.end method

.method protected onDeleteSelected()V
    .locals 1

    .line 959
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3500(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 2

    .line 963
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3600(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    .line 964
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1202(Lorg/wikipedia/readinglist/ReadingListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 965
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2900(Lorg/wikipedia/readinglist/ReadingListFragment;Z)V

    .line 966
    invoke-super {p0, p1}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    return-void
.end method
