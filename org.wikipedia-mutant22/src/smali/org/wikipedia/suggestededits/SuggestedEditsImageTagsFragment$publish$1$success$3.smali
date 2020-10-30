.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$3;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->success(Ljava/lang/String;)V
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
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 335
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const-string v1, "caught"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$onError(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Ljava/lang/Throwable;)V

    return-void
.end method
