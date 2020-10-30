.class public final synthetic Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;

    invoke-direct {v0}, Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;-><init>()V

    sput-object v0, Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;->INSTANCE:Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;

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

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    invoke-static {p1}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
