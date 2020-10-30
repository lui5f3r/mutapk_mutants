.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->cardItemProgressBar:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "cardItemProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->cardItemErrorView:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    const-string v0, "cardItemErrorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$getNextItem(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    return-void
.end method
