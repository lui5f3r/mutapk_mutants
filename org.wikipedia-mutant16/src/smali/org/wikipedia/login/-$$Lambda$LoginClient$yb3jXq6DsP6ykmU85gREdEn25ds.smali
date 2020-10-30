.class public final synthetic Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    iput-object p2, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    iget-object v1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$yb3jXq6DsP6ykmU85gREdEn25ds;->f$1:Ljava/lang/String;

    check-cast p1, Lorg/wikipedia/login/LoginClient$LoginResponse;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/login/LoginClient;->lambda$loginBlocking$5(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginResponse;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method
