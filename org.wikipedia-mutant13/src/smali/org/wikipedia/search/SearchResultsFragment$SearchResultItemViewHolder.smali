.class Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "SearchResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 575
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 13

    .line 579
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v1}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/search/SearchResult;

    .line 582
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 583
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0902d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 584
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0902d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 585
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0902d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 586
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0902d8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 587
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getRedirectFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    .line 588
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 590
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v6, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    const v7, 0x7f10038c

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getRedirectFrom()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-virtual {v6, v7, v11}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    :goto_0
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getType()Lorg/wikipedia/search/SearchResult$SearchResultType;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

    if-ne v4, v5, :cond_1

    .line 598
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 601
    :cond_1
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getType()Lorg/wikipedia/search/SearchResult$SearchResultType;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/search/SearchResult$SearchResultType;->HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

    if-ne v4, v5, :cond_2

    const v4, 0x7f080109

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getType()Lorg/wikipedia/search/SearchResult$SearchResultType;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/search/SearchResult$SearchResultType;->TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    if-ne v4, v5, :cond_3

    const v4, 0x7f080120

    goto :goto_1

    :cond_3
    const v4, 0x7f08009e

    .line 602
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    :goto_2
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v4}, Lorg/wikipedia/search/SearchResultsFragment;->access$400(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/wikipedia/util/StringUtil;->boldenKeywordText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 611
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getType()Lorg/wikipedia/search/SearchResult$SearchResultType;

    move-result-object v0

    sget-object v3, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x4

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 610
    :goto_3
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/wikipedia/views/ViewUtil;->loadImageWithRoundedCorners(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p1, v0, :cond_7

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 617
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$500(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    if-nez v0, :cond_6

    .line 619
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$400(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v10}, Lorg/wikipedia/search/SearchResultsFragment;->access$600(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_4

    .line 620
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$500(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResults;->getContinuation()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$500(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResults;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResults;->getContinuation()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 622
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$400(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v3}, Lorg/wikipedia/search/SearchResultsFragment;->access$500(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResults;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/search/SearchResults;->getContinuation()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v2, v3, v10}, Lorg/wikipedia/search/SearchResultsFragment;->access$600(Lorg/wikipedia/search/SearchResultsFragment;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 626
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setLongClickable(Z)V

    .line 627
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$SearchResultItemViewHolder$Jxhkms3v-_jmR5G9QuI3VC_0CL8;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$SearchResultItemViewHolder$Jxhkms3v-_jmR5G9QuI3VC_0CL8;-><init>(Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/LongPressHandler;

    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v3

    .line 634
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    new-instance v4, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;

    iget-object v5, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-direct {v4, v5, p1}, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;-><init>(Lorg/wikipedia/search/SearchResultsFragment;I)V

    invoke-direct {v2, v3, v1, v8, v4}, Lorg/wikipedia/LongPressHandler;-><init>(Landroid/view/View;Lorg/wikipedia/page/PageTitle;ILorg/wikipedia/LongPressHandler$OverflowMenuListener;)V

    .line 633
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public synthetic lambda$bindItem$0$SearchResultsFragment$SearchResultItemViewHolder(ILandroid/view/View;)V
    .locals 2

    .line 628
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {p2}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 629
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$200(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/search/SearchResult;

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZI)V

    :cond_0
    return-void
.end method
