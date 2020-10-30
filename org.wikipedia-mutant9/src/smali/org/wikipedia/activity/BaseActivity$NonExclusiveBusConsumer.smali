.class Lorg/wikipedia/activity/BaseActivity$NonExclusiveBusConsumer;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonExclusiveBusConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$NonExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/activity/BaseActivity$1;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lorg/wikipedia/activity/BaseActivity$NonExclusiveBusConsumer;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 292
    instance-of p1, p1, Lorg/wikipedia/events/ThemeChangeEvent;

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lorg/wikipedia/activity/BaseActivity$NonExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method
