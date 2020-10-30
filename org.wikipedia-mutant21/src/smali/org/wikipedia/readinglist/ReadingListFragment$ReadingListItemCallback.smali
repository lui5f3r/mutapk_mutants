.class Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;
.super Ljava/lang/Object;
.source "ReadingListFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 770
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 788
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2400(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method static synthetic lambda$onRemoveAllOffline$4(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 800
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2400(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method static synthetic lambda$onSaveAllOffline$3(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 795
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2400(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDelete$2$ReadingListFragment$ReadingListItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 788
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$HAVxmLdBuyiGYD_I9EoKGtawGyA;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$HAVxmLdBuyiGYD_I9EoKGtawGyA;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 789
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2400(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public synthetic lambda$onRename$0$ReadingListFragment$ReadingListItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2500(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;)V

    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/wikipedia/readinglist/ReadingListActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 787
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$H_6spHlJIDBn0jyQClRsajUOdr0;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$H_6spHlJIDBn0jyQClRsajUOdr0;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;Lorg/wikipedia/readinglist/database/ReadingList;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 800
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$N_DK7SkF16dO7GBAKaRLhTmOzJI;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$N_DK7SkF16dO7GBAKaRLhTmOzJI;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 782
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$wBJzDZS3Z0JRTWFwLeNfscFYRUM;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$wBJzDZS3Z0JRTWFwLeNfscFYRUM;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;Lorg/wikipedia/readinglist/database/ReadingList;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 795
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$16c1kLAgnLogJc7R13g5F1FfaiE;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$16c1kLAgnLogJc7R13g5F1FfaiE;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    invoke-virtual {v0, v1, p1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method
