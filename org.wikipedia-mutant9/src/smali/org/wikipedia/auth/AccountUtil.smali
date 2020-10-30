.class public final Lorg/wikipedia/auth/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static account()Landroid/accounts/Account;
    .locals 2

    .line 123
    :try_start_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 124
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 125
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 128
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static accountManager()Landroid/accounts/AccountManager;
    .locals 1

    .line 178
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method public static accountType()Ljava/lang/String;
    .locals 2

    .line 135
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const v1, 0x7f10002f

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static app()Lorg/wikipedia/WikipediaApp;
    .locals 1

    .line 183
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    return-object v0
.end method

.method private static createAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 139
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 141
    :cond_1
    :goto_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->removeAccount()V

    .line 142
    new-instance v0, Landroid/accounts/Account;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static getGroups()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const v3, 0x7f100262

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    new-instance v1, Lorg/wikipedia/auth/AccountUtil$1;

    invoke-direct {v1}, Lorg/wikipedia/auth/AccountUtil$1;-><init>()V

    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getUserIdForLanguage(Ljava/lang/String;)I
    .locals 1

    .line 67
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserIds()Ljava/util/Map;

    move-result-object v0

    .line 68
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getUserIds()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const v3, 0x7f100263

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    new-instance v1, Lorg/wikipedia/auth/AccountUtil$2;

    invoke-direct {v1}, Lorg/wikipedia/auth/AccountUtil$2;-><init>()V

    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static isLoggedIn()Z
    .locals 1

    .line 53
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMemberOf(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getGroups()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putUserIdForLanguage(Ljava/lang/String;I)V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserIds()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Lorg/wikipedia/auth/AccountUtil;->setUserIds(Ljava/util/Map;)V

    return-void
.end method

.method public static removeAccount()V
    .locals 3

    .line 106
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 109
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setGroups(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    .line 97
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const v3, 0x7f100262

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-virtual {v1, v0, v2, p0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setPassword(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setUserIds(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    .line 173
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->app()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const v3, 0x7f100263

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {v1, v0, v2, p0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static supported(Landroid/accounts/Account;)Z
    .locals 1

    .line 117
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/auth/AccountUtil;->createAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->accountType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getPassword()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/auth/AccountUtil;->setPassword(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p0

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Lorg/wikipedia/auth/AccountUtil;->putUserIdForLanguage(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getGroups()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/auth/AccountUtil;->setGroups(Ljava/util/Set;)V

    return-void

    :cond_1
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    const-string v0, ""

    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    :cond_2
    const-string p0, "account creation failure"

    .line 43
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void
.end method
