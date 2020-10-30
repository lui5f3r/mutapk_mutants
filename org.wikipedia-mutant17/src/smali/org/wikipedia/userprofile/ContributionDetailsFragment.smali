.class public final Lorg/wikipedia/userprofile/ContributionDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContributionDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private contribution:Lorg/wikipedia/userprofile/Contribution;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->Companion:Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$startTypeSpecificActivity(Lorg/wikipedia/userprofile/ContributionDetailsFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->startTypeSpecificActivity()V

    return-void
.end method

.method private final setTypeSpecificData()V
    .locals 15

    .line 92
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    const/4 v1, 0x0

    const-string v2, "contribution"

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const v3, 0x7f080096

    const v4, 0x7f1003ac

    const v5, 0x7f0f0017

    const v6, 0x7f0f0010

    const v7, 0x7f1003af

    const-string v8, "contributionDiffText"

    const v9, 0x7f1003a6

    const-string v10, "contributionCategory"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_11

    const/4 v13, 0x2

    const v14, 0x7f1003ab

    if-eq v0, v13, :cond_9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    .line 118
    sget v0, Lorg/wikipedia/R$id;->contributionCategory:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget v0, Lorg/wikipedia/R$id;->contributionDiffText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v5

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-virtual {v4, v6, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget v0, Lorg/wikipedia/R$id;->typeDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget v0, Lorg/wikipedia/R$id;->pageViewsDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 123
    sget v0, Lorg/wikipedia/R$id;->languageDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-static/range {v1 .. v6}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 120
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_6
    sget v0, Lorg/wikipedia/R$id;->contributionCategory:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget v0, Lorg/wikipedia/R$id;->contributionDiffText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0016

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getTagCount()I

    move-result v5

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lorg/wikipedia/userprofile/Contribution;->getTagCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v0, Lorg/wikipedia/R$id;->typeDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1003ae

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800e0

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget v0, Lorg/wikipedia/R$id;->pageViewsDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 115
    sget v0, Lorg/wikipedia/R$id;->languageDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-static/range {v1 .. v6}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 112
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_9
    sget v0, Lorg/wikipedia/R$id;->contributionCategory:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget v0, Lorg/wikipedia/R$id;->contributionDiffText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v3

    if-gez v3, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v3, v5, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v5

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v3, v6, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lorg/wikipedia/R$id;->pageViewsDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 107
    sget v0, Lorg/wikipedia/R$id;->typeDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f100090

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800df

    invoke-virtual {v0, v3, v5, v6}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget v0, Lorg/wikipedia/R$id;->languageDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_11
    sget v0, Lorg/wikipedia/R$id;->contributionCategory:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lorg/wikipedia/R$id;->contributionDiffText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v8

    if-gez v8, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-virtual {v6, v5, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v8

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-virtual {v5, v6, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 95
    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v0, Lorg/wikipedia/R$id;->pageViewsDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    const v5, 0x7f1003b1

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 98
    iget-object v6, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lorg/wikipedia/userprofile/Contribution;->getPageViews()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f080128

    .line 97
    invoke-virtual {v0, v5, v6, v8}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget v0, Lorg/wikipedia/R$id;->typeDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1000b2

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v3}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget v0, Lorg/wikipedia/R$id;->languageDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail$default(Lorg/wikipedia/userprofile/ContributionDiffDetailView;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    :goto_3
    return-void

    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setUpContributionDetails()V
    .locals 6

    .line 66
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->updateTopGradient()V

    .line 67
    sget v0, Lorg/wikipedia/R$id;->contributionContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lorg/wikipedia/userprofile/ContributionDetailsFragment$setUpContributionDetails$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment$setUpContributionDetails$1;-><init>(Lorg/wikipedia/userprofile/ContributionDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lorg/wikipedia/R$id;->revisionLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "revisionLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    const/4 v2, 0x0

    const-string v3, "contribution"

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/Contribution;->getTop()Z

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    sget v0, Lorg/wikipedia/R$id;->contributionTitle:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "contributionTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/Contribution;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v0, Lorg/wikipedia/R$id;->contributionDiffDetailText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "contributionDiffDetailText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/Contribution;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_6

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget v0, Lorg/wikipedia/R$id;->contributionImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewUtil;->loadImageWithRoundedCorners(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    sget v0, Lorg/wikipedia/R$id;->contributionImage:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "contributionImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_2
    sget v0, Lorg/wikipedia/R$id;->dateTimeDetailView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDiffDetailView;

    const v1, 0x7f1003a8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->get24HrFormatTimeOnlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/userprofile/ContributionDiffDetailView;->setLabelAndDetail(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->setTypeSpecificData()V

    return-void

    .line 72
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startTypeSpecificActivity()V
    .locals 10

    .line 77
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    const/4 v1, 0x0

    const-string v2, "contribution"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 81
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logNavigateMisc()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logNavigateTag()V

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logNavigateCaption()V

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logNavigateDescription()V

    .line 83
    :goto_0
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getApiTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v6

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getDescription()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getDisplayTitle()Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    const/16 v3, 0x1e

    invoke-direct {v2, v0, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {v1, v2, v0}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 87
    :cond_3
    sget-object v1, Lorg/wikipedia/commons/FilePageActivity;->Companion:Lorg/wikipedia/commons/FilePageActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/commons/FilePageActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 84
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateTopGradient()V
    .locals 4

    .line 49
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getSizeDiff()I

    move-result v0

    if-gez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400cb

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040022

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    .line 57
    :goto_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    const-string v2, "WikipediaApp.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    const-string v2, "WikipediaApp.getInstance().currentTheme"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4c

    goto :goto_1

    :cond_1
    const/16 v1, 0x1c

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0402c0

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    .line 57
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    .line 59
    sget v2, Lorg/wikipedia/R$id;->topView:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "topView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x30

    invoke-static {v1, v3}, Lorg/wikipedia/util/GradientUtil;->getPowerGradientInt(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    sget v2, Lorg/wikipedia/R$id;->contributionDiffIndicatorLine:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    sget v2, Lorg/wikipedia/R$id;->contributionDiffText:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->updateStatusBarColor(I)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.wikipedia.userprofile.ContributionDetailsActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "contribution"

    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    sget p1, Lorg/wikipedia/R$id;->back:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lorg/wikipedia/userprofile/ContributionDetailsFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment$onViewCreated$1;-><init>(Lorg/wikipedia/userprofile/ContributionDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class p1, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "requireActivity()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "contribution"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "GsonUnmarshaller.unmarsh\u2026TRA_SOURCE_CONTRIBUTION))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/wikipedia/userprofile/Contribution;

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->contribution:Lorg/wikipedia/userprofile/Contribution;

    .line 45
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->setUpContributionDetails()V

    return-void
.end method
