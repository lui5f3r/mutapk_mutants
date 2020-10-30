.class final Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$Companion;->onEachIdle(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onIdle:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$onIdle:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 414
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 415
    new-instance v1, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;

    invoke-direct {v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;-><init>(Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
