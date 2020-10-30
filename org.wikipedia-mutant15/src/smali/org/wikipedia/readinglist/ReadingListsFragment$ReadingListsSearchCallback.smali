.class Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;
.super Lorg/wikipedia/history/SearchActionModeCallback;
.source "ReadingListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListsSearchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p0}, Lorg/wikipedia/history/SearchActionModeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    return-void
.end method


# virtual methods
.method protected getParentContext()Landroid/content/Context;
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchHintString()Ljava/lang/String;
    .locals 2

    .line 707
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 681
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1102(Lorg/wikipedia/readinglist/ReadingListsFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 683
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListsFragment;Z)V

    .line 684
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->onboardingView:Lorg/wikipedia/views/MessageCardView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 686
    invoke-super {p0, p1, p2}, Lorg/wikipedia/history/SearchActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 2

    .line 697
    invoke-super {p0, p1}, Lorg/wikipedia/history/SearchActionModeCallback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 698
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListsFragment;Z)V

    .line 699
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1102(Lorg/wikipedia/readinglist/ReadingListsFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 700
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$802(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {p1, v0}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 702
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method protected onQueryChange(Ljava/lang/String;)V
    .locals 2

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 692
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListsSearchCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;Z)V

    return-void
.end method
