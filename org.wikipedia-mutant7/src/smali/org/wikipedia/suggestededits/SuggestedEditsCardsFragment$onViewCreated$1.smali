.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v0, Lorg/wikipedia/R$id;->wikiFromLanguageSpinner:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v1, Lorg/wikipedia/R$id;->wikiToLanguageSpinner:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v1, "wikiToLanguageSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
