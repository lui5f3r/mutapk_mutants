.class public final Lorg/wikipedia/util/ReleaseUtil;
.super Ljava/lang/Object;
.source "ReleaseUtil.java"


# static fields
.field private static final RELEASE_ALPHA:I = 0x2

.field private static final RELEASE_BETA:I = 0x1

.field private static final RELEASE_DEV:I = 0x3

.field private static final RELEASE_PROD:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateReleaseType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lorg/wikipedia/util/ReleaseUtil;->getChannelFromManifest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setAppChannel(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getChannelFromManifest(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "org.wikipedia"

    const/16 v2, 0x80

    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 77
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAppChannelKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    move-object v0, p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static isAlphaRelease()Z
    .locals 2

    .line 27
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->calculateReleaseType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDevRelease()Z
    .locals 2

    .line 41
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->calculateReleaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPreBetaRelease()Z
    .locals 2

    .line 31
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->calculateReleaseType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPreProdRelease()Z
    .locals 1

    .line 23
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->calculateReleaseType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProdRelease()Z
    .locals 1

    .line 19
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->calculateReleaseType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
