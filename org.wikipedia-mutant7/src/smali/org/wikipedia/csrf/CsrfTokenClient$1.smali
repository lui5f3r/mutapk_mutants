.class Lorg/wikipedia/csrf/CsrfTokenClient$1;
.super Ljava/lang/Object;
.source "CsrfTokenClient.java"

# interfaces
.implements Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/csrf/CsrfTokenClient;->request(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

.field final synthetic val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# direct methods
.method constructor <init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Throwable;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-static {v0, p1, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->access$000(Lorg/wikipedia/csrf/CsrfTokenClient;Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "App believes we\'re logged in, but got anonymous token."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-static {p1, v0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->access$000(Lorg/wikipedia/csrf/CsrfTokenClient;Ljava/lang/Throwable;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-interface {v0, p1}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->success(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public twoFactorPrompt()V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$1;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-interface {v0}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->twoFactorPrompt()V

    return-void
.end method
