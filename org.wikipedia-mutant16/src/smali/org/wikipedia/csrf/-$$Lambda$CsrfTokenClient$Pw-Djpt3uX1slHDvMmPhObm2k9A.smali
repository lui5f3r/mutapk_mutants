.class public final synthetic Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/csrf/CsrfTokenClient$RetryCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/csrf/CsrfTokenClient;

.field public final synthetic f$1:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;->f$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object p2, p0, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;->f$1:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    return-void
.end method


# virtual methods
.method public final retry()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;->f$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v1, p0, Lorg/wikipedia/csrf/-$$Lambda$CsrfTokenClient$Pw-Djpt3uX1slHDvMmPhObm2k9A;->f$1:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-virtual {v0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->lambda$retryWithLogin$0$CsrfTokenClient(Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method
