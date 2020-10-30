.class Lorg/wikipedia/login/LoginActivity$LoginCallback;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lorg/wikipedia/login/LoginClient$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/login/LoginActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/login/LoginActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/login/LoginActivity;Lorg/wikipedia/login/LoginActivity$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginActivity$LoginCallback;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->access$100(Lorg/wikipedia/login/LoginActivity;Z)V

    .line 267
    instance-of v0, p1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/login/LoginActivity;->access$600(Lorg/wikipedia/login/LoginActivity;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public passwordResetPrompt(Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    iget-object v1, v0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 261
    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->access$500(Lorg/wikipedia/login/LoginActivity;Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1, p1}, Lorg/wikipedia/login/ResetPasswordActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x2b

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public success(Lorg/wikipedia/login/LoginResult;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->access$100(Lorg/wikipedia/login/LoginActivity;Z)V

    .line 232
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->pass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "accountAuthenticatorResponse"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 237
    :goto_0
    invoke-static {v0, p1}, Lorg/wikipedia/auth/AccountUtil;->updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V

    .line 239
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {p1}, Lorg/wikipedia/login/LoginActivity;->access$200(Lorg/wikipedia/login/LoginActivity;)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->fail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {v0}, Lorg/wikipedia/login/LoginActivity;->access$300(Lorg/wikipedia/login/LoginActivity;)Lorg/wikipedia/analytics/LoginFunnel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/LoginFunnel;->logError(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login failed with result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public twoFactorPrompt(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->access$100(Lorg/wikipedia/login/LoginActivity;Z)V

    .line 252
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {v0, p2}, Lorg/wikipedia/login/LoginActivity;->access$402(Lorg/wikipedia/login/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object p2, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    iget-object p2, p2, Lorg/wikipedia/login/LoginActivity;->twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object p2, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    iget-object p2, p2, Lorg/wikipedia/login/LoginActivity;->twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 255
    iget-object p2, p0, Lorg/wikipedia/login/LoginActivity$LoginCallback;->this$0:Lorg/wikipedia/login/LoginActivity;

    invoke-static {p2, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method
