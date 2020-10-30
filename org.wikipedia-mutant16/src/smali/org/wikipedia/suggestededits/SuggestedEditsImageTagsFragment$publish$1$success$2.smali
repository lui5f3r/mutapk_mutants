.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;
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
        "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 335
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->accept(Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;)V
    .locals 3

    const-string v0, "it"

    .line 370
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$getFunnel$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/analytics/EditFunnel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "it.entity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLastRevId()J

    move-result-wide v1

    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/Constants$InvokeSource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/analytics/EditFunnel;->logSaved(JLjava/lang/String;)V

    .line 373
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->setPublishSuccess(Z)V

    .line 374
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$onSuccess(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    return-void
.end method
