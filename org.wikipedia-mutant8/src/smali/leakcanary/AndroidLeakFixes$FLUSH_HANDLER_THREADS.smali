.class final Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;
.super Lleakcanary/AndroidLeakFixes;
.source "AndroidLeakFixes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/AndroidLeakFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FLUSH_HANDLER_THREADS"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidLeakFixes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLeakFixes.kt\nleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS\n*L\n1#1,465:1\n*E\n"
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

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lleakcanary/AndroidLeakFixes;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected apply(Landroid/app/Application;)V
    .locals 7

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 141
    invoke-static {}, Lleakcanary/AndroidLeakFixes;->access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1;

    invoke-direct {v1, p1}, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1;-><init>(Ljava/util/Set;)V

    .line 177
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x3

    .line 141
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
