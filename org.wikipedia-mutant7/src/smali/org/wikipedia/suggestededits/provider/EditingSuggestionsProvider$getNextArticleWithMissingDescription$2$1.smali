.class final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2$1;
.super Ljava/lang/Object;
.source "EditingSuggestionsProvider.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->apply(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Ljava/util/List<",
        "Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2$1;->apply(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wiki.languageCode()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$setArticlesWithMissingDescriptionCacheLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;

    .line 51
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithMissingDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithMissingDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithMissingDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    return-object p1

    .line 57
    :cond_2
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;

    invoke-direct {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;-><init>()V

    throw p1
.end method