.class public final synthetic Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;

    invoke-direct {v0}, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;-><init>()V

    sput-object v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;->INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$1$Z-ly4vCqF6usfmJ_mZQUPhNvZko;

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

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$1;->lambda$success$0(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method
