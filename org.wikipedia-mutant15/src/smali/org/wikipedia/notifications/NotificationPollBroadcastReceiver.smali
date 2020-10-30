.class public Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationPollBroadcastReceiver.java"


# static fields
.field public static final ACTION_POLL:Ljava/lang/String; = "action_notification_poll"

.field private static final FIRST_EDITOR_REACTIVATION_NOTIFICATION_SHOW_ON_DAY:I = 0x3

.field private static final MAX_LOCALLY_KNOWN_NOTIFICATIONS:I = 0x20

.field private static final SECOND_EDITOR_REACTIVATION_NOTIFICATION_SHOW_ON_DAY:I = 0x7


# instance fields
.field private dbNameWikiNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dbNameWikiSiteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ">;"
        }
    .end annotation
.end field

.field private locallyKnownNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiSiteMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiNameMap:Ljava/util/Map;

    return-void
.end method

.method private static getAlarmPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_notification_poll"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 101
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getFullNotifications(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "*"

    goto :goto_0

    :cond_0
    const-string v1, "|"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    const-string v2, "!read"

    invoke-interface {v0, p2, v2, v1}, Lorg/wikipedia/dataclient/Service;->getAllNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 165
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 166
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$LX6UyBH-Tdeu8_sZ2gbQsQbHRWk;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$LX6UyBH-Tdeu8_sZ2gbQsQbHRWk;-><init>(Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;Landroid/content/Context;)V

    sget-object p1, Lorg/wikipedia/notifications/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 167
    invoke-virtual {p2, v0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method static synthetic lambda$assertLoggedIn$2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 137
    invoke-virtual {v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getTokenBlocking()Ljava/lang/String;

    return-void
.end method

.method private markItemsAsRead(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/notifications/Notification;

    .line 224
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiSiteMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiSiteMap:Ljava/util/Map;

    .line 225
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    .line 226
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->markRead(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static markRead(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "|"

    .line 238
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 240
    new-instance v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(Lorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method private maybeShowLocalNotificationForEditorReactivation(Landroid/content/Context;)V
    .locals 7

    .line 252
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastDescriptionEditTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 253
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isAnyActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastDescriptionEditTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 257
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationTestEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLastDescriptionEditTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    :cond_1
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x7

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    .line 261
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationPassStageOne()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsReactivationPassStageOne(Z)V

    const v0, 0x7f100406

    .line 263
    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    .line 264
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationPassStageOne()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 265
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsReactivationPassStageOne(Z)V

    const v0, 0x7f100407

    .line 266
    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onNotificationsComplete(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsHighestPriorityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 176
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/notifications/Notification;

    .line 180
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v6, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification;->key()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification;->key()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 186
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    .line 192
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v4, 0x2

    if-le p2, v4, :cond_4

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lorg/wikipedia/notifications/NotificationPresenter;->showMultipleUnread(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 195
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/notifications/Notification;

    .line 197
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "system"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationWelcomeEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 198
    :cond_6
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "edit-thank"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationThanksEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 199
    :cond_7
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "thank-you-edit"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationMilestoneEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 200
    :cond_8
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "reverted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationRevertEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 201
    :cond_9
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "edit-user-talk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationUserTalkEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 202
    :cond_a
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "login-fail"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationLoginFailEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 203
    :cond_b
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v4

    const-string v6, "mention"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationMentionEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 204
    :cond_c
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->showAllNotifications()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    :cond_d
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiNameMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiNameMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {p1, v1, v4}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Lorg/wikipedia/notifications/Notification;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    :goto_3
    if-eqz v3, :cond_10

    .line 212
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setLocallyKnownNotifications(Ljava/util/List;)V

    .line 215
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_11

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->markItemsAsRead(Ljava/util/List;)V

    :cond_11
    :goto_4
    return-void
.end method

.method private pollNotifications(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getLastUnreadNotification()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$bVAFmC-ABS0jPmp53mjjKxXetug;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$bVAFmC-ABS0jPmp53mjjKxXetug;-><init>(Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;Landroid/content/Context;)V

    new-instance p1, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$evXeK1ICvK6C0XanPuqQoZH02no;

    invoke-direct {p1, p0}, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$evXeK1ICvK6C0XanPuqQoZH02no;-><init>(Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;)V

    .line 109
    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private retrieveNotifications(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiSiteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getUnreadNotificationWikis()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 146
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 147
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$ZuKKxBrSwH05zQlsi6yfPRU40y4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$ZuKKxBrSwH05zQlsi6yfPRU40y4;-><init>(Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;Landroid/content/Context;)V

    sget-object p1, Lorg/wikipedia/notifications/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 148
    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static showSuggestedEditsLocalNotification(Landroid/content/Context;I)V
    .locals 13

    .line 271
    invoke-static {p0}, Lorg/wikipedia/main/MainActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goToSETab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    .line 272
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v0, 0x7f100408

    .line 273
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const v9, 0x7f0800f2

    const v10, 0x7f06001b

    const/4 v11, 0x0

    move-object v3, p0

    .line 272
    invoke-static/range {v3 .. v12}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIZLandroid/content/Intent;)V

    return-void
.end method

.method public static startPollTask(Landroid/content/Context;)V
    .locals 8

    const-string v0, "alarm"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 83
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationTestEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isDevRelease()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0xa

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    div-int/2addr v5, v6

    int-to-long v5, v5

    .line 82
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 84
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->getAlarmPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 80
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 89
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static stopPollTask(Landroid/content/Context;)V
    .locals 1

    const-string v0, "alarm"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 95
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->getAlarmPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public assertLoggedIn()V
    .locals 2

    .line 136
    sget-object v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$EuXa6aiFnNL0_nS-js9AXoMjr-A;->INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$NotificationPollBroadcastReceiver$EuXa6aiFnNL0_nS-js9AXoMjr-A;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 137
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$getFullNotifications$4$NotificationPollBroadcastReceiver(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->onNotificationsComplete(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$pollNotifications$0$NotificationPollBroadcastReceiver(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification;

    .line 114
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getUtcIso8601()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getUtcIso8601()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRemoteNotificationsSeenTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_2

    return-void

    .line 123
    :cond_2
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setRemoteNotificationsSeenTime(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->retrieveNotifications(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$pollNotifications$1$NotificationPollBroadcastReceiver(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    instance-of v0, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwException;->getError()Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login-required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->assertLoggedIn()V

    .line 129
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$retrieveNotifications$3$NotificationPollBroadcastReceiver(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis()Ljava/util/Map;

    move-result-object p2

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;

    invoke-virtual {v3}, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;->getSource()Lorg/wikipedia/notifications/Notification$Source;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiSiteMap:Ljava/util/Map;

    new-instance v4, Lorg/wikipedia/dataclient/WikiSite;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;

    invoke-virtual {v5}, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;->getSource()Lorg/wikipedia/notifications/Notification$Source;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/notifications/Notification$Source;->getBase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->dbNameWikiNameMap:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;->getSource()Lorg/wikipedia/notifications/Notification$Source;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Source;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->getFullNotifications(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/wikipedia/util/ReleaseUtil;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->startPollTask(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "action_notification_poll"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 62
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->maybeShowLocalNotificationForEditorReactivation(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->notificationPollEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 72
    :cond_2
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getLocallyKnownNotifications()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->locallyKnownNotifications:Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->pollNotifications(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
