.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagEditActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$onCreate$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->access$getSuggestedEditsImageTagsFragment$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publish()V

    return-void
.end method
