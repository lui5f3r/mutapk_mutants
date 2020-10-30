.class public Lorg/wikipedia/captcha/CaptchaHandler;
.super Ljava/lang/Object;
.source "CaptchaHandler.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final captchaContainer:Landroid/view/View;

.field private final captchaImage:Landroid/widget/ImageView;

.field private final captchaProgress:Landroid/view/View;

.field private captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

.field private final captchaText:Landroid/widget/EditText;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final prevTitle:Ljava/lang/String;

.field private final primaryView:Landroid/view/View;

.field private token:Ljava/lang/String;

.field private final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 47
    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 49
    iput-object p3, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    .line 50
    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->prevTitle:Ljava/lang/String;

    const p3, 0x7f09034a

    .line 52
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p4, 0x7f090099

    .line 53
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaContainer:Landroid/view/View;

    const p4, 0x7f09009a

    .line 54
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaImage:Landroid/widget/ImageView;

    const p4, 0x7f09009d

    .line 55
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p4

    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaText:Landroid/widget/EditText;

    const p4, 0x7f09009b

    .line 56
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaProgress:Landroid/view/View;

    const p4, 0x7f09009c

    .line 57
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    if-eqz p5, :cond_0

    .line 60
    invoke-virtual {p4, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p5, 0x0

    .line 61
    invoke-virtual {p4, p5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p4, 0x7f1000ef

    .line 64
    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance p4, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance p5, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$3j2MoofzOc6XcZLrvR8epUV6nuE;

    invoke-direct {p5, p1}, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$3j2MoofzOc6XcZLrvR8epUV6nuE;-><init>(Landroid/app/Activity;)V

    invoke-direct {p4, p5}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    iget-object p3, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaImage:Landroid/widget/ImageView;

    new-instance p4, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;

    invoke-direct {p4, p0, p2, p1}, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;-><init>(Lorg/wikipedia/captcha/CaptchaHandler;Lorg/wikipedia/dataclient/WikiSite;Landroid/app/Activity;)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleCaptcha(Z)V
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaContainer:Landroid/view/View;

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 140
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0, v1}, Lorg/wikipedia/captcha/CaptchaResult;->getCaptchaUrl(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p0}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppRequestAnAccount(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancelCaptcha()V
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 155
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->hideCaptcha()V

    return-void
.end method

.method public captchaId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaResult;->getCaptchaId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public captchaWord()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public handleCaptcha(Ljava/lang/String;Lorg/wikipedia/captcha/CaptchaResult;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    const/4 p1, 0x0

    .line 128
    invoke-direct {p0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    return-void
.end method

.method public hideCaptcha()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->activity:Landroid/app/Activity;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->prevTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/captcha/CaptchaHandler;->primaryView:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$4$CaptchaHandler(Lorg/wikipedia/dataclient/WikiSite;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p3, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaProgress:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p3, p0, Lorg/wikipedia/captcha/CaptchaHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/dataclient/Service;->getNewCaptcha()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 70
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 71
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$uOzSQelX0d6hHirU3k2L61ephT8;

    invoke-direct {v0, p0}, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$uOzSQelX0d6hHirU3k2L61ephT8;-><init>(Lorg/wikipedia/captcha/CaptchaHandler;)V

    .line 72
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$8n3InU5jjhe4I0BLJk1EsoVxOUY;

    invoke-direct {v0, p0}, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$8n3InU5jjhe4I0BLJk1EsoVxOUY;-><init>(Lorg/wikipedia/captcha/CaptchaHandler;)V

    new-instance v1, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$aLyHcpn7y_B5GRujcFyBwhOMlZQ;

    invoke-direct {v1, p0, p2}, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$aLyHcpn7y_B5GRujcFyBwhOMlZQ;-><init>(Lorg/wikipedia/captcha/CaptchaHandler;Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 69
    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public synthetic lambda$null$1$CaptchaHandler()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$null$2$CaptchaHandler(Lorg/wikipedia/captcha/Captcha;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-virtual {p1}, Lorg/wikipedia/captcha/Captcha;->captchaId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    return-void
.end method

.method public synthetic lambda$null$3$CaptchaHandler(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 78
    invoke-static {p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "token"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "captcha"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Ljava/lang/String;Lorg/wikipedia/captcha/CaptchaResult;)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    const-string v1, "captcha"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public token()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    return-object v0
.end method
