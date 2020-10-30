.class final Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;


# direct methods
.method constructor <init>(Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;->this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;->this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$onIdle:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
