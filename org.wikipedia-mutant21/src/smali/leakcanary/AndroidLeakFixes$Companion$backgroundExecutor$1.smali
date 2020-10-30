.class final Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/AndroidLeakFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;

    invoke-direct {v0}, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;-><init>()V

    sput-object v0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;->newThread(Ljava/lang/Runnable;)Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;

    move-result-object p1

    return-object p1
.end method

.method public final newThread(Ljava/lang/Runnable;)Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;
    .locals 1

    .line 397
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;

    invoke-direct {v0, p1}, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "plumber-android-leaks"

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
