.class Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;
.super Ljava/lang/Object;
.source "ThemeFittingRoomFragment.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/theme/ThemeFittingRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBusConsumer"
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
.field final synthetic this$0:Lorg/wikipedia/theme/ThemeFittingRoomFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/theme/ThemeFittingRoomFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/theme/ThemeFittingRoomFragment;Lorg/wikipedia/theme/ThemeFittingRoomFragment$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;-><init>(Lorg/wikipedia/theme/ThemeFittingRoomFragment;)V

    return-void
.end method

.method static synthetic lambda$accept$0()V
    .locals 2

    .line 67
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/events/WebViewInvalidateEvent;

    invoke-direct {v1}, Lorg/wikipedia/events/WebViewInvalidateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 65
    instance-of p1, p1, Lorg/wikipedia/events/ChangeTextSizeEvent;

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    invoke-static {p1}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->access$100(Lorg/wikipedia/theme/ThemeFittingRoomFragment;)V

    .line 67
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    iget-object p1, p1, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testText:Landroid/widget/TextView;

    sget-object v0, Lorg/wikipedia/theme/-$$Lambda$ThemeFittingRoomFragment$EventBusConsumer$UAtcNi-pfyMWpYJJYJ4F1LfZi9w;->INSTANCE:Lorg/wikipedia/theme/-$$Lambda$ThemeFittingRoomFragment$EventBusConsumer$UAtcNi-pfyMWpYJJYJ4F1LfZi9w;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
