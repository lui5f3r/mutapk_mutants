.class Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/activity/BaseActivity$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 245
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    iget-object p2, p0, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-static {p2}, Lorg/wikipedia/activity/BaseActivity;->access$300(Lorg/wikipedia/activity/BaseActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 249
    iget-object p2, p0, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-virtual {p2}, Lorg/wikipedia/activity/BaseActivity;->onGoOnline()V

    .line 251
    :cond_0
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-virtual {p2}, Lorg/wikipedia/activity/BaseActivity;->onGoOffline()V

    .line 256
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/activity/BaseActivity$NetworkStateReceiver;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-static {p2, p1}, Lorg/wikipedia/activity/BaseActivity;->access$302(Lorg/wikipedia/activity/BaseActivity;Z)Z

    return-void
.end method
