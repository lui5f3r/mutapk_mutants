.class public final Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;
.super Ljava/lang/Thread;
.source "AndroidLeakFixes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;->newThread(Ljava/lang/Runnable;)Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 399
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 400
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
