.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->togglePageOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
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
    c = "org.wikipedia.readinglist.ReadingListBehaviorsUtil$togglePageOffline$1"
    f = "ReadingListBehaviorsUtil.kt"
    l = {
        0xcc,
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

.field final synthetic $page:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/app/Activity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 204
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v5, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$pages$1;

    invoke-direct {v5, p0, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$pages$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->label:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v1

    :goto_0
    const-string v7, "withContext(dispatcher) \u2026tPage.toPageTitle(page))}"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 205
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getDispatcher$p(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$lists$1;

    invoke-direct {v1, v5, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$lists$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "withContext(dispatcher) \u2026mPageOccurrences(pages) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 207
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100321

    .line 208
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 209
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-static {v1, v2, v4, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$getConfirmToggleOfflineMessage(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Ljava/util/List;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10031f

    .line 210
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$dialog$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$dialog$1;-><init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100345

    .line 211
    invoke-virtual {v0, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(acti\u2026                .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 215
    :cond_5
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 217
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
