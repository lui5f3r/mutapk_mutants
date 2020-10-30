.class public Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ResetPasswordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/login/ResetPasswordActivity;

.field private view7f09020c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/login/ResetPasswordActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/login/ResetPasswordActivity;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->target:Lorg/wikipedia/login/ResetPasswordActivity;

    .line 34
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09034b

    const-string v2, "field \'passwordInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09034c

    const-string v2, "field \'passwordRepeatInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 36
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09020b

    const-string v2, "field \'twoFactorText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/wikipedia/login/ResetPasswordActivity;->twoFactorText:Landroid/widget/EditText;

    .line 37
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090486

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v0, 0x7f09020c

    const-string v1, "field \'loginButton\' and method \'onLoginClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'loginButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/login/ResetPasswordActivity;->loginButton:Landroid/widget/Button;

    .line 40
    iput-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    .line 41
    new-instance v0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding$1;-><init>(Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;Lorg/wikipedia/login/ResetPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090496

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lorg/wikipedia/login/ResetPasswordActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->target:Lorg/wikipedia/login/ResetPasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->target:Lorg/wikipedia/login/ResetPasswordActivity;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->twoFactorText:Landroid/widget/EditText;

    .line 60
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 61
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->loginButton:Landroid/widget/Button;

    .line 62
    iput-object v1, v0, Lorg/wikipedia/login/ResetPasswordActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
