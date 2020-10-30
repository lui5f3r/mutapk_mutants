.class public final synthetic Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;

    invoke-direct {v0}, Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;-><init>()V

    sput-object v0, Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;->INSTANCE:Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$HEoY_306St2g4xvgCA4iRY6gfLE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lorg/wikipedia/analytics/EventLoggingService;->lambda$log$1()V

    return-void
.end method
