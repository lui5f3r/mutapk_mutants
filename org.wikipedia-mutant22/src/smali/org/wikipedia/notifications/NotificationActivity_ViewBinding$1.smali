.class Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NotificationActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;Lorg/wikipedia/notifications/NotificationActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;->this$0:Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;->val$target:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;->val$target:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {v0, p1}, Lorg/wikipedia/notifications/NotificationActivity;->onViewArchivedClick(Landroid/view/View;)V

    return-void
.end method