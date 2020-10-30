.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "SuggestedEditsCardsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 459
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$shouldShowRewardInterstitial(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    new-instance p1, Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;-><init>()V

    .line 461
    invoke-virtual {p1}, Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;->logInterstitialShown()V

    const/4 v0, 0x0

    .line 462
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsRewardInterstitialEnabled(Z)V

    .line 463
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsRewardInterstitialQAOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$setUpRewardInterstitialsForQA(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    .line 466
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;->shouldSeeInterstitial()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 467
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsRewardsItemFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRewardsItemFragment$Companion;

    .line 468
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getRewardInterstitialImage()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getRewardInterstitialText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsRewardsItemFragment$Companion;->newInstance(ILjava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object p1

    return-object p1

    .line 471
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 476
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$Companion;->newInstance()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object p1

    goto :goto_0

    .line 473
    :cond_2
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Companion;->newInstance()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
