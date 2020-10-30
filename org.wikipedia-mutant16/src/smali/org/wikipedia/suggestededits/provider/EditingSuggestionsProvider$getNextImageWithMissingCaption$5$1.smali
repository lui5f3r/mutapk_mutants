.class final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;
.super Ljava/lang/Object;
.source "EditingSuggestionsProvider.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->apply(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->apply(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->$sourceLang:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$setImagesWithTranslatableCaptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->$targetLang:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$setImagesWithTranslatableCaptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;

    .line 177
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->getCaptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    iget-object v2, v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->$sourceLang:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->getCaptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    iget-object v2, v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->$targetLang:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getImagesWithTranslatableCaptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->getCaptions()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    iget-object v4, v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;->$sourceLang:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->title()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_3
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getImagesWithTranslatableCaptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getImagesWithTranslatableCaptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    return-object p1

    .line 186
    :cond_5
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;

    invoke-direct {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;-><init>()V

    throw p1
.end method
