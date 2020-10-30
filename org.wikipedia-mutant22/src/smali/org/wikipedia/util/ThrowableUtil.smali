.class public final Lorg/wikipedia/util/ThrowableUtil;
.super Ljava/lang/Object;
.source "ThrowableUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/util/ThrowableUtil$AppError;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppError(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/wikipedia/util/ThrowableUtil$AppError;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->getInnermostThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->isNetworkError(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$AppError;

    const v1, 0x7f100109

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100139

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 61
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lorg/wikipedia/util/ThrowableUtil$AppError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v1, :cond_1

    .line 64
    new-instance p0, Lorg/wikipedia/util/ThrowableUtil$AppError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/util/ThrowableUtil$AppError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    goto :goto_1

    .line 65
    :cond_1
    instance-of v1, v0, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/wikipedia/createaccount/CreateAccountException;

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    const-class v1, Lorg/json/JSONException;

    invoke-static {p1, v1}, Lorg/wikipedia/util/ThrowableUtil;->throwableContainsException(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$AppError;

    const v1, 0x7f10010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/util/ThrowableUtil$AppError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_3
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$AppError;

    const v1, 0x7f10010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/util/ThrowableUtil$AppError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$AppError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/util/ThrowableUtil$AppError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public static getInnermostThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 28
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static is404(Ljava/lang/Throwable;)Z
    .locals 1

    .line 90
    instance-of v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result p0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNetworkError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 94
    const-class v0, Ljava/net/UnknownHostException;

    invoke-static {p0, v0}, Lorg/wikipedia/util/ThrowableUtil;->throwableContainsException(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/concurrent/TimeoutException;

    .line 95
    invoke-static {p0, v0}, Lorg/wikipedia/util/ThrowableUtil;->throwableContainsException(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljavax/net/ssl/SSLException;

    .line 96
    invoke-static {p0, v0}, Lorg/wikipedia/util/ThrowableUtil;->throwableContainsException(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOffline(Ljava/lang/Throwable;)Z
    .locals 1

    .line 81
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/net/SocketException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTimeout(Ljava/lang/Throwable;)Z
    .locals 0

    .line 86
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    return p0
.end method

.method private static throwableContainsException(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
