.class public final Lorg/wikipedia/userprofile/ContributionsHeaderView;
.super Landroid/widget/LinearLayout;
.source "ContributionsHeaderView.kt"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;

.field private filterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    const p2, 0x7f0c00f8

    .line 20
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    sget v0, Lorg/wikipedia/R$id;->allTypesView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    sget v0, Lorg/wikipedia/R$id;->articleDescriptionView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    sget v0, Lorg/wikipedia/R$id;->imageCaptionsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    sget v0, Lorg/wikipedia/R$id;->imageTagsView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget p2, Lorg/wikipedia/R$id;->allTypesView:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContext().getString(R.string.edit_type_all)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0800f1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setAttributes(Ljava/lang/String;IILorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;)V

    .line 30
    sget p2, Lorg/wikipedia/R$id;->articleDescriptionView:I

    invoke-virtual {p0, p2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContext().getString(R\u2026orial_title_descriptions)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080096

    invoke-virtual {p2, v0, v1, p1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setAttributes(Ljava/lang/String;IILorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;)V

    .line 31
    sget p1, Lorg/wikipedia/R$id;->imageCaptionsView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1003d1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getContext().getString(R\u2026ted_edits_image_captions)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0800df

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setAttributes(Ljava/lang/String;IILorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;)V

    .line 32
    sget p1, Lorg/wikipedia/R$id;->imageTagsView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1003e0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getContext().getString(R\u2026ggested_edits_image_tags)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0800e0

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setAttributes(Ljava/lang/String;IILorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCallback()Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->callback:Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;

    return-object v0
.end method

.method public onTypeItemClick(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->callback:Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;->onTypeItemClick(I)V

    :cond_0
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->callback:Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;

    return-void
.end method

.method public final updateFilterViewUI(II)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 56
    sget p1, Lorg/wikipedia/R$id;->allTypesView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    const-string v2, "allTypesView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    sget p1, Lorg/wikipedia/R$id;->imageTagsView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    const-string p2, "imageTagsView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/UserContributionsStats;->getTotalImageTagEdits()I

    move-result p2

    goto :goto_0

    .line 48
    :cond_1
    sget p1, Lorg/wikipedia/R$id;->imageCaptionsView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    const-string p2, "imageCaptionsView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p2, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/UserContributionsStats;->getTotalImageCaptionEdits()I

    move-result p2

    goto :goto_0

    .line 44
    :cond_2
    sget p1, Lorg/wikipedia/R$id;->articleDescriptionView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    const-string p2, "articleDescriptionView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p2, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p2}, Lorg/wikipedia/userprofile/UserContributionsStats;->getTotalDescriptionEdits()I

    move-result p2

    .line 60
    :goto_0
    sget v2, Lorg/wikipedia/R$id;->contributionsCountText:I

    invoke-virtual {p0, v2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "contributionsCountText"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1003b0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0011

    invoke-virtual {v5, v6, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsHeaderView;->filterViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    .line 62
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setEnabledStateUI()V

    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->setDisabledStateUI()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final updateTotalPageViews(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 72
    sget v0, Lorg/wikipedia/R$id;->contributionsSeenText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "contributionsSeenText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0014

    long-to-int v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
