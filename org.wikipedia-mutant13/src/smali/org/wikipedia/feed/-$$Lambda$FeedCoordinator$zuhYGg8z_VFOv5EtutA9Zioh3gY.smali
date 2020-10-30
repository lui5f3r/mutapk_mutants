.class public final synthetic Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;

    invoke-direct {v0}, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;-><init>()V

    sput-object v0, Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;->INSTANCE:Lorg/wikipedia/feed/-$$Lambda$FeedCoordinator$zuhYGg8z_VFOv5EtutA9Zioh3gY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lorg/wikipedia/feed/FeedCoordinator;->lambda$postCardsToCallback$1()V

    return-void
.end method
