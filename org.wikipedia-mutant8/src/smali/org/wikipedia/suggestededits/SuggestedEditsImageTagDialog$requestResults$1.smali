.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagDialog.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->requestResults(Ljava/lang/String;)V
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
        "Lorg/wikipedia/dataclient/wikidata/Search;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Search;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;->accept(Lorg/wikipedia/dataclient/wikidata/Search;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/wikidata/Search;)V
    .locals 5

    const-string v0, "search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Search;->results()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;

    .line 142
    new-instance v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    const-string v3, "result"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$requestResults$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-static {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$applyResults(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/util/List;)V

    return-void
.end method
