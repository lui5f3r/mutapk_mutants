.class Lorg/wikipedia/main/MainFragment$EventBusConsumer;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/main/MainFragment;
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
.field final synthetic this$0:Lorg/wikipedia/main/MainFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/main/MainFragment;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$EventBusConsumer;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment$EventBusConsumer;-><init>(Lorg/wikipedia/main/MainFragment;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 536
    instance-of p1, p1, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    if-eqz p1, :cond_0

    .line 537
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment$EventBusConsumer;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-static {p1}, Lorg/wikipedia/main/MainFragment;->access$500(Lorg/wikipedia/main/MainFragment;)V

    :cond_0
    return-void
.end method
