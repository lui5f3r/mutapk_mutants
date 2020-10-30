.class public Lorg/wikipedia/auth/WikimediaAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "WikimediaAuthenticator.java"


# static fields
.field private static final SYNC_AUTHORITIES:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.wikipedianull.sync.readinglists"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/auth/WikimediaAuthenticator;->SYNC_AUTHORITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/auth/WikimediaAuthenticator;->context:Landroid/content/Context;

    return-void
.end method

.method private addAccount(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/wikipedia/auth/WikimediaAuthenticator;->context:Landroid/content/Context;

    const-string v1, "system"

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method private supportedAccountType(Ljava/lang/String;)Z
    .locals 1

    .line 90
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private unsupportedOperation()Landroid/os/Bundle;
    .locals 3

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    const/4 v2, 0x6

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    const-string v2, ""

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2}, Lorg/wikipedia/auth/WikimediaAuthenticator;->supportedAccountType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/auth/WikimediaAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;->unsupportedOperation()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;->unsupportedOperation()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;->unsupportedOperation()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 116
    invoke-super {p0, p1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "booleanResult"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intent"

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/wikipedia/auth/WikimediaAuthenticator;->SYNC_AUTHORITIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 124
    invoke-static {p2, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;->unsupportedOperation()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lorg/wikipedia/auth/WikimediaAuthenticator;->supportedAccountType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/auth/WikimediaAuthenticator;->context:Landroid/content/Context;

    const v0, 0x7f100478

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 84
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "booleanResult"

    const/4 p3, 0x0

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;->unsupportedOperation()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
