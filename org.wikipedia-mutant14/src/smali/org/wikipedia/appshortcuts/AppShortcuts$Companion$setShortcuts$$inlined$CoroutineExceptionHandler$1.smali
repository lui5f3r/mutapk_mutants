.class public final Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->setShortcuts(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 AppShortcuts.kt\norg/wikipedia/appshortcuts/AppShortcuts$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n31#2:111\n1#3:112\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    sget-object p1, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    invoke-static {p2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method
