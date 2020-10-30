.class Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Lorg/wikipedia/login/LoginClient$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/ResetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/login/ResetPasswordActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/login/ResetPasswordActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/login/ResetPasswordActivity;Lorg/wikipedia/login/ResetPasswordActivity$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/ResetPasswordActivity;->access$100(Lorg/wikipedia/login/ResetPasswordActivity;Z)V

    .line 170
    instance-of v0, p1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/login/ResetPasswordActivity;->access$300(Lorg/wikipedia/login/ResetPasswordActivity;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public passwordResetPrompt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success(Lorg/wikipedia/login/LoginResult;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/ResetPasswordActivity;->access$100(Lorg/wikipedia/login/ResetPasswordActivity;Z)V

    .line 136
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->pass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "accountAuthenticatorResponse"

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 141
    :goto_0
    invoke-static {v0, p1}, Lorg/wikipedia/auth/AccountUtil;->updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V

    .line 143
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 144
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 145
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->fail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1}, Lorg/wikipedia/login/LoginResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 150
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

    .line 156
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/login/ResetPasswordActivity;->access$100(Lorg/wikipedia/login/ResetPasswordActivity;Z)V

    .line 157
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {v0, p2}, Lorg/wikipedia/login/ResetPasswordActivity;->access$202(Lorg/wikipedia/login/ResetPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object p2, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    iget-object p2, p2, Lorg/wikipedia/login/ResetPasswordActivity;->twoFactorText:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    iget-object p2, p2, Lorg/wikipedia/login/ResetPasswordActivity;->twoFactorText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 160
    iget-object p2, p0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;->this$0:Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-static {p2, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method
