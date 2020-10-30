.class public Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CreateAccountActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/createaccount/CreateAccountActivity;

.field private view7f09009c:Landroid/view/View;

.field private view7f0900dd:Landroid/view/View;

.field private view7f0900e1:Landroid/view/View;

.field private view7f090161:Landroid/view/View;

.field private view7f0902fb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->target:Lorg/wikipedia/createaccount/CreateAccountActivity;

    const v0, 0x7f0900e0

    const-string v1, "field \'primaryContainer\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->primaryContainer:Landroid/view/View;

    .line 42
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0900e2

    const-string v2, "field \'usernameInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0900de

    const-string v2, "field \'passwordInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0900df

    const-string v2, "field \'passwordRepeatInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0900dc

    const-string v2, "field \'emailInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0900e1

    const-string v1, "field \'createAccountButton\' and method \'onCreateAccountClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'createAccountButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButton:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900e1:Landroid/view/View;

    .line 49
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090459

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 56
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09009d

    const-string v2, "field \'captchaText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f09009c

    const-string v1, "field \'createAccountButtonCaptcha\' and method \'onCreateAccountClick\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'createAccountButtonCaptcha\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButtonCaptcha:Landroid/widget/Button;

    .line 59
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f09009c:Landroid/view/View;

    .line 60
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090496

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0900dd

    const-string v1, "method \'onLoginClick\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900dd:Landroid/view/View;

    .line 69
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902fb

    const-string v1, "method \'onPrivacyPolicyClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    .line 77
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$4;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090161

    const-string v1, "method \'onForgotPasswordClick\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 84
    iput-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f090161:Landroid/view/View;

    .line 85
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$5;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->target:Lorg/wikipedia/createaccount/CreateAccountActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->target:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 100
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->primaryContainer:Landroid/view/View;

    .line 101
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 102
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 104
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButton:Landroid/widget/Button;

    .line 106
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 107
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 108
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButtonCaptcha:Landroid/widget/Button;

    .line 109
    iput-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 111
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900e1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900e1:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f09009c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f09009c:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900dd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0900dd:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f090161:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;->view7f090161:Landroid/view/View;

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
