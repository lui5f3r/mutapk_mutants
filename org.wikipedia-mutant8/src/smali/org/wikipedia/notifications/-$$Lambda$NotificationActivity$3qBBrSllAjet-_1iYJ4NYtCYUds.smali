.class public final synthetic Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$3qBBrSllAjet-_1iYJ4NYtCYUds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$3qBBrSllAjet-_1iYJ4NYtCYUds;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$3qBBrSllAjet-_1iYJ4NYtCYUds;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0, p1}, Lorg/wikipedia/notifications/NotificationActivity;->lambda$beginUpdateList$3$NotificationActivity(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method
