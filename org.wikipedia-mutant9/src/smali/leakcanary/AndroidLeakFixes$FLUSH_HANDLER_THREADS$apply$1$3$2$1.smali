.class final Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;


# direct methods
.method constructor <init>(Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2$1;->this$0:Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2$1;->this$0:Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;

    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS$apply$1$3$2;->$scheduleFlush:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
