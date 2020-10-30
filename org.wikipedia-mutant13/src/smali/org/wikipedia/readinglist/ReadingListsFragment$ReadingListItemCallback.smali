.class Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;
.super Ljava/lang/Object;
.source "ReadingListsFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDelete$1$ReadingListsFragment$ReadingListItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 577
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 578
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/analytics/ReadingListsFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logDeleteList(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 579
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method public synthetic lambda$onRename$0$ReadingListsFragment$ReadingListItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 568
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    .line 569
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$800(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;Z)V

    .line 570
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/analytics/ReadingListsFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logModifyList(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListsFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListsFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/wikipedia/readinglist/ReadingListActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 576
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListItemCallback$axemhjosiGz8myCSbbz3jB6YGXE;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListItemCallback$axemhjosiGz8myCSbbz3jB6YGXE;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;Lorg/wikipedia/readinglist/database/ReadingList;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 590
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 563
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Attempted to rename default list."

    .line 564
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    return-void

    .line 567
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListItemCallback$Qt2EezualISQ05oSu9MGRakAEm4;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListItemCallback$Qt2EezualISQ05oSu9MGRakAEm4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;Lorg/wikipedia/readinglist/database/ReadingList;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 585
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$G4f9HHfu36fCrTXU44I2g2_bfag;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method
