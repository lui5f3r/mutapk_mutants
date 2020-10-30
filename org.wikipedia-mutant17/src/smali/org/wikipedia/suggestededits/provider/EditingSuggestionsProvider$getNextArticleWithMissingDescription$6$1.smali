.class final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;
.super Ljava/lang/Object;
.source "EditingSuggestionsProvider.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->apply(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
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
        "Lorg/wikipedia/page/PageTitle;",
        "+",
        "Lorg/wikipedia/page/PageTitle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $targetWiki:Lorg/wikipedia/dataclient/WikiSite;

.field final synthetic this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->$targetWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->apply(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;",
            ">;)",
            "Lkotlin/Pair<",
            "Lorg/wikipedia/page/PageTitle;",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sourceWiki.languageCode()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$setArticlesWithTranslatableDescriptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$targetLang:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$setArticlesWithTranslatableDescriptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V

    .line 88
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

    .line 89
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/provider/SuggestedEditItem;->getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v2, v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$targetLang:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-boolean v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceLangMustExist:Z

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->descriptions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v2, v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v2, v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->$targetWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithTranslatableDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->$targetWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->$targetWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v3, v4, v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 98
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->sitelinks()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v5, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$SiteLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6$1;->this$0:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    iget-object v5, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;->$sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v4, v0, v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 97
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 100
    :cond_3
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithTranslatableDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 101
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->access$getArticlesWithTranslatableDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;

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

    .line 104
    :cond_5
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;

    invoke-direct {p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;-><init>()V

    throw p1
.end method
