.class public final Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;
.super Ljava/lang/Object;
.source "TestStubInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;,
        Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;
    }
.end annotation


# static fields
.field private static CALLBACK:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;

.field public static final Companion:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->Companion:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCALLBACK$cp()Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;
    .locals 1

    .line 7
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->CALLBACK:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;

    return-object v0
.end method

.method public static final synthetic access$setCALLBACK$cp(Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;)V
    .locals 0

    .line 7
    sput-object p0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->CALLBACK:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->CALLBACK:Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;->getResponse(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    :goto_0
    return-object p1
.end method
