.class final Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;
.super Ljava/lang/Object;
.source "SuggestedEditsTaskView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;->setUpViews(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;

.field final synthetic $task:Lorg/wikipedia/suggestededits/SuggestedEditsTask;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;->$task:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;->$callback:Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;->$task:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->getDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;->$callback:Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$setUpViews$3;->$task:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;->onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V

    :cond_0
    return-void
.end method
