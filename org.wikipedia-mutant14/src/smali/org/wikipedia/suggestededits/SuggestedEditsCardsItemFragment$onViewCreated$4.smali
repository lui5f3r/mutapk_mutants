.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onSelectPage()V

    :cond_0
    return-void
.end method