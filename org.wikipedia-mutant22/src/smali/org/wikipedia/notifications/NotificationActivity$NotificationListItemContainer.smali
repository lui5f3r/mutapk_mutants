.class Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;
.super Ljava/lang/Object;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationListItemContainer"
.end annotation


# static fields
.field public static final ITEM_DATE_HEADER:I = 0x0

.field public static final ITEM_NOTIFICATION:I = 0x1


# instance fields
.field private date:Ljava/util/Date;

.field private notification:Lorg/wikipedia/notifications/Notification;

.field private selected:Z

.field private final type:I


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->date:Ljava/util/Date;

    const/4 p1, 0x0

    .line 705
    iput p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->type:I

    return-void
.end method

.method constructor <init>(Lorg/wikipedia/notifications/Notification;)V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/Notification;

    const/4 p1, 0x1

    .line 710
    iput p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->type:I

    return-void
.end method

.method static synthetic access$1100(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)I
    .locals 0

    .line 694
    iget p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->type:I

    return p0
.end method

.method static synthetic access$1300(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Ljava/util/Date;
    .locals 0

    .line 694
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Lorg/wikipedia/notifications/Notification;
    .locals 0

    .line 694
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/Notification;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Z
    .locals 0

    .line 694
    iget-boolean p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->selected:Z

    return p0
.end method

.method static synthetic access$402(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;Z)Z
    .locals 0

    .line 694
    iput-boolean p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->selected:Z

    return p1
.end method
