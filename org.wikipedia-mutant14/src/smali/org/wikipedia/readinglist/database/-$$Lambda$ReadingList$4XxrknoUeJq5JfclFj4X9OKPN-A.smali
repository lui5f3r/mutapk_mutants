.class public final synthetic Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;

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

    invoke-static {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingList;->lambda$sortGenericList$9(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
