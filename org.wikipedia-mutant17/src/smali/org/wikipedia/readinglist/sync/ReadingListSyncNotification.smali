.class public final Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;
.super Ljava/lang/Object;
.source "ReadingListSyncNotification.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "READING_LIST_SYNCING_CHANNEL"

.field private static final INSTANCE:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

.field private static final NOTIFICATION_ID:I = 0x3ea


# instance fields
.field private notification:Lorg/wikipedia/views/NotificationWithProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->INSTANCE:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-direct {v0}, Lorg/wikipedia/views/NotificationWithProgressBar;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const-string v1, "READING_LIST_SYNCING_CHANNEL"

    .line 19
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelId(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationId(I)V

    .line 21
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelName(I)V

    .line 22
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setChannelDescription(I)V

    .line 23
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x108005f

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationIcon(I)V

    .line 24
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationTitle(I)V

    .line 25
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationDescription(I)V

    return-void
.end method

.method public static getInstance()Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;
    .locals 1

    .line 29
    sget-object v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->INSTANCE:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    return-void
.end method

.method public setNotificationProgress(Landroid/content/Context;II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationProgress(Landroid/content/Context;II)V

    return-void
.end method
