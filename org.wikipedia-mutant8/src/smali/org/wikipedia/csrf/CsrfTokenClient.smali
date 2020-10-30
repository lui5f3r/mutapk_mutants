.class public Lorg/wikipedia/csrf/CsrfTokenClient;
.super Ljava/lang/Object;
.source "CsrfTokenClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;,
        Lorg/wikipedia/csrf/CsrfTokenClient$DefaultCallback;,
        Lorg/wikipedia/csrf/CsrfTokenClient$Callback;
    }
.end annotation


# static fields
.field private static final ANON_TOKEN:Ljava/lang/String; = "+\\"

.field private static final MAX_RETRIES:I = 0x1

.field private static final MAX_RETRIES_OF_LOGIN_BLOCKING:I = 0x2


# instance fields
.field private csrfTokenCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final csrfWikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field private loginClient:Lorg/wikipedia/login/LoginClient;

.field private final loginWikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field private retries:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->retries:I

    .line 38
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    invoke-direct {v0}, Lorg/wikipedia/login/LoginClient;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 45
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 46
    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->loginWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/csrf/CsrfTokenClient;Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient;->retryWithLogin(Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method private bailWithLogout()V
    .locals 2

    .line 182
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->logOut()V

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setLoggedOutInBackground(Z)V

    .line 184
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    invoke-direct {v1}, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 3

    .line 116
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    invoke-direct {v0}, Lorg/wikipedia/login/LoginClient;-><init>()V

    iget-object v1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->loginWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    new-instance v2, Lorg/wikipedia/csrf/CsrfTokenClient$2;

    invoke-direct {v2, p0, p3, p4}, Lorg/wikipedia/csrf/CsrfTokenClient$2;-><init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/wikipedia/login/LoginClient;->request(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    return-void
.end method

.method private retryWithLogin(Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 2

    .line 94
    iget v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->retries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 95
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->retries:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->retries:I

    .line 99
    invoke-static {}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->getInstance()Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->clearAllCookies()V

    .line 101
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getPassword()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;

    invoke-direct {v1, p0, p2}, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;-><init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient;->login(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->retries:I

    if-lt v0, v1, :cond_1

    .line 107
    invoke-direct {p0}, Lorg/wikipedia/csrf/CsrfTokenClient;->bailWithLogout()V

    .line 109
    :cond_1
    invoke-interface {p2, p1}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->failure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->loginClient:Lorg/wikipedia/login/LoginClient;

    invoke-virtual {v0}, Lorg/wikipedia/login/LoginClient;->cancel()V

    .line 64
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfTokenCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfTokenCall:Lretrofit2/Call;

    :cond_0
    return-void
.end method

.method public getTokenBlocking()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x2

    const-string v5, "+\\"

    if-ge v2, v4, :cond_4

    if-lez v2, :cond_0

    .line 153
    :try_start_0
    new-instance v4, Lorg/wikipedia/login/LoginClient;

    invoke-direct {v4}, Lorg/wikipedia/login/LoginClient;-><init>()V

    iget-object v6, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->loginWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v4, v6, v7, v8, v1}, Lorg/wikipedia/login/LoginClient;->loginBlocking(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getCsrfTokenCall()Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 159
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 164
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "App believes we\'re logged in, but got anonymous token."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    .line 168
    invoke-static {v4}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    return-object v3

    .line 172
    :cond_6
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-direct {p0}, Lorg/wikipedia/csrf/CsrfTokenClient;->bailWithLogout()V

    .line 175
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid token, or login failure."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$retryWithLogin$0$CsrfTokenClient(Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 1

    const-string v0, "retrying..."

    .line 102
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->i(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0, p1}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method request(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/Service;",
            "Lorg/wikipedia/csrf/CsrfTokenClient$Callback;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient$1;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$1;-><init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->requestToken(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public request(Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method public request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/csrf/CsrfTokenClient;->cancel()V

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Forcing login..."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient;->retryWithLogin(Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient;->csrfTokenCall:Lretrofit2/Call;

    return-void
.end method

.method requestToken(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/Service;",
            "Lorg/wikipedia/csrf/CsrfTokenClient$Callback;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Lorg/wikipedia/dataclient/Service;->getCsrfTokenCall()Lretrofit2/Call;

    move-result-object p1

    .line 190
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient$3;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$3;-><init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object p1
.end method
