.class final Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP$apply$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;->apply(Landroid/app/Application;)V
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

    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP$apply$1;->$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string v0, "android.widget.BubblePopupHelper"

    .line 267
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Class.forName(\"android.widget.BubblePopupHelper\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sHelper"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "helperClass.getDeclaredField(\"sHelper\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    sget-object v1, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    iget-object v2, p0, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP$apply$1;->$application:Landroid/app/Application;

    new-instance v3, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP$apply$1$1;

    invoke-direct {v3, v0}, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP$apply$1$1;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$Companion;->onActivityDestroyed$plumber_android_release(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    :catch_0
    return-void
.end method
