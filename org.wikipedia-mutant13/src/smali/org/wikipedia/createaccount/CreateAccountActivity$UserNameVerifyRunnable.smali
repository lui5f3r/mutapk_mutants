.class Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/createaccount/CreateAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserNameVerifyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

.field private userName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lorg/wikipedia/createaccount/CreateAccountActivity$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$CreateAccountActivity$UserNameVerifyRunnable(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->getUserResponse(Ljava/lang/String;)Lorg/wikipedia/dataclient/mwapi/ListUserResponse;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    iget-object v0, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 391
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->handleAccountCreationError(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->canCreate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 394
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    iget-object v0, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f100082

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->userName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 385
    iget-object v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-static {v0}, Lorg/wikipedia/createaccount/CreateAccountActivity;->access$400(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-static {v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->access$300(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->userName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/Service;->getUserList(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 386
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 387
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$UserNameVerifyRunnable$k2HwSA_Bw2acFsYnyNSXuxOp74g;

    invoke-direct {v2, p0}, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$UserNameVerifyRunnable$k2HwSA_Bw2acFsYnyNSXuxOp74g;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;)V

    sget-object v3, Lorg/wikipedia/createaccount/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/createaccount/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 388
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->userName:Ljava/lang/String;

    return-void
.end method
