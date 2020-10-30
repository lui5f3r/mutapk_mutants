.class public Lorg/wikipedia/feed/model/UtcDate;
.super Ljava/lang/Object;
.source "UtcDate.java"


# instance fields
.field private cal:Ljava/util/Calendar;

.field private date:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTC"

    .line 16
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/model/UtcDate;->cal:Ljava/util/Calendar;

    neg-int p1, p1

    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 18
    iget-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->cal:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->year:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/feed/model/UtcDate;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->month:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->cal:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/feed/model/UtcDate;->pad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/model/UtcDate;->date:Ljava/lang/String;

    return-void
.end method

.method private pad(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public baseCalendar()Ljava/util/Calendar;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/wikipedia/feed/model/UtcDate;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method public date()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/feed/model/UtcDate;->date:Ljava/lang/String;

    return-object v0
.end method

.method public month()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/feed/model/UtcDate;->month:Ljava/lang/String;

    return-object v0
.end method

.method public year()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/wikipedia/feed/model/UtcDate;->year:Ljava/lang/String;

    return-object v0
.end method
