.class public final Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;
.super Ljava/lang/Object;
.source "AppShortcuts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/appshortcuts/AppShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppShortcuts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppShortcuts.kt\norg/wikipedia/appshortcuts/AppShortcuts$Companion\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,81:1\n49#2,4:82\n*E\n*S KotlinDebug\n*F\n+ 1 AppShortcuts.kt\norg/wikipedia/appshortcuts/AppShortcuts$Companion\n*L\n31#1,4:82\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$continueReadingShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->continueReadingShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$randomShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->randomShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchShortcut(Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion;->searchShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private final continueReadingShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 68
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v1, "shortcutContinueReading"

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f10003e

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    const v2, 0x7f080060

    .line 71
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 73
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-class v4, Lorg/wikipedia/main/MainActivity;

    const-string v5, "ACTION_APP_SHORTCUT"

    invoke-direct {v2, v5, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 74
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "APP_SHORTCUT_ID"

    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "appShortcutContinueReading"

    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const-string v0, "ShortcutInfo.Builder(app\u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final randomShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 54
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v1, "shortcutRandom"

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f10003f

    .line 55
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    const v2, 0x7f080061

    .line 57
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 59
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-class v4, Lorg/wikipedia/main/MainActivity;

    const-string v5, "ACTION_APP_SHORTCUT"

    invoke-direct {v2, v5, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 60
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "APP_SHORTCUT_ID"

    .line 61
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "appShortcutRandomizer"

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const-string v0, "ShortcutInfo.Builder(app\u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final searchShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 40
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v1, "shortcutSearch"

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f100040

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    const v2, 0x7f080062

    .line 43
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 45
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-class v4, Lorg/wikipedia/main/MainActivity;

    const-string v5, "ACTION_APP_SHORTCUT"

    invoke-direct {v2, v5, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 46
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "APP_SHORTCUT_ID"

    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "appShortcutSearch"

    const/4 v2, 0x1

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const-string v0, "ShortcutInfo.Builder(app\u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final setShortcuts(Landroid/content/Context;)V
    .locals 7

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 49
    new-instance v2, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$$inlined$CoroutineExceptionHandler$1;

    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v2, v0}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    const/4 v3, 0x0

    .line 31
    new-instance v4, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lorg/wikipedia/appshortcuts/AppShortcuts$Companion$setShortcuts$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
