.class public final synthetic Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/login/LoginResult;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;->f$0:Lorg/wikipedia/login/LoginResult;

    iput-object p2, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;->f$0:Lorg/wikipedia/login/LoginResult;

    iget-object v1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$rSFMBUXVTA5NpD4Tn5LZh5Vr79U;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/login/LoginClient;->lambda$getExtendedInfo$8(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/login/LoginResult;

    return-object v0
.end method
