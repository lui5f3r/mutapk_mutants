.class public final synthetic Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$XcUdlzSEN9uFLZ5DtDg1GH15QLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$XcUdlzSEN9uFLZ5DtDg1GH15QLY;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/analytics/-$$Lambda$EventLoggingService$XcUdlzSEN9uFLZ5DtDg1GH15QLY;->f$0:Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/wikipedia/analytics/EventLoggingService;->lambda$log$2(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method
