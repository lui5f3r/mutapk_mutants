.class public final Lleakcanary/internal/FragmentExtensionsKt;
.super Ljava/lang/Object;
.source "FragmentExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExtensions.kt\nleakcanary/internal/FragmentExtensionsKt\n*L\n1#1,34:1\n*E\n"
.end annotation


# static fields
.field private static final hasAndroidXFragmentActivity$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;->INSTANCE:Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lleakcanary/internal/FragmentExtensionsKt;->hasAndroidXFragmentActivity$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final getHasAndroidXFragmentActivity()Z
    .locals 1

    sget-object v0, Lleakcanary/internal/FragmentExtensionsKt;->hasAndroidXFragmentActivity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final onAndroidXFragmentViewDestroyed(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$onAndroidXFragmentViewDestroyed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lleakcanary/internal/FragmentExtensionsKt;->getHasAndroidXFragmentActivity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 22
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 23
    new-instance v0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    invoke-direct {v0, p1}, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_1
    return-void
.end method
