.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.wikipedia.readinglist.ReadingListBehaviorsUtil$searchListsAndPages$1$list$1"
    f = "ReadingListBehaviorsUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;

    invoke-direct {v0, v1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 290
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1$list$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;

    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$searchListsAndPages$1;->$searchQuery:Ljava/lang/String;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getAllReadingLists$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$applySearchQuery(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
