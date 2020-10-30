.class public Lorg/wikipedia/login/ResetPasswordActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "ResetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;
    }
.end annotation


# static fields
.field public static final LOGIN_TOKEN:Ljava/lang/String; = "token"

.field public static final LOGIN_USER_NAME:Ljava/lang/String; = "userName"

.field public static final RESULT_PASSWORD_RESET_SUCCESS:I = 0x1


# instance fields
.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private firstStepToken:Ljava/lang/String;

.field loginButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loginCallback:Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;

.field private loginClient:Lorg/wikipedia/login/LoginClient;

.field passwordInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field twoFactorText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;Lorg/wikipedia/login/ResetPasswordActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginCallback:Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/login/ResetPasswordActivity;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$202(Lorg/wikipedia/login/ResetPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/wikipedia/login/ResetPasswordActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/wikipedia/login/ResetPasswordActivity;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearErrors()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 89
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method private doLogin()V
    .locals 9

    .line 118
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v4

    .line 119
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v5

    .line 120
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->twoFactorText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar(Z)V

    .line 124
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    invoke-direct {v0}, Lorg/wikipedia/login/LoginClient;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    iget-object v7, p0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    iget-object v8, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginCallback:Lorg/wikipedia/login/ResetPasswordActivity$LoginCallback;

    invoke-virtual/range {v1 .. v8}, Lorg/wikipedia/login/LoginClient;->login(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    return-void
.end method

.method private getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/login/ResetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "userName"

    .line 56
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "token"

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private showError(Ljava/lang/Throwable;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 198
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const p1, 0x7f100174

    goto :goto_1

    :cond_1
    const p1, 0x7f100190

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private validateThenLogin()V
    .locals 4

    .line 93
    invoke-direct {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->clearErrors()V

    .line 94
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    iget-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 95
    invoke-direct {p0, v1}, Lorg/wikipedia/login/ResetPasswordActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v2}, Lorg/wikipedia/login/ResetPasswordActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 94
    invoke-static {v0, v1, v2, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    move-result-object v0

    .line 97
    sget-object v1, Lorg/wikipedia/login/ResetPasswordActivity$1;->$SwitchMap$org$wikipedia$createaccount$CreateAccountActivity$ValidateResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->doLogin()V

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100086

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 100
    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100084

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ResetPasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ResetPasswordActivity(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$ResetPasswordActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->validateThenLogin()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 186
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 187
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 66
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$UKBO8LiWmhyU0N2C3L9CjTzpd_U;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$UKBO8LiWmhyU0N2C3L9CjTzpd_U;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$qIRvQtKOY8C-eoJrWYP_RdxgPQI;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$qIRvQtKOY8C-eoJrWYP_RdxgPQI;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Lorg/wikipedia/views/NonEmptyValidator;

    iget-object v0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/views/NonEmptyValidator;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 71
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$T7r-7Oe0j_hnx2DS-Wt3nkuDewc;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$ResetPasswordActivity$T7r-7Oe0j_hnx2DS-Wt3nkuDewc;-><init>(Lorg/wikipedia/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->userName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    return-void
.end method

.method onLoginClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->validateThenLogin()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar(Z)V

    .line 193
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onStop()V

    return-void
.end method
