.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getNextItem()V
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$setPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V

    .line 133
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$updateContents(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    .line 134
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$getNextItem$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$updateTagChips(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V

    return-void
.end method
