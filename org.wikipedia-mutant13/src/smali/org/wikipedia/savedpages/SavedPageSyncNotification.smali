.class public final Lorg/wikipedia/savedpages/SavedPageSyncNotification;
.super Landroid/content/BroadcastReceiver;
.source "SavedPageSyncNotification.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "SYNCING_CHANNEL"

.field private static final INSTANCE:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

.field private static final NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private notification:Lorg/wikipedia/views/NotificationWithProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-direct {v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;-><init>()V

    sput-object v0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->INSTANCE:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-direct {v0}, Lorg/wikipedia/views/NotificationWithProgressBar;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const-string v1, "SYNCING_CHANNEL"

    .line 22
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelId(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationId(I)V

    .line 24
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelName(I)V

    .line 25
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f1001dd

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelDescription(I)V

    .line 26
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x1080081

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationIcon(I)V

    .line 27
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationTitle(I)V

    .line 28
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationDescription(I)V

    .line 29
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setEnableCancelButton(Z)V

    .line 30
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setEnablePauseButton(Z)V

    .line 31
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const-class v1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setTargetClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;
    .locals 1

    .line 35
    sget-object v0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->INSTANCE:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    return-void
.end method

.method public isSyncCanceled()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0}, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isSyncPaused()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0}, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "syncCancel"

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 41
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    .line 44
    :cond_0
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncCanceled(Z)V

    .line 45
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncPaused(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "syncPauseResume"

    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncCanceled(Z)V

    .line 48
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->isSyncPaused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncPaused(Z)V

    .line 50
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->getInstance()Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setSyncPaused(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNotificationPaused(Landroid/content/Context;II)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationPaused(Landroid/content/Context;II)V

    return-void
.end method

.method public setNotificationProgress(Landroid/content/Context;II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationProgress(Landroid/content/Context;II)V

    return-void
.end method

.method setSyncCanceled(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setCanceled(Z)V

    return-void
.end method

.method setSyncPaused(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setPaused(Z)V

    return-void
.end method
