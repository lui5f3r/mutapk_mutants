.class public final synthetic Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;

    invoke-direct {v0}, Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;-><init>()V

    sput-object v0, Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;->INSTANCE:Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/util/Pair;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
