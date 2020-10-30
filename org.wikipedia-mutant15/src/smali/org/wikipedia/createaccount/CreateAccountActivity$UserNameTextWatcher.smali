.class Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/createaccount/CreateAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserNameTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lorg/wikipedia/createaccount/CreateAccountActivity$1;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 363
    iget-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    iget-object p3, p2, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->access$200(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    iget-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    iget-object p2, p2, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 365
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-static {p2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->access$200(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->setUserName(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameTextWatcher;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    iget-object p2, p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->usernameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->access$200(Lorg/wikipedia/createaccount/CreateAccountActivity;)Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
