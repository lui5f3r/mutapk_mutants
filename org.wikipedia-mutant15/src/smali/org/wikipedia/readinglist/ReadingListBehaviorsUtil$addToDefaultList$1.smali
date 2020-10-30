.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V
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
    c = "org.wikipedia.readinglist.ReadingListBehaviorsUtil$addToDefaultList$1"
    f = "ReadingListBehaviorsUtil.kt"
    l = {
        0xef
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;

.field final synthetic $defaultList:Lorg/wikipedia/readinglist/database/ReadingList;

.field final synthetic $invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$defaultList:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$title:Lorg/wikipedia/page/PageTitle;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$activity:Landroid/app/Activity;

    iput-object p5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$defaultList:Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$title:Lorg/wikipedia/page/PageTitle;

    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$activity:Landroid/app/Activity;

    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 238
    iget v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 239
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$addedTitles$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$addedTitles$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 238
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    const-string v0, "addedTitles"

    .line 240
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 241
    new-instance p1, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$defaultList:Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, v0, v2, v1}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logAddToList(Lorg/wikipedia/readinglist/database/ReadingList;ILorg/wikipedia/Constants$InvokeSource;)V

    .line 242
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$activity:Landroid/app/Activity;

    const v0, 0x7f100312

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p1, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v0, 0x7f10030e

    .line 243
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 246
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
