.class public Lorg/wikipedia/login/LoginActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/login/LoginActivity$LoginCallback;
    }
.end annotation


# static fields
.field public static final EDIT_SESSION_TOKEN:Ljava/lang/String; = "edit_session_token"

.field public static final LOGIN_REQUEST_SOURCE:Ljava/lang/String; = "login_request_source"

.field public static final RESULT_LOGIN_FAIL:I = 0x2

.field public static final RESULT_LOGIN_SUCCESS:I = 0x1


# instance fields
.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private firstStepToken:Ljava/lang/String;

.field private funnel:Lorg/wikipedia/analytics/LoginFunnel;

.field loginButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

.field private loginClient:Lorg/wikipedia/login/LoginClient;

.field private loginSource:Ljava/lang/String;

.field passwordInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shouldLogLogin:Z

.field twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field usernameInput:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    invoke-direct {v0}, Lorg/wikipedia/login/LoginClient;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    .line 64
    new-instance v0, Lorg/wikipedia/login/LoginActivity$LoginCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/login/LoginActivity$LoginCallback;-><init>(Lorg/wikipedia/login/LoginActivity;Lorg/wikipedia/login/LoginActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lorg/wikipedia/login/LoginActivity;->shouldLogLogin:Z

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/login/LoginActivity;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginActivity;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/login/LoginActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->onLoginSuccess()V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/login/LoginActivity;)Lorg/wikipedia/analytics/LoginFunnel;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    return-object p0
.end method

.method static synthetic access$402(Lorg/wikipedia/login/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lorg/wikipedia/login/LoginActivity;Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/login/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/wikipedia/login/LoginActivity;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearErrors()V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method private doLogin()V
    .locals 9

    .line 213
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/login/LoginActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/login/LoginActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v4

    .line 215
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->twoFactorText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0}, Lorg/wikipedia/login/LoginActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    .line 217
    invoke-direct {p0, v0}, Lorg/wikipedia/login/LoginActivity;->showProgressBar(Z)V

    .line 219
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/wikipedia/login/LoginActivity;->firstStepToken:Ljava/lang/String;

    iget-object v8, p0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    invoke-virtual/range {v1 .. v8}, Lorg/wikipedia/login/LoginClient;->login(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/login/LoginActivity;->loginCallback:Lorg/wikipedia/login/LoginActivity$LoginCallback;

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/wikipedia/login/LoginClient;->request(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V

    :goto_0
    return-void
.end method

.method private getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 1

    .line 133
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

.method private logLoginStart()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lorg/wikipedia/login/LoginActivity;->shouldLogLogin:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "edit_session_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/LoginFunnel;->logStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/LoginFunnel;->logStart(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lorg/wikipedia/login/LoginActivity;->shouldLogLogin:Z

    :cond_1
    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "login_request_source"

    .line 75
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "edit_session_token"

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private onLoginSuccess()V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/LoginFunnel;->logSuccess()V

    .line 176
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 182
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 185
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSyncWithForce()V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showError(Ljava/lang/Throwable;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 302
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const p1, 0x7f100174

    goto :goto_1

    :cond_1
    const p1, 0x7f100190

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private startCreateAccountActivity()V
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/LoginFunnel;->logCreateAccountAttempt()V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    invoke-virtual {v1}, Lorg/wikipedia/analytics/LoginFunnel;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_session_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    const-string v2, "login_request_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2a

    .line 170
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private validateThenLogin()V
    .locals 2

    .line 142
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->clearErrors()V

    .line 143
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v1}, Lorg/wikipedia/login/LoginActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 145
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f100087

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->doLogin()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$LoginActivity(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$LoginActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 94
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->validateThenLogin()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 191
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_2

    .line 193
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->logLoginStart()V

    if-ne p2, v0, :cond_0

    .line 195
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "username"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "password"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/LoginFunnel;->logCreateAccountSuccess()V

    const p1, 0x7f100077

    .line 198
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    .line 200
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->doLogin()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/LoginFunnel;->logCreateAccountFailure()V

    goto :goto_0

    :cond_2
    const/16 p3, 0x2b

    if-ne p1, p3, :cond_3

    if-ne p2, v0, :cond_3

    .line 208
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->onLoginSuccess()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 283
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 284
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 81
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 82
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 85
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$LoginActivity$BgVvoZ8MFuK-aigPMg3kLKm5vCQ;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$LoginActivity$BgVvoZ8MFuK-aigPMg3kLKm5vCQ;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$LoginActivity$EGaB2hssSGw7rNMLVycVQQPJS5w;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$LoginActivity$EGaB2hssSGw7rNMLVycVQQPJS5w;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance p1, Lorg/wikipedia/views/NonEmptyValidator;

    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lorg/wikipedia/login/LoginActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p1, v0, v2}, Lorg/wikipedia/views/NonEmptyValidator;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 92
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$LoginActivity$I9XC9JAY46Haye_HVgzBo4YJCiQ;

    invoke-direct {v0, p0}, Lorg/wikipedia/login/-$$Lambda$LoginActivity$I9XC9JAY46Haye_HVgzBo4YJCiQ;-><init>(Lorg/wikipedia/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 100
    new-instance p1, Lorg/wikipedia/analytics/LoginFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/wikipedia/analytics/LoginFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity;->funnel:Lorg/wikipedia/analytics/LoginFunnel;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "login_request_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity;->loginSource:Ljava/lang/String;

    const-string v0, "suggestededits"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-static {v4}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsHighestPriorityEnabled(Z)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->startCreateAccountActivity()V

    .line 112
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method onCreateAccountClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 120
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->startCreateAccountActivity()V

    return-void
.end method

.method onForgotPasswordClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 128
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    const-string v2, "Special:PasswordReset"

    invoke-direct {v0, v2, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 129
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method onLoginClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/wikipedia/login/LoginActivity;->validateThenLogin()V

    return-void
.end method

.method onPrivacyPolicyClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 124
    invoke-static {p0}, Lorg/wikipedia/util/FeedbackUtil;->showPrivacyPolicy(Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "loginShowing"

    const/4 v1, 0x1

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lorg/wikipedia/login/LoginActivity;->loginClient:Lorg/wikipedia/login/LoginClient;

    invoke-virtual {v0}, Lorg/wikipedia/login/LoginClient;->cancel()V

    .line 291
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onStop()V

    return-void
.end method
