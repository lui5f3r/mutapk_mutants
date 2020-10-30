.class final Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $flushHandler:Landroid/os/Handler;

.field final synthetic $scheduleFlush:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->$scheduleFlush:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->$flushHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 159
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->$scheduleFlush:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 160
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 164
    :try_start_0
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->$flushHandler:Landroid/os/Handler;

    new-instance v1, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2$1;

    invoke-direct {v1, p0}, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2$1;-><init>(Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
