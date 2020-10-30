.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 64
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v2, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {v1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/wikipedia/util/FeedbackUtil;->getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v4, Lorg/wikipedia/R$id;->contributionsStatsView:I

    invoke-virtual {v1, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const-string v4, "contributionsStatsView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {v1, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "contributionsStatsView.description"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v5, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {v4, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lorg/wikipedia/util/FeedbackUtil;->getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    move-result-object v1

    const-string v4, "FeedbackUtil.getTooltip(\u2026tooltipText, false, true)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v6, Lorg/wikipedia/R$id;->editStreakStatsView:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const-string v6, "editStreakStatsView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "editStreakStatsView.description"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lcom/skydoves/balloon/Balloon;->relayShowAlignBottom(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)Lcom/skydoves/balloon/Balloon;

    .line 70
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v6, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {v5}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2, v3}, Lorg/wikipedia/util/FeedbackUtil;->getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v6, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const-string v6, "pageViewStatsView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "pageViewStatsView.description"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Lcom/skydoves/balloon/Balloon;->relayShowAlignBottom(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)Lcom/skydoves/balloon/Balloon;

    .line 71
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v6, Lorg/wikipedia/R$id;->editQualityStatsView:I

    invoke-virtual {v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {v5}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2, v3}, Lorg/wikipedia/util/FeedbackUtil;->getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$sequentialTooltipRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v4, Lorg/wikipedia/R$id;->editQualityStatsView:I

    invoke-virtual {v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/views/ImageTitleDescriptionView;

    const-string v4, "editQualityStatsView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {v3, v4}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "editQualityStatsView.description"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/skydoves/balloon/Balloon;->relayShowAlignBottom(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)Lcom/skydoves/balloon/Balloon;

    .line 72
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->shouldShowOneTimeSequentialUserStatsTooltip(Z)V

    return-void
.end method
