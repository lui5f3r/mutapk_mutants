.class public final synthetic Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;

    invoke-direct {v0}, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;-><init>()V

    sput-object v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;->INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/wikipedia/feed/configure/FeedAvailability;

    invoke-static {p1}, Lorg/wikipedia/feed/configure/ConfigureFragment;->lambda$onCreateView$0(Lorg/wikipedia/feed/configure/FeedAvailability;)V

    return-void
.end method
