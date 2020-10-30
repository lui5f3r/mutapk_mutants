.class final Lorg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1;
.super Ljava/lang/Object;
.source "ImageTagsProvider.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
        "Lorg/wikipedia/dataclient/wikidata/Claims;",
        "Lio/reactivex/rxjava3/core/ObservableSource<",
        "+",
        "Lorg/wikipedia/dataclient/wikidata/Entities;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageTagsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageTagsProvider.kt\norg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1799#2,2:48\n*E\n*S KotlinDebug\n*F\n+ 1 ImageTagsProvider.kt\norg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1\n*L\n21#1,2:48\n*E\n"
.end annotation


# instance fields
.field final synthetic $langCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1;->$langCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/wikidata/Claims;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/wikidata/Claims;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lorg/wikipedia/dataclient/wikidata/Entities;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Claims;->claims()Ljava/util/Map;

    move-result-object p1

    const-string v0, "P180"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 1799
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;

    const-string v2, "it"

    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;->getMainSnak()Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;->getDataValue()Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    new-instance p1, Lorg/wikipedia/dataclient/wikidata/Entities;

    invoke-direct {p1}, Lorg/wikipedia/dataclient/wikidata/Entities;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_2

    .line 27
    :cond_2
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://www.wikidata.org/"

    invoke-direct {p1, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, "|"

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1;->$langCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/dataclient/Service;->getWikidataLabels(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Claims;

    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/ImageTagsProvider$getImageTagsObservable$1;->apply(Lorg/wikipedia/dataclient/wikidata/Claims;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
