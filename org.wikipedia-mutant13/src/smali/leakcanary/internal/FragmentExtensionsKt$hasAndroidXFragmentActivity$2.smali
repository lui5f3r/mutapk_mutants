.class final Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/internal/FragmentExtensionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;

    invoke-direct {v0}, Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;-><init>()V

    sput-object v0, Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;->INSTANCE:Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lleakcanary/internal/FragmentExtensionsKt$hasAndroidXFragmentActivity$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.fragment.app.FragmentActivity"

    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
