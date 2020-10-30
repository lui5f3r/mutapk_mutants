.class final Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;->apply(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $application:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1;->$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string v0, "android.text.TextLine"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Class.forName(\"android.text.TextLine\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sCached"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "textLineClass.getDeclaredField(\"sCached\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-object v1, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    iget-object v2, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1;->$application:Landroid/app/Application;

    new-instance v3, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;

    invoke-direct {v3, v0}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$Companion;->onActivityDestroyed$plumber_android_release(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
