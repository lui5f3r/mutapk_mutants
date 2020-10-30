.class Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;
.super Ljava/lang/Object;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/LoginClient$LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientLogin"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/login/LoginClient$LoginResponse$Request;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method toLoginResult(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Lorg/wikipedia/login/LoginResult;
    .locals 10

    .line 189
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->message:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    const-string v2, "UI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->requests:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/login/LoginClient$LoginResponse$Request;

    .line 193
    invoke-virtual {v2}, Lorg/wikipedia/login/LoginClient$LoginResponse$Request;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TOTPAuthenticationRequest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    new-instance v0, Lorg/wikipedia/login/LoginOAuthResult;

    iget-object v6, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    iget-object v7, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    iget-object v9, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->message:Ljava/lang/String;

    move-object v4, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/login/LoginOAuthResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 195
    :cond_1
    invoke-virtual {v2}, Lorg/wikipedia/login/LoginClient$LoginResponse$Request;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PasswordAuthenticationRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v0, Lorg/wikipedia/login/LoginResetPasswordResult;

    iget-object v5, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    iget-object v6, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    iget-object v8, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->message:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/login/LoginResetPasswordResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 200
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    const-string v2, "PASS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    const-string v2, "FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "An unknown error occurred."

    :cond_3
    move-object v6, v0

    .line 204
    new-instance v0, Lorg/wikipedia/login/LoginResult;

    iget-object v3, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->status:Ljava/lang/String;

    iget-object v4, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$ClientLogin;->userName:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/login/LoginResult;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
