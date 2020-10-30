.class public Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "AlphaUpdateChecker.java"


# static fields
.field private static final ALPHA_BUILD_APK_URL:Ljava/lang/String; = "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/app-alpha-universal-release.apk"

.field private static final ALPHA_BUILD_DATA_URL:Ljava/lang/String; = "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/rev-hash.txt"

.field private static final CHANNEL_ID:Ljava/lang/String; = "ALPHA_UPDATE_CHECKER_CHANNEL"

.field private static final PREFERENCE_KEY_ALPHA_COMMIT:Ljava/lang/String; = "alpha_last_checked_commit"

.field private static final RUN_INTERVAL_MILLI:J


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->RUN_INTERVAL_MILLI:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/wikipedia/recurring/RecurringTask;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    return-void
.end method

.method private showNotification()V
    .locals 6

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/app-alpha-universal-release.apk"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    iget-object v1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "notification"

    const-string v3, "ALPHA_UPDATE_CHECKER_CHANNEL"

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    .line 73
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "Alpha updates"

    invoke-direct {v1, v3, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 74
    iget-object v4, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 78
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const v4, 0x7f100035

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const v4, 0x7f100034

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    .line 82
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f08012f

    .line 84
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    iget-object v3, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 87
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "alpha-update-checker"

    return-object v0
.end method

.method protected run(Ljava/util/Date;)V
    .locals 2

    const/4 p1, 0x0

    .line 50
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/rev-hash.txt"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 51
    invoke-static {}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_0
    const-string p1, "alpha_last_checked_commit"

    const-string v1, ""

    .line 61
    invoke-static {p1, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-direct {p0}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->showNotification()V

    .line 64
    :cond_1
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 60
    :cond_2
    throw v0

    :catch_0
    nop

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_3
    return-void
.end method

.method protected shouldRun(Ljava/util/Date;)Z
    .locals 4

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->RUN_INTERVAL_MILLI:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
