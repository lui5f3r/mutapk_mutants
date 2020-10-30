.class final Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PageAvailableOfflineHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageAvailableOfflineHandler;->check(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V
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
    c = "org.wikipedia.page.PageAvailableOfflineHandler$check$2"
    f = "PageAvailableOfflineHandler.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

.field final synthetic $pageTitle:Lorg/wikipedia/page/PageTitle;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->$pageTitle:Lorg/wikipedia/page/PageTitle;

    iput-object p2, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->$callback:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

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

    new-instance v0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;

    iget-object v1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->$pageTitle:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->$callback:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    invoke-direct {v0, v1, v2, p2}, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2$readingListPage$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2$readingListPage$1;-><init>(Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 30
    :cond_2
    :goto_0
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 32
    iget-object v0, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$2;->$callback:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->saving()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;->onFinish(Z)V

    .line 33
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
