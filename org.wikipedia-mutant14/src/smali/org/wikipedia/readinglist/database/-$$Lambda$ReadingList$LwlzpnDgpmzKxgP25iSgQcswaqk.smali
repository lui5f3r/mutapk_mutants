.class public final synthetic Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;

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

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-static {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingList;->lambda$sort$5(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;)I

    move-result p1

    return p1
.end method
