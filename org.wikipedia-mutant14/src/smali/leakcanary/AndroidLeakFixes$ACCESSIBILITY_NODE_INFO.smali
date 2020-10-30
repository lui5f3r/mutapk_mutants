.class final Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;
.super Lleakcanary/AndroidLeakFixes;
.source "AndroidLeakFixes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/AndroidLeakFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ACCESSIBILITY_NODE_INFO"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lleakcanary/AndroidLeakFixes;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected apply(Landroid/app/Application;)V
    .locals 8

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-static {}, Lleakcanary/AndroidLeakFixes;->access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-object v2, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;

    const-wide/16 v3, 0x5

    const-wide/16 v5, 0x5

    .line 202
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 197
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
