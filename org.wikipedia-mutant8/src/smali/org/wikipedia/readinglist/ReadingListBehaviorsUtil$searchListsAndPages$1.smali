.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->searchListsAndPages(Ljava/lang/String;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.wikipedia.readinglist.ReadingListBehaviorsUtil$searchListsAndPages$1"
    f = "ReadingListBehaviorsUtil.kt"
    l = {
        0x121,
        0x122
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

.field final synthetic $searchQuery:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$searchQuery:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

    invoke-direct {v0, v1, v2, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;-><init>(Ljava/lang/String;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 288
    iget v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 289
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$1;

    invoke-direct {v6, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->label:I

    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const-string v6, "withContext(dispatcher) \u2026per.instance().allLists }"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    invoke-static {v1, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$setAllReadingLists$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;Ljava/util/List;)V

    .line 290
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 288
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 291
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$searchQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 292
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->getReadingListSortMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingList;->sortGenericList(Ljava/util/List;I)V

    .line 294
    :cond_7
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

    invoke-interface {v0, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;->onCompleted(Ljava/util/List;)V

    .line 295
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
