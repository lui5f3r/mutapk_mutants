.class final Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;
.super Ljava/lang/Object;
.source "AndroidLeakFixes.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;->apply(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;

    invoke-direct {v0}, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;-><init>()V

    sput-object v0, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 200
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
