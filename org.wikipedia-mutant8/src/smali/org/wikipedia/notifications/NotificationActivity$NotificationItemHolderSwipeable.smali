.class Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;
.super Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;
.source "NotificationActivity.java"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationItemHolderSwipeable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 568
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onSwipe()V
    .locals 3

    .line 572
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/wikipedia/notifications/NotificationActivity;->access$900(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;Z)V

    return-void
.end method
