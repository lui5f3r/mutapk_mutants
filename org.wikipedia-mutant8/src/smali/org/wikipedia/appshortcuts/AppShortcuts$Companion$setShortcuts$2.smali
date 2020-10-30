.class final Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppShortcuts.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->setShortcuts(Landroid/content/Context;)V
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
    c = "org.wikipedia.appshortcuts.AppShortcuts$Companion$setShortcuts$2"
    f = "AppShortcuts.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $app:Landroid/content/Context;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

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

    new-instance v0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;

    iget-object v1, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    iget v0, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "app.getSystemService(ShortcutManager::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/pm/ShortcutManager;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    .line 33
    sget-object v2, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    iget-object v3, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->access$searchShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    iget-object v3, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->access$continueReadingShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    iget-object v3, p0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;->$app:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->access$randomShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
