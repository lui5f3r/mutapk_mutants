.class public final synthetic Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;

    invoke-direct {v0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;-><init>()V

    sput-object v0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;->INSTANCE:Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDay$eHX5je6Gufxw7HRx2k27NNXY1Ho;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    check-cast p2, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-static {p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDay;->lambda$events$0(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)I

    move-result p1

    return p1
.end method
