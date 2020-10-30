.class public abstract enum Lleakcanary/AndroidLeakFixes;
.super Ljava/lang/Enum;
.source "AndroidLeakFixes.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;,
        Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;,
        Lleakcanary/AndroidLeakFixes$USER_MANAGER;,
        Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;,
        Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;,
        Lleakcanary/AndroidLeakFixes$CONNECTIVITY_MANAGER;,
        Lleakcanary/AndroidLeakFixes$SAMSUNG_CLIPBOARD_MANAGER;,
        Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;,
        Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;,
        Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;,
        Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;,
        Lleakcanary/AndroidLeakFixes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lleakcanary/AndroidLeakFixes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lleakcanary/AndroidLeakFixes;

.field public static final Companion:Lleakcanary/AndroidLeakFixes$Companion;

.field private static final backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lleakcanary/AndroidLeakFixes;

    new-instance v1, Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;

    const-string v2, "MEDIA_SESSION_LEGACY_HELPER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;

    const-string v2, "TEXT_LINE_POOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$USER_MANAGER;

    const-string v2, "USER_MANAGER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$USER_MANAGER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;

    const-string v2, "FLUSH_HANDLER_THREADS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;

    const-string v2, "ACCESSIBILITY_NODE_INFO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$CONNECTIVITY_MANAGER;

    const-string v2, "CONNECTIVITY_MANAGER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$CONNECTIVITY_MANAGER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$SAMSUNG_CLIPBOARD_MANAGER;

    const-string v2, "SAMSUNG_CLIPBOARD_MANAGER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$SAMSUNG_CLIPBOARD_MANAGER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;

    const-string v2, "BUBBLE_POPUP"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;

    const-string v2, "LAST_HOVERED_VIEW"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;

    const-string v2, "ACTIVITY_MANAGER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;

    const-string v2, "VIEW_LOCATION_HOLDER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    sput-object v0, Lleakcanary/AndroidLeakFixes;->$VALUES:[Lleakcanary/AndroidLeakFixes;

    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lleakcanary/AndroidLeakFixes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 396
    sget-object v0, Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lleakcanary/AndroidLeakFixes;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lleakcanary/AndroidLeakFixes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 31
    sget-object v0, Lleakcanary/AndroidLeakFixes;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lleakcanary/AndroidLeakFixes;
    .locals 1

    const-class v0, Lleakcanary/AndroidLeakFixes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lleakcanary/AndroidLeakFixes;

    return-object p0
.end method

.method public static values()[Lleakcanary/AndroidLeakFixes;
    .locals 1

    sget-object v0, Lleakcanary/AndroidLeakFixes;->$VALUES:[Lleakcanary/AndroidLeakFixes;

    invoke-virtual {v0}, [Lleakcanary/AndroidLeakFixes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lleakcanary/AndroidLeakFixes;

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Landroid/app/Application;)V
.end method
