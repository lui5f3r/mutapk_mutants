.class public Lorg/wikipedia/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/login/LoginClient$LoginFailedException;,
        Lorg/wikipedia/login/LoginClient$LoginResponse;,
        Lorg/wikipedia/login/LoginClient$LoginCallback;
    }
.end annotation


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/login/LoginClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private getExtendedInfo(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/login/LoginResult;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Lorg/wikipedia/login/LoginResult;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/login/LoginResult;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getUserInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 160
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;

    invoke-direct {v1, p2, p1}, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;-><init>(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 161
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getLoginResponse(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/login/LoginClient$LoginResponse;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    const-string p4, "https://wikipedia.org/"

    invoke-interface {p1, p2, p3, p6, p4}, Lorg/wikipedia/dataclient/Service;->postLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service;->postLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getLoginToken(Lorg/wikipedia/dataclient/WikiSite;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/dataclient/Service;->getLoginToken()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;->INSTANCE:Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;

    .line 137
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getExtendedInfo$8(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/login/LoginResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id()I

    move-result v0

    .line 163
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/LoginResult;->setUserId(I)V

    .line 164
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getGroups()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/wikipedia/login/LoginResult;->setGroups(Ljava/util/Set;)V

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found user ID "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method static synthetic lambda$getLoginToken$7(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 139
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->loginToken()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received empty login token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$login$2(Lorg/wikipedia/login/LoginClient$LoginCallback;Lorg/wikipedia/login/LoginResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p0, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->success(Lorg/wikipedia/login/LoginResult;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Login succeeded but getting group information failed. "

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$login$3(Lorg/wikipedia/login/LoginClient$LoginCallback;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login process failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {p0, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$loginBlocking$5(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginResponse;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Unexpected response when logging in."

    if-nez p2, :cond_0

    .line 103
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p2, p0, p1}, Lorg/wikipedia/login/LoginClient$LoginResponse;->toLoginResult(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Lorg/wikipedia/login/LoginResult;

    move-result-object p0

    if-nez p0, :cond_1

    .line 107
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    instance-of p1, p0, Lorg/wikipedia/login/LoginOAuthResult;

    if-eqz p1, :cond_2

    .line 112
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    const p2, 0x7f100170

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 114
    new-instance v0, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->pass()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    :cond_4
    new-instance v0, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$loginBlocking$6(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected throwable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public synthetic lambda$login$1$LoginClient(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    invoke-virtual {p5, p1, p2}, Lorg/wikipedia/login/LoginClient$LoginResponse;->toLoginResult(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Lorg/wikipedia/login/LoginResult;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 61
    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->pass()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->getUserName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/login/LoginClient;->getExtendedInfo(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/login/LoginResult;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p5, "UI"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    instance-of p1, p2, Lorg/wikipedia/login/LoginOAuthResult;

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p4}, Lorg/wikipedia/login/LoginClient$LoginCallback;->twoFactorPrompt(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    instance-of p1, p2, Lorg/wikipedia/login/LoginResetPasswordResult;

    if-eqz p1, :cond_2

    .line 67
    invoke-interface {p3, p4}, Lorg/wikipedia/login/LoginClient$LoginCallback;->passwordResetPrompt(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    new-instance p1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p2}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Login failed. Unexpected response."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$loginBlocking$4$LoginClient(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 97
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/login/LoginClient;->getLoginResponse(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$request$0$LoginClient(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p4

    .line 48
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/login/LoginClient;->login(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    return-void
.end method

.method login(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V
    .locals 7

    .line 55
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/login/LoginClient;->getLoginResponse(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 56
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 57
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p4, Lorg/wikipedia/login/-$$Lambda$LoginClient$LlFoBT-6FIWREnva8_3q1aPSUVk;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p7

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/login/-$$Lambda$LoginClient$LlFoBT-6FIWREnva8_3q1aPSUVk;-><init>(Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 79
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lorg/wikipedia/login/-$$Lambda$LoginClient$j4LHuQeDSOBNGCPd0uXuxzUcX3E;

    invoke-direct {p2, p7}, Lorg/wikipedia/login/-$$Lambda$LoginClient$j4LHuQeDSOBNGCPd0uXuxzUcX3E;-><init>(Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    new-instance p3, Lorg/wikipedia/login/-$$Lambda$LoginClient$sY40-CO2wegNh4BkQstCNFo6o1I;

    invoke-direct {p3, p7}, Lorg/wikipedia/login/-$$Lambda$LoginClient$sY40-CO2wegNh4BkQstCNFo6o1I;-><init>(Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    .line 80
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public loginBlocking(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 95
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginClient;->getLoginToken(Lorg/wikipedia/dataclient/WikiSite;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 96
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v8, Lorg/wikipedia/login/-$$Lambda$LoginClient$klUbeT7KxTzUokHgbUYxLkUSGjc;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/login/-$$Lambda$LoginClient$klUbeT7KxTzUokHgbUYxLkUSGjc;-><init>(Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v8}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 98
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 99
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p4, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;

    invoke-direct {p4, p1, p3}, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lorg/wikipedia/login/-$$Lambda$LoginClient$VIom179fWfxE2vCqRggT9kNhX_A;->INSTANCE:Lorg/wikipedia/login/-$$Lambda$LoginClient$VIom179fWfxE2vCqRggT9kNhX_A;

    .line 124
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public request(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V
    .locals 9

    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginClient;->cancel()V

    .line 46
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginClient;->getLoginToken(Lorg/wikipedia/dataclient/WikiSite;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 47
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v8, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;-><init>(Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lorg/wikipedia/login/-$$Lambda$H4djTth9zLulyTUqOdcf8w9N9co;

    invoke-direct {p1, p4}, Lorg/wikipedia/login/-$$Lambda$H4djTth9zLulyTUqOdcf8w9N9co;-><init>(Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    .line 48
    invoke-virtual {v1, v8, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
