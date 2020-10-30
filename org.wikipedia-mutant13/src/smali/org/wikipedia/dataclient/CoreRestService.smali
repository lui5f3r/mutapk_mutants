.class public interface abstract Lorg/wikipedia/dataclient/CoreRestService;
.super Ljava/lang/Object;
.source "CoreRestService.java"


# static fields
.field public static final CORE_REST_API_PREFIX:Ljava/lang/String; = "/w/rest.php/v1/"


# virtual methods
.method public abstract getDiff(JJ)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "oldRev"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "newRev"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "revision/{oldRev}/compare/{newRev}"
    .end annotation
.end method
