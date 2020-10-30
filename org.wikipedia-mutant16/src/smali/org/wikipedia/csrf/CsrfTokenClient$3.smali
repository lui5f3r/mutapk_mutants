.class Lorg/wikipedia/csrf/CsrfTokenClient$3;
.super Ljava/lang/Object;
.source "CsrfTokenClient.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/csrf/CsrfTokenClient;->requestToken(Lorg/wikipedia/dataclient/Service;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)Lretrofit2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

.field final synthetic val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# direct methods
.method constructor <init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$3;->this$0:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$3;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$3;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-interface {p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->failure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$3;->val$cb:Lorg/wikipedia/csrf/CsrfTokenClient$Callback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$Callback;->success(Ljava/lang/String;)V

    return-void
.end method
