.class public Lorg/wikipedia/createaccount/CreateAccountActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;,
        Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;,
        Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;
    }
.end annotation


# static fields
.field public static final CREATE_ACCOUNT_RESULT_PASSWORD:Ljava/lang/String; = "password"

.field public static final CREATE_ACCOUNT_RESULT_USERNAME:Ljava/lang/String; = "username"

.field public static final LOGIN_REQUEST_SOURCE:Ljava/lang/String; = "login_request_source"

.field public static final LOGIN_SESSION_TOKEN:Ljava/lang/String; = "login_session_token"

.field private static final PASSWORD_MIN_LENGTH:I = 0x6

.field public static final RESULT_ACCOUNT_CREATED:I = 0x1

.field public static final RESULT_ACCOUNT_LOGIN:I = 0x3

.field public static final RESULT_ACCOUNT_NOT_CREATED:I = 0x2

.field public static final USERNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field captchaText:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field createAccountButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field createAccountButtonCaptcha:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private createAccountResult:Lorg/wikipedia/createaccount/CreateAccountResult;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field emailInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/CreateAccountFunnel;

.field passwordInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userNameTextWatcher:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;

.field private userNameVerifyRunnable:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

.field usernameInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^#<>\\[\\]|{}/@]*"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 85
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lorg/wikipedia/createaccount/CreateAccountActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameTextWatcher:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;

    .line 86
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lorg/wikipedia/createaccount/CreateAccountActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameVerifyRunnable:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameVerifyRunnable:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method private clearErrors()V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 253
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 254
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 255
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method private createAccount()V
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->token()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->doCreateAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getCreateAccountInfo()V

    :goto_0
    return-void
.end method

