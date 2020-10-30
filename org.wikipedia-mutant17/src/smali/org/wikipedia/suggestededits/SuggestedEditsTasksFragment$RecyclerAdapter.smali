.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;
.super Lorg/wikipedia/views/DefaultRecyclerAdapter;
.source "SuggestedEditsTasksFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultRecyclerAdapter<",
        "Lorg/wikipedia/suggestededits/SuggestedEditsTask;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultRecyclerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 433
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;->onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/views/DefaultViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;

    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultRecyclerAdapter;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items()[i]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getCallback$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;->setUpViews(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$RecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/views/DefaultViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/wikipedia/views/DefaultViewHolder<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    new-instance p2, Lorg/wikipedia/views/DefaultViewHolder;

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
