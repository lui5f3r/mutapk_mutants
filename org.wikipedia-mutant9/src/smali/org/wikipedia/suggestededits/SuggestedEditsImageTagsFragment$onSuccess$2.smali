.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->onSuccess()V
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$updateLicenseTextShown(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    .line 419
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v1, Lorg/wikipedia/R$id;->publishOverlayContainer:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "publishOverlayContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-interface {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 421
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->logSuccess()V

    .line 422
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onSuccess$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$updateTagChips(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    :cond_0
    return-void
.end method
