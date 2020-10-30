.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
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
    c = "org.wikipedia.readinglist.ReadingListBehaviorsUtil$deletePages$1"
    f = "ReadingListBehaviorsUtil.kt"
    l = {
        0x6b,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

.field final synthetic $readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field final synthetic $snackbarCallback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$snackbarCallback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$activity:Landroid/app/Activity;

    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$snackbarCallback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 106
    iget v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 107
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$pages$1;

    invoke-direct {v6, p0, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$pages$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->label:I

    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, v1

    :goto_0
    const-string v6, "withContext(dispatcher) \u2026Title(readingListPage)) }"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$lists$1;

    invoke-direct {v1, v4, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$lists$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "withContext(dispatcher) \u2026mPageOccurrences(pages) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 109
    new-instance v0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;

    invoke-direct {v0, p1}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->deleteOrShowDialog(Landroid/content/Context;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 113
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
