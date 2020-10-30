.class public final Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;
.super Ljava/lang/Object;
.source "TestStubInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCALLBACK()Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;
    .locals 1

    .line 21
    invoke-static {}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->access$getCALLBACK$cp()Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final setCALLBACK(Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->access$setCALLBACK$cp(Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor$Callback;)V

    return-void
.end method
