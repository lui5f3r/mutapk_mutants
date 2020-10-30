.class Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ReadingListFragment.java"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListPageItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/views/PageItemView<",
        "Lorg/wikipedia/readinglist/database/ReadingListPage;",
        ">;>;",
        "Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;"
    }
.end annotation


# instance fields
.field private page:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/views/PageItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/PageItemView<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;)V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 618
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private getImageDimension()I
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701ca

    .line 661
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42640000    # 57.0f

    .line 660
    :goto_0
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSwipe$1(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 652
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1600(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 5

    .line 622
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 623
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setSelected(Z)V

    .line 628
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->saving()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0800b4

    goto :goto_0

    :cond_0
    const v1, 0x7f0800b3

    .line 629
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->saving()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 628
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/views/PageItemView;->setSecondaryActionIcon(IZ)V

    .line 630
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress()I

    move-result v1

    const/16 v2, 0x64

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress()I

    move-result v1

    if-ge v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/PageItemView;->setCircularProgressVisibility(Z)V

    .line 631
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress()I

    move-result v4

    :goto_4
    invoke-virtual {v0, v4}, Lorg/wikipedia/views/PageItemView;->setProgress(I)V

    .line 632
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    const v1, 0x7f100316

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setSecondaryActionHint(I)V

    .line 633
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->getImageDimension()I

    move-result v1

    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->getImageDimension()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/views/PageItemView;->setListItemImageDimensions(II)V

    .line 635
    sget-object v0, Lorg/wikipedia/page/PageAvailableOfflineHandler;->INSTANCE:Lorg/wikipedia/page/PageAvailableOfflineHandler;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$f1Db72Shh-kCOPSvSuYiKMfqqz8;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$f1Db72Shh-kCOPSvSuYiKMfqqz8;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/page/PageAvailableOfflineHandler;->check(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V

    .line 637
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 638
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setTitleMaxLines(I)V

    .line 639
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0}, Lorg/wikipedia/views/PageItemView;->setTitleEllipsis()V

    .line 640
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setDescriptionMaxLines(I)V

    .line 641
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0}, Lorg/wikipedia/views/PageItemView;->setDescriptionEllipsis()V

    .line 642
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageItemView;->setUpChipGroup(Ljava/util/List;)V

    goto :goto_5

    .line 644
    :cond_5
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/views/PageItemView;->hideChipGroup()V

    :goto_5
    return-void
.end method

.method public synthetic lambda$bindItem$0$ReadingListFragment$ReadingListPageItemHolder(Z)V
    .locals 1

    .line 635
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageItemView;->setViewsGreyedOut(Z)V

    return-void
.end method

.method public synthetic lambda$onSwipe$2$ReadingListFragment$ReadingListPageItemHolder()V
    .locals 3

    .line 653
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1400(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/analytics/ReadingListsFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logDeleteItem(Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 654
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public onSwipe()V
    .locals 7

    .line 651
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    new-instance v5, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$iIhcWdmdfmAtZqXbWqCKuHp8sxg;

    invoke-direct {v5, v0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$iIhcWdmdfmAtZqXbWqCKuHp8sxg;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    new-instance v6, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$Bgp2sc86Hol4YRnoCfb0FylnMO0;

    invoke-direct {v6, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemHolder$Bgp2sc86Hol4YRnoCfb0FylnMO0;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;)V

    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    :cond_0
    return-void
.end method
