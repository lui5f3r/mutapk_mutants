.class public Lorg/wikipedia/notifications/Notification$Timestamp;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timestamp"
.end annotation


# instance fields
.field private utciso8601:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/notifications/Notification$Timestamp;)Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/wikipedia/notifications/Notification$Timestamp;->utciso8601:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public date()Ljava/util/Date;
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Timestamp;->utciso8601:Ljava/lang/String;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 138
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
