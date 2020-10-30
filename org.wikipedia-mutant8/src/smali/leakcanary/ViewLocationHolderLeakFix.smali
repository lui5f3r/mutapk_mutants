.class public final Lleakcanary/ViewLocationHolderLeakFix;
.super Ljava/lang/Object;
.source "ViewLocationHolderLeakFix.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lleakcanary/ViewLocationHolderLeakFix;

.field private static groupAndOutChildren:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Landroid/view/ViewGroup;",
            "+",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lleakcanary/ViewLocationHolderLeakFix;

    invoke-direct {v0}, Lleakcanary/ViewLocationHolderLeakFix;-><init>()V

    sput-object v0, Lleakcanary/ViewLocationHolderLeakFix;->INSTANCE:Lleakcanary/ViewLocationHolderLeakFix;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$uncheckedClearStaticPool(Lleakcanary/ViewLocationHolderLeakFix;Landroid/app/Application;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lleakcanary/ViewLocationHolderLeakFix;->uncheckedClearStaticPool(Landroid/app/Application;)V

    return-void
.end method

.method private final uncheckedClearStaticPool(Landroid/app/Application;)V
    .locals 4

    .line 56
    sget-object v0, Lleakcanary/ViewLocationHolderLeakFix;->groupAndOutChildren:Lkotlin/Pair;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    sput-object p1, Lleakcanary/ViewLocationHolderLeakFix;->groupAndOutChildren:Lkotlin/Pair;

    .line 65
    :cond_1
    sget-object p1, Lleakcanary/ViewLocationHolderLeakFix;->groupAndOutChildren:Lkotlin/Pair;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void

    .line 65
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final applyFix$plumber_android_release(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;

    invoke-direct {v0, p1}, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
