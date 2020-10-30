.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;

    invoke-direct {v0}, Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;-><init>()V

    sput-object v0, Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResults$4RbcNoWY9sTqO-1_Q_QrqSoW6vo;

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

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-static {p1, p2}, Lorg/wikipedia/search/SearchResults;->lambda$new$0(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)I

    move-result p1

    return p1
.end method