.method private finishWithUserResult(Lorg/wikipedia/createaccount/CreateAccountSuccessResult;)V
    .locals 3

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    invoke-virtual {p1}, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 335
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 337
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountResult:Lorg/wikipedia/createaccount/CreateAccountResult;

    const/4 p1, 0x0

    .line 338
    invoke-direct {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 339
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {p1}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 340
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->funnel:Lorg/wikipedia/analytics/CreateAccountFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/CreateAccountFunnel;->logSuccess()V

    .line 341
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 1

    .line 328
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

.method private showError(Ljava/lang/Throwable;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 353
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButtonCaptcha:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButtonCaptcha:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const p1, 0x7f1000c7

    goto :goto_1

    :cond_1
    const p1, 0x7f10007a

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public static validateInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;
    .locals 1

    .line 313
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    .line 314
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_USERNAME:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0

    .line 315
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_1

    .line 316
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_PASSWORD:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0

    .line 317
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 318
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->PASSWORD_MISMATCH:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0

    .line 319
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_3

    .line 320
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_EMAIL:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0

    .line 321
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 322
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->NO_EMAIL:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0

    .line 324
    :cond_4
    sget-object p0, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->SUCCESS:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    return-object p0
.end method

.method private validateThenCreateAccount()V
    .locals 4

    .line 259
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->clearErrors()V

    .line 260
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 261
    invoke-direct {p0, v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v0, v1, v2, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    move-result-object v0

    .line 263
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity$1;->$SwitchMap$org$wikipedia$createaccount$CreateAccountActivity$ValidateResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccount()V

    goto/16 :goto_0

    .line 282
    :pswitch_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000fe

    .line 284
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000fc

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$B4gKp2L8NbnDwuR6yst6ZMnd_ms;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$B4gKp2L8NbnDwuR6yst6ZMnd_ms;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000fb

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$q4dRuSU7AJ6jsn-S3zFsw_i94KM;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$q4dRuSU7AJ6jsn-S3zFsw_i94KM;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 288
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 278
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f10007b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 273
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 274
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100086

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 269
    :pswitch_4
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 270
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100084

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 265
    :pswitch_5
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 266
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100087

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doCreateAccount(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 196
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 199
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordRepeatInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 205
    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v5

    const-string v6, "null"

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaId()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_1

    :cond_1
    move-object v8, v6

    :goto_1
    iget-object v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 206
    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    const-string v6, "https://wikipedia.org/"

    move-object v5, p1

    .line 203
    invoke-interface/range {v1 .. v9}, Lorg/wikipedia/dataclient/Service;->postCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 207
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 208
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$e71Bu7qMkkWHNpQTvOjt3FxP0Og;

    invoke-direct {v1, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$e71Bu7qMkkWHNpQTvOjt3FxP0Og;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$-BeG5HhqNe53ja5LT7kPcm-d9iY;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$-BeG5HhqNe53ja5LT7kPcm-d9iY;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 209
    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public getCreateAccountInfo()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/dataclient/Service;->getAuthManagerInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 174
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 175
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$6OGRQY1niu_ZGrj1Q7nhVafB5IM;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$6OGRQY1niu_ZGrj1Q7nhVafB5IM;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    new-instance v3, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$FLm4Dyh4kNhbu0HR432Tf0XZeQw;

    invoke-direct {v3, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$FLm4Dyh4kNhbu0HR432Tf0XZeQw;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 176
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public handleAccountCreationError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "blocked"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100080

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f10007e

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$u3Vgd0jUp60f0hruESJunqRQEJ8;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$u3Vgd0jUp60f0hruESJunqRQEJ8;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 165
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account creation failed with result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$doCreateAccount$6$CreateAccountActivity(Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->status()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->user()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/createaccount/CreateAccountSuccessResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->finishWithUserResult(Lorg/wikipedia/createaccount/CreateAccountSuccessResult;)V

    return-void

    .line 213
    :cond_0
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountException;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/createaccount/CreateAccountException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$doCreateAccount$7$CreateAccountActivity(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 218
    instance-of v0, p1, Lorg/wikipedia/createaccount/CreateAccountException;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->handleAccountCreationError(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getCreateAccountInfo$4$CreateAccountActivity(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->createAccountToken()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->captchaId()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f10007d

    .line 180
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->handleAccountCreationError(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    new-instance v2, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-direct {v2, p1}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Ljava/lang/String;Lorg/wikipedia/captcha/CaptchaResult;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->doCreateAccount(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getCreateAccountInfo$5$CreateAccountActivity(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showError(Ljava/lang/Throwable;)V

    .line 188
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$handleAccountCreationError$3$CreateAccountActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f10007f

    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 163
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$CreateAccountActivity(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$CreateAccountActivity(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$CreateAccountActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateThenCreateAccount()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$validateThenCreateAccount$8$CreateAccountActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccount()V

    return-void
.end method

.method public synthetic lambda$validateThenCreateAccount$9$CreateAccountActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 289
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->emailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    return-void

    .line 233
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 234
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 90
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001d

    .line 91
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 94
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$Fcx7-UOqeX9iOpLAlqjKXuTWz68;

    invoke-direct {v1, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$Fcx7-UOqeX9iOpLAlqjKXuTWz68;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$iwUX725PAqbNP-QPbFJ8RWdvRXQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$iwUX725PAqbNP-QPbFJ8RWdvRXQ;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 99
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->primaryContainer:Landroid/view/View;

    const v1, 0x7f100078

    .line 100
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f10007a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroid/app/Activity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 103
    new-instance v0, Lorg/wikipedia/views/NonEmptyValidator;

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButton:Landroid/widget/Button;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/views/NonEmptyValidator;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 106
    new-instance v0, Lorg/wikipedia/views/NonEmptyValidator;

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountButtonCaptcha:Landroid/widget/Button;

    new-array v3, v6, [Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/views/NonEmptyValidator;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 109
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaText:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$zaZWG1eyOlj4PTzM9RzBQLKST5s;

    invoke-direct {v1, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$zaZWG1eyOlj4PTzM9RzBQLKST5s;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameTextWatcher:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/createaccount/CreateAccountResult;

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountResult:Lorg/wikipedia/createaccount/CreateAccountResult;

    .line 123
    :cond_0
    new-instance v0, Lorg/wikipedia/analytics/CreateAccountFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "login_request_source"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/analytics/CreateAccountFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->funnel:Lorg/wikipedia/analytics/CreateAccountFunnel;

    if-nez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "login_session_token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/CreateAccountFunnel;->logStart(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method onCreateAccountClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->validateThenCreateAccount()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 246
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->dispose()V

    .line 247
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->userNameTextWatcher:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method onForgotPasswordClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 150
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    const-string v2, "Special:PasswordReset"

    invoke-direct {v0, v2, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 151
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method onLoginClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x3

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method onPrivacyPolicyClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 146
    invoke-static {p0}, Lorg/wikipedia/util/FeedbackUtil;->showPrivacyPolicy(Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity;->createAccountResult:Lorg/wikipedia/createaccount/CreateAccountResult;

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 240
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onStop()V

    return-void
.end method
