.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 209
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 210
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$5;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    const-string v1, "t"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$showError(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/lang/Throwable;)V

    return-void
.end method
