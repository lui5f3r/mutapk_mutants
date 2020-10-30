.class public final synthetic Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/login/LoginClient;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/wikipedia/login/LoginClient$LoginCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/LoginClient;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$0:Lorg/wikipedia/login/LoginClient;

    iput-object p2, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    iput-object p3, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$4:Lorg/wikipedia/login/LoginClient$LoginCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$0:Lorg/wikipedia/login/LoginClient;

    iget-object v1, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    iget-object v2, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/wikipedia/login/-$$Lambda$LoginClient$X7JzL-5rWMS-9RGRHsWHL0tuk2Y;->f$4:Lorg/wikipedia/login/LoginClient$LoginCallback;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/login/LoginClient;->lambda$request$0$LoginClient(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/login/LoginClient$LoginCallback;Ljava/lang/String;)V

    return-void
.end method
