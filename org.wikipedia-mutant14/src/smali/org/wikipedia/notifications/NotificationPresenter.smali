.class public final Lorg/wikipedia/notifications/NotificationPresenter;
.super Ljava/lang/Object;
.source "NotificationPresenter.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "MEDIAWIKI_ECHO_CHANNEL"

.field private static final REQUEST_CODE_ACTION:I = 0x1

.field private static final REQUEST_CODE_ACTIVITY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V
    .locals 3

    .line 130
    new-instance v0, Landroid/content/Intent;

    .line 131
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "viewFromNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 130
    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 134
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getTooltip()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 135
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getTooltip()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p3, 0x0

    .line 139
    invoke-virtual {p1, p3, p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static addActionForTalkPage(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V
    .locals 2

    .line 143
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;->titleForUri(Landroid/net/Uri;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 145
    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 148
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Link;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static drawNotificationBitmap(Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v0, 0x41a00000    # 20.0f

    .line 152
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    .line 153
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    .line 154
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 155
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 157
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p3, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    const v5, 0x106000d

    .line 158
    :goto_0
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v0

    .line 159
    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    const p1, 0x106000b

    .line 160
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/wikipedia/util/ResourceUtil;->bitmapFromVectorDrawable(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 161
    new-instance p1, Landroid/graphics/Rect;

    sub-int p2, v0, v1

    add-int/2addr v0, v1

    invoke-direct {p1, p2, p2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    invoke-virtual {v3, p0, p2, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static getDefaultBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    const-string v0, "notification"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const-string v3, "MEDIAWIKI_ECHO_CHANNEL"

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 100
    new-instance v4, Landroid/app/NotificationChannel;

    const v5, 0x7f1001df

    .line 101
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v1, 0x7f06001b

    .line 102
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 103
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 107
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 108
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public static showMultipleUnread(Landroid/content/Context;I)V
    .locals 10

    .line 88
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v0, 0x7f100039

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f1001e0

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    const/4 v2, 0x0

    const p1, 0x7f0800fb

    const v7, 0x7f06001b

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, v6

    move v6, p1

    .line 89
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIZLandroid/content/Intent;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIZLandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 117
    invoke-static {p0, v0, p9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p9

    invoke-virtual {p1, p9}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    invoke-static {p0, p7, p6, p8}, Lorg/wikipedia/notifications/NotificationPresenter;->drawNotificationBitmap(Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    const p6, 0x7f080133

    .line 119
    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    invoke-static {p0, p7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p6

    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 122
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance p3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 123
    invoke-virtual {p3, p5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "notification"

    .line 125
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 126
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Lorg/wikipedia/notifications/Notification;Ljava/lang/String;)V
    .locals 10

    .line 40
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getHeader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    const-string v2, "edit-user-talk"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/Notification$Link;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/Notification$Link;

    move-result-object v0

    invoke-static {p0, v1, v0, v3}, Lorg/wikipedia/notifications/NotificationPresenter;->addActionForTalkPage(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/Notification$Link;

    move-result-object v0

    invoke-static {p0, v1, v0, v3}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 54
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification$Link;

    const/4 v4, 0x2

    invoke-static {p0, v1, v0, v4}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V

    .line 56
    :cond_3
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 58
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification$Link;

    const/4 v3, 0x3

    invoke-static {p0, v1, v0, v3}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/Notification$Link;I)V

    .line 61
    :cond_4
    invoke-static {p0}, Lorg/wikipedia/notifications/NotificationActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 63
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f06001b

    if-eqz v2, :cond_5

    const v0, 0x7f0800b8

    const v6, 0x7f0800b8

    :goto_2
    const v7, 0x7f06001b

    goto :goto_3

    :cond_5
    const-string v2, "reverted"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v0, 0x7f08010a

    const v2, 0x7f06002e

    const v6, 0x7f08010a

    const v7, 0x7f06002e

    goto :goto_3

    :cond_6
    const-string v2, "edit-thank"

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f08012e

    const v2, 0x7f060086

    const v6, 0x7f08012e

    const v7, 0x7f060086

    goto :goto_3

    :cond_7
    const-string v2, "thank-you-edit"

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v0, 0x7f0800b7

    const v6, 0x7f0800b7

    goto :goto_2

    :cond_8
    const-string v2, "mention"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v0, 0x7f0800ee

    const v6, 0x7f0800ee

    goto :goto_2

    :cond_9
    const-string v2, "login-fail"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f08012d

    const v2, 0x7f060028

    const v6, 0x7f08012d

    const v7, 0x7f060028

    goto :goto_3

    :cond_a
    const v0, 0x7f080118

    const v6, 0x7f080118

    goto :goto_2

    .line 84
    :goto_3
    invoke-virtual {p1}, Lorg/wikipedia/notifications/Notification;->key()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, v5

    invoke-static/range {v0 .. v9}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIZLandroid/content/Intent;)V

    return-void
.end method
