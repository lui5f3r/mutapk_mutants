.class Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCardViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private clearHistoryButton:Landroid/widget/ImageView;

.field private historyFilterButton:Landroid/widget/ImageView;

.field private searchWikiCardView:Lorg/wikipedia/views/WikiCardView;

.field final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/history/HistoryFragment;Landroid/view/View;)V
    .locals 3

    .line 325
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 326
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0904b7

    .line 327
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->searchWikiCardView:Lorg/wikipedia/views/WikiCardView;

    const v0, 0x7f090368

    .line 328
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904b1

    .line 329
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0901a8

    .line 330
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    const v2, 0x7f0901a3

    .line 331
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    .line 332
    new-instance p2, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$Y-rBoM4nsLXUKwuGReC1m2puesU;

    invoke-direct {p2, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$Y-rBoM4nsLXUKwuGReC1m2puesU;-><init>(Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance p2, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$5Lk319Ku5UNrXT3Ye4VXkqMhHmI;

    invoke-direct {p2, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$5Lk319Ku5UNrXT3Ye4VXkqMhHmI;-><init>(Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    new-instance v0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$ETj8nyy-UU1p8khoZEWTeNKFkCQ;

    invoke-direct {v0, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$ETj8nyy-UU1p8khoZEWTeNKFkCQ;-><init>(Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    new-instance v0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$tl-uOkEFl3Nbj7J0S35SpDta6k8;

    invoke-direct {v0, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$tl-uOkEFl3Nbj7J0S35SpDta6k8;-><init>(Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/View;

    .line 351
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p2}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 352
    iget-object p2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->searchWikiCardView:Lorg/wikipedia/views/WikiCardView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0400da

    invoke-static {p1, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public bindItem()V
    .locals 4

    .line 356
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v1}, Lorg/wikipedia/history/HistoryFragment;->access$400(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v1}, Lorg/wikipedia/history/HistoryFragment;->access$400(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$0$HistoryFragment$SearchCardViewHolder(Landroid/view/View;)V
    .locals 3

    .line 332
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->searchWikiCardView:Lorg/wikipedia/views/WikiCardView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$HistoryFragment$SearchCardViewHolder(Landroid/view/View;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {p1}, Lorg/wikipedia/main/MainFragment;->onFeedVoiceSearchRequested()V

    return-void
.end method

.method public synthetic lambda$new$2$HistoryFragment$SearchCardViewHolder(Landroid/view/View;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {p1}, Lorg/wikipedia/history/HistoryFragment;->access$800(Lorg/wikipedia/history/HistoryFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 337
    invoke-static {v1}, Lorg/wikipedia/history/HistoryFragment;->access$900(Lorg/wikipedia/history/HistoryFragment;)Lorg/wikipedia/history/SearchActionModeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    .line 336
    invoke-static {p1, v0}, Lorg/wikipedia/history/HistoryFragment;->access$802(Lorg/wikipedia/history/HistoryFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$4$HistoryFragment$SearchCardViewHolder(Landroid/view/View;)V
    .locals 2

    .line 341
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {p1}, Lorg/wikipedia/history/HistoryFragment;->access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 342
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000d7

    .line 343
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000c8

    .line 344
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000ca

    new-instance v1, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$5IhAImXNL7gHJmiIfJpTINiL1lo;

    invoke-direct {v1, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$SearchCardViewHolder$5IhAImXNL7gHJmiIfJpTINiL1lo;-><init>(Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;)V

    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000c9

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {p1}, Lorg/wikipedia/history/HistoryFragment;->access$600(Lorg/wikipedia/history/HistoryFragment;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$3$HistoryFragment$SearchCardViewHolder(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 345
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {p1}, Lorg/wikipedia/history/HistoryFragment;->access$700(Lorg/wikipedia/history/HistoryFragment;)V

    return-void
.end method
