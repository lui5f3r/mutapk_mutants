.class final Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidLeakFixes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLeakFixes.kt\nleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1\n*L\n1#1,465:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $sCached:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;->$sCached:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;->invoke(Landroid/app/Activity;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;->$sCached:Ljava/lang/Object;

    monitor-enter p1

    .line 92
    :try_start_0
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;->$sCached:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    iget-object v2, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;->$sCached:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
