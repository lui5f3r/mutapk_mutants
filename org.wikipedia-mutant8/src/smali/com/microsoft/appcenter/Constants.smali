.class public Lcom/microsoft/appcenter/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static APPLICATION_DEBUGGABLE:Z = false

.field public static FILES_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static loadFilesPath(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppCenter"

    const-string v1, "Exception thrown when accessing the application filesystem"

    .line 108
    invoke-static {v0, v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/microsoft/appcenter/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/microsoft/appcenter/Constants;->setDebuggableFlag(Landroid/content/Context;)V

    return-void
.end method

.method private static setDebuggableFlag(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    :cond_1
    return-void
.end method
