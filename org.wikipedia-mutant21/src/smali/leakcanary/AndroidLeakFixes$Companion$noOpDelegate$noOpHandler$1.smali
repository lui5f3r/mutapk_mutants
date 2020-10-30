.class public final Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidLeakFixes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLeakFixes.kt\nleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1\n*L\n1#1,465:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;

    invoke-direct {v0}, Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;-><init>()V

    sput-object v0, Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-virtual {p0, p1, p2, p3}, Lleakcanary/AndroidLeakFixes$Companion$noOpDelegate$noOpHandler$1;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
