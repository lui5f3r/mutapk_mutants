.class public final synthetic Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;

    invoke-direct {v0}, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;-><init>()V

    sput-object v0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;->INSTANCE:Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$zk3B5uWjztWmk2RDNJLL7wJpJaQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-static {p1}, Lorg/wikipedia/feed/random/RandomCardView;->lambda$getRandomPage$0(Lorg/wikipedia/dataclient/page/PageSummary;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    return-object p1
.end method
