.class public final synthetic Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$UserNameVerifyRunnable$k2HwSA_Bw2acFsYnyNSXuxOp74g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$UserNameVerifyRunnable$k2HwSA_Bw2acFsYnyNSXuxOp74g;->f$0:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/createaccount/-$$Lambda$CreateAccountActivity$UserNameVerifyRunnable$k2HwSA_Bw2acFsYnyNSXuxOp74g;->f$0:Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0, p1}, Lorg/wikipedia/createaccount/CreateAccountActivity$UserNameVerifyRunnable;->lambda$run$0$CreateAccountActivity$UserNameVerifyRunnable(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method
