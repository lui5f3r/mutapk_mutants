.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SuggestedEditsCardsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewPagerListener"
.end annotation


# instance fields
.field private nextPageSelectedAutomatic:Z

.field private prevPosition:I

.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .line 491
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$updateBackButton(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 492
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 493
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->impression(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->nextPageSelectedAutomatic:Z

    .line 496
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->prevPosition:I

    .line 498
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v1, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_1

    .line 500
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v3, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {v2, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->removeFragmentAt(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.wikipedia.suggestededits.SuggestedEditsCardsFragment.ViewPagerAdapter"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setNextPageSelectedAutomatic()V
    .locals 1

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->nextPageSelectedAutomatic:Z

    return-void
.end method
