.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->fetchUserInfoForNextInterstitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Ljava/lang/Boolean;
    .locals 8

    .line 361
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->editorTaskCounts()Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "response.query()!!.editorTaskCounts()!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastSuggestedEditsRewardInterstitialEditQualityShown()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v1, v0

    .line 363
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastSuggestedEditsRewardInterstitialPageviewsShown()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 366
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalEdits()I

    move-result v2

    .line 365
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsRewardInterstitialContributionOnInitialCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_8

    .line 366
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalEdits()I

    move-result v2

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsRewardInterstitialContributionOnCount()I

    move-result v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 369
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getEditStreak()I

    move-result v2

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsRewardInterstitialEditStreakOnCount()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 370
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f0402fe

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 371
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0019

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getEditStreak()I

    move-result v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getEditStreak()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resources.getQuantityStr\u2026ccountUtil.getUserName())"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 372
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastSuggestedEditsRewardInterstitialEditQualityShown()J

    move-result-wide v6

    long-to-int p1, v6

    if-eqz p1, :cond_2

    .line 373
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsRewardInterstitialEditQualityOnDay()I

    move-result p1

    if-ne v1, p1, :cond_6

    .line 374
    :cond_2
    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->getRevertSeverity()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_6

    .line 375
    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->getRevertSeverity()I

    move-result p1

    const v0, 0x7f10040e

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    .line 389
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f040301

    invoke-virtual {p1, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 390
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1003ff

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026edits_quality_good_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f040303

    invoke-virtual {p1, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 386
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f100405

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026_quality_very_good_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f040300

    invoke-virtual {p1, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 382
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f1003fe

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026_quality_excellent_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f040302

    invoke-virtual {p1, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 378
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f100402

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sugge\u2026ts_quality_perfect_text))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    .line 393
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/wikipedia/settings/Prefs;->setLastSuggestedEditsRewardInterstitialEditQualityShown(J)V

    goto :goto_2

    .line 394
    :cond_6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastSuggestedEditsRewardInterstitialPageviewsShown()J

    move-result-wide v1

    long-to-int p1, v1

    if-eqz p1, :cond_7

    .line 395
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsRewardInterstitialPageviewsOnDay()I

    move-result p1

    if-ne v0, p1, :cond_9

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    .line 367
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const v1, 0x7f0402ff

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialImage(I)V

    .line 368
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0018

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalEdits()I

    move-result v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalEdits()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resources.getQuantityStr\u2026torTaskCounts.totalEdits)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setRewardInterstitialText(Ljava/lang/String;)V

    .line 398
    :cond_9
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$fetchUserInfoForNextInterstitialState$1;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
