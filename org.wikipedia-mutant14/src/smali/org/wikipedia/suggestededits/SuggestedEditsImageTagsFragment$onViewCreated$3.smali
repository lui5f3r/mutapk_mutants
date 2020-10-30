.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowImageZoomTooltip()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 100
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setShouldShowImageZoomTooltip(Z)V

    .line 101
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->imageView:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showToastOverView(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    return-void
.end method
