.class public Lorg/wikipedia/analytics/NotificationFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "NotificationFunnel.java"


# static fields
.field private static final REV_ID:I = 0x117a0e4

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppNotificationInteraction"


# instance fields
.field private final notification:Lorg/wikipedia/notifications/Notification;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/notifications/Notification;)V
    .locals 2

    const-string v0, "MobileWikiAppNotificationInteraction"

    const v1, 0x117a0e4

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;I)V

    .line 18
    iput-object p2, p0, Lorg/wikipedia/analytics/NotificationFunnel;->notification:Lorg/wikipedia/notifications/Notification;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logAction(ILorg/wikipedia/notifications/Notification$Link;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action_rank"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "action_icon"

    aput-object v1, v0, p1

    .line 41
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getIcon()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 39
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logMarkRead(Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "action_rank"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "selection_token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/wikipedia/analytics/NotificationFunnel;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "notification_id"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lorg/wikipedia/analytics/NotificationFunnel;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_wiki"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lorg/wikipedia/analytics/NotificationFunnel;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_type"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
