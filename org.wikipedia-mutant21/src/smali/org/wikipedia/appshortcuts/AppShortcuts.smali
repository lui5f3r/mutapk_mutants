.class public final Lorg/wikipedia/appshortcuts/AppShortcuts;
.super Ljava/lang/Object;
.source "AppShortcuts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_APP_SHORTCUT:Ljava/lang/String; = "ACTION_APP_SHORTCUT"

.field public static final APP_SHORTCUT_ID:Ljava/lang/String; = "APP_SHORTCUT_ID"

.field private static final APP_SHORTCUT_ID_CONTINUE_READING:Ljava/lang/String; = "shortcutContinueReading"

.field private static final APP_SHORTCUT_ID_RANDOM:Ljava/lang/String; = "shortcutRandom"

.field private static final APP_SHORTCUT_ID_SEARCH:Ljava/lang/String; = "shortcutSearch"

.field public static final Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setShortcuts(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/wikipedia/appshortcuts/AppShortcuts;->Companion:Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;

    invoke-virtual {v0, p0}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->setShortcuts(Landroid/content/Context;)V

    return-void
.end method
