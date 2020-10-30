.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    invoke-direct {v0}, Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;-><init>()V

    sput-object v0, Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method
