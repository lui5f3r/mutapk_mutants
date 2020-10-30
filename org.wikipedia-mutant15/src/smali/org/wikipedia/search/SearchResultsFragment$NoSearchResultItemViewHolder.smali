.class Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "SearchResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoSearchResultItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private accentColorStateList:Landroid/content/res/ColorStateList;

.field private secondaryColorStateList:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 544
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    .line 547
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0400c5

    invoke-static {p1, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->accentColorStateList:Landroid/content/res/ColorStateList;

    .line 548
    iget-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f04027d

    invoke-static {p1, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->secondaryColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 10

    .line 551
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v1}, Lorg/wikipedia/search/SearchResultsFragment;->access$300(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 553
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09034d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 554
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 555
    iget-object v6, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    if-nez v1, :cond_0

    const v7, 0x7f10038d

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f000f

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 555
    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    .line 557
    iget-object v6, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->secondaryColorStateList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->accentColorStateList:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 558
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v2}, Lorg/wikipedia/search/SearchResultsFragment;->access$300(Lorg/wikipedia/search/SearchResultsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0x8

    if-ne v2, v5, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_3

    .line 560
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->secondaryColorStateList:Landroid/content/res/ColorStateList;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->accentColorStateList:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-nez v1, :cond_4

    .line 561
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->secondaryColorStateList:Landroid/content/res/ColorStateList;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->accentColorStateList:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0xc

    .line 562
    invoke-static {v3, v0, v6, v2}, Lorg/wikipedia/views/ViewUtil;->formatLangButton(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 564
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    if-lez v1, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;-><init>(Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$bindItem$0$SearchResultsFragment$NoSearchResultItemViewHolder(ILandroid/view/View;)V
    .locals 0

    .line 566
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 567
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/search/SearchFragment;

    invoke-virtual {p2, p1}, Lorg/wikipedia/search/SearchFragment;->setUpLanguageScroll(I)V

    :cond_0
    return-void
.end method
