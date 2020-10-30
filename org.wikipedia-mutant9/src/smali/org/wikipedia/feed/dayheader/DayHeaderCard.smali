.class public Lorg/wikipedia/feed/dayheader/DayHeaderCard;
.super Lorg/wikipedia/feed/model/Card;
.source "DayHeaderCard.java"


# instance fields
.field private age:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 13
    iput p1, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCard;->age:I

    return-void
.end method


# virtual methods
.method public title()Ljava/lang/String;
    .locals 1

    .line 17
    iget v0, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCard;->age:I

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDayHeaderDate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 21
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->DAY_HEADER:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
