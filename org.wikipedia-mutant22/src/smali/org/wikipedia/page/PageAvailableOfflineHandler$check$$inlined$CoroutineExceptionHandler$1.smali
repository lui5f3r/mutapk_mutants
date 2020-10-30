.class public final Lorg/wikipedia/page/PageAvailableOfflineHandler$check$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageAvailableOfflineHandler;->check(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 PageAvailableOfflineHandler.kt\norg/wikipedia/page/PageAvailableOfflineHandler\n*L\n1#1,110:1\n26#2,5:111\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V
    .locals 0

    iput-object p2, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$$inlined$CoroutineExceptionHandler$1;->$callback$inlined:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    .line 49
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    sget-object p1, Lorg/wikipedia/page/PageAvailableOfflineHandler;->INSTANCE:Lorg/wikipedia/page/PageAvailableOfflineHandler;

    .line 112
    iget-object p1, p0, Lorg/wikipedia/page/PageAvailableOfflineHandler$check$$inlined$CoroutineExceptionHandler$1;->$callback$inlined:Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;->onFinish(Z)V

    .line 113
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    return-void
.end method
