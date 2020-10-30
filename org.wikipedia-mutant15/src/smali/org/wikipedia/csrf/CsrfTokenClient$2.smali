.class Lorg/wikipedia/csrf/CsrfTokenClient$2;
.super Ljava/lang/Object;
.source "CsrfTokenClient.java"

# interfaces
.implements Lorg/wikipedia/login/LoginClient$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/csrf/CsrfTokenClient;->login(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

.field final synthetic val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

.field final synthetic val$retryCallback:Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;


# direct methods
.method constructor <init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$retryCallback:Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;

    iput-object p3, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-interface {v0, p1}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->failure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public passwordResetPrompt(Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    new-instance v0, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    const-string v1, "Logged in with temporary password."

    invoke-direct {v0, v1}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->failure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public success(Lorg/wikipedia/login/LoginResult;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->pass()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 121
    invoke-static {v0, p1}, Lorg/wikipedia/auth/AccountUtil;->updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V

    .line 122
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$retryCallback:Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;

    invoke-interface {p1}, Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;->retry()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    new-instance v1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->failure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public twoFactorPrompt(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$2;->val$callback:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-interface {p1}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->twoFactorPrompt()V

    return-void
.end method
