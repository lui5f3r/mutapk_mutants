.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppEditingFAQ(Landroid/content/Context;)V

    return-void
.end method
