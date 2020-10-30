.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v1, Lorg/wikipedia/R$id;->cardsViewPager:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "cardsViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {v1, v2, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 325
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$resetViewPagerItemAdapter$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$setResettingViewPager$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Z)V

    :cond_0
    return-void
.end method
