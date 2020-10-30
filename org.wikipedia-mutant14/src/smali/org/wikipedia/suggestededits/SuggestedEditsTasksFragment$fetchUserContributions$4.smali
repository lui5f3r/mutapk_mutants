.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->fetchUserContributions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$maybeSetPausedOrDisabled(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setPausedOrDisabled$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Z)V

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$isPausedOrDisabled$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$isIpBlocked$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget v1, Lorg/wikipedia/R$id;->pageViewStatsView:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->setTitle(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setFinalUIState(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$4;->accept(Ljava/lang/Long;)V

    return-void
.end method
