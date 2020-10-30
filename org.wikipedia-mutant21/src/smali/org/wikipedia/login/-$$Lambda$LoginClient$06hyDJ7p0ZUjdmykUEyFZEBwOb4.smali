.class public final synthetic Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;

    invoke-direct {v0}, Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;-><init>()V

    sput-object v0, Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;->INSTANCE:Lorg/wikipedia/login/-$$Lambda$LoginClient$06hyDJ7p0ZUjdmykUEyFZEBwOb4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->lambda$getLoginToken$7(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
