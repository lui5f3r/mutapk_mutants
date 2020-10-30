.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$1;
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowImageZoomTooltip()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setShouldShowImageZoomTooltip(Z)V

    .line 48
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1003ee

    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
