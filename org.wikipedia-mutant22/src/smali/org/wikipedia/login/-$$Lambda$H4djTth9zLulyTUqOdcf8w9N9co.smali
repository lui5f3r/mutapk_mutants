.class public final synthetic Lorg/wikipedia/login/-$$Lambda$H4djTth9zLulyTUqOdcf8w9N9co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/login/LoginClient$LoginCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/LoginClient$LoginCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/login/-$$Lambda$H4djTth9zLulyTUqOdcf8w9N9co;->f$0:Lorg/wikipedia/login/LoginClient$LoginCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/login/-$$Lambda$H4djTth9zLulyTUqOdcf8w9N9co;->f$0:Lorg/wikipedia/login/LoginClient$LoginCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lorg/wikipedia/login/LoginClient$LoginCallback;->error(Ljava/lang/Throwable;)V

    return-void
.end method
