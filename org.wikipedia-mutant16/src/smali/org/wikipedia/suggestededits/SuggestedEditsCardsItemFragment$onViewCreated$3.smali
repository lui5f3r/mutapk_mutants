.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsItemFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    sget v0, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "cardItemProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->access$getArticleWithMissingDescription(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;)V

    return-void
.end method
