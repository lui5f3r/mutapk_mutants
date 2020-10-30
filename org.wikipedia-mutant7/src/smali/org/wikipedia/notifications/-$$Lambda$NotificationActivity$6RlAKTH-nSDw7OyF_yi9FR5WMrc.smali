.class public final synthetic Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;

    invoke-direct {v0}, Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;-><init>()V

    sput-object v0, Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;->INSTANCE:Lorg/wikipedia/notifications/-$$Lambda$NotificationActivity$6RlAKTH-nSDw7OyF_yi9FR5WMrc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/wikipedia/notifications/Notification;

    check-cast p2, Lorg/wikipedia/notifications/Notification;

    invoke-static {p1, p2}, Lorg/wikipedia/notifications/NotificationActivity;->lambda$postprocessAndDisplay$5(Lorg/wikipedia/notifications/Notification;Lorg/wikipedia/notifications/Notification;)I

    move-result p1

    return p1
.end method
