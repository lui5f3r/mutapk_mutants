.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$1;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setupTestingButtons()V
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 380
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$setupTestingButtons$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setIPBlockedStatus(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    return-void
.end method
