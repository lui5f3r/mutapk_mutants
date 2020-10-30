.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 110
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$setWasCaptionLongClicked$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Z)V

    const/4 p1, 0x0

    return p1
.end method
