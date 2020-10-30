.class public Lorg/wikipedia/login/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/login/LoginActivity;

.field private view7f090161:Landroid/view/View;

.field private view7f09020c:Landroid/view/View;

.field private view7f09020d:Landroid/view/View;

.field private view7f0902fb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/login/LoginActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/login/LoginActivity_ViewBinding;-><init>(Lorg/wikipedia/login/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/login/LoginActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->target:Lorg/wikipedia/login/LoginActivity;

    .line 39
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09020f

    const-string v2, "field \'usernameInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09020e

    const-string v2, "field \'passwordInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 41
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09020b

    const-string v2, "field \'twoFactorText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 42
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090486

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v0, 0x7f09020c

    const-string v1, "field \'loginButton\' and method \'onLoginClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'loginButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->loginButton:Landroid/widget/Button;

    .line 45
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    .line 46
    new-instance v0, Lorg/wikipedia/login/LoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/login/LoginActivity_ViewBinding$1;-><init>(Lorg/wikipedia/login/LoginActivity_ViewBinding;Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090496

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/login/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f09020d

    const-string v1, "method \'onCreateAccountClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    .line 55
    new-instance v1, Lorg/wikipedia/login/LoginActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/login/LoginActivity_ViewBinding$2;-><init>(Lorg/wikipedia/login/LoginActivity_ViewBinding;Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902fb

    const-string v1, "method \'onPrivacyPolicyClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    .line 63
    new-instance v1, Lorg/wikipedia/login/LoginActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/login/LoginActivity_ViewBinding$3;-><init>(Lorg/wikipedia/login/LoginActivity_ViewBinding;Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090161

    const-string v1, "method \'onForgotPasswordClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 70
    iput-object p2, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f090161:Landroid/view/View;

    .line 71
    new-instance v0, Lorg/wikipedia/login/LoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/login/LoginActivity_ViewBinding$4;-><init>(Lorg/wikipedia/login/LoginActivity_ViewBinding;Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->target:Lorg/wikipedia/login/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->target:Lorg/wikipedia/login/LoginActivity;

    .line 86
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 87
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 88
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 89
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 90
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->loginButton:Landroid/widget/Button;

    .line 91
    iput-object v1, v0, Lorg/wikipedia/login/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 93
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f0902fb:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f090161:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding;->view7f090161:Landroid/view/View;

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
