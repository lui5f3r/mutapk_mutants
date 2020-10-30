.class public Lorg/wikipedia/readinglist/database/ReadingList;
.super Ljava/lang/Object;
.source "ReadingList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListTable;

.field public static final SORT_BY_NAME_ASC:I = 0x0

.field public static final SORT_BY_NAME_DESC:I = 0x1

.field public static final SORT_BY_RECENT_ASC:I = 0x2

.field public static final SORT_BY_RECENT_DESC:I = 0x3


# instance fields
.field private transient accentAndCaseInvariantTitle:Ljava/lang/String;

.field private atime:J

.field private description:Ljava/lang/String;

.field private dirty:Z

.field private id:J

.field private mtime:J

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;"
        }
    .end annotation
.end field

.field private remoteId:J

.field private sizeBytes:J

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/wikipedia/readinglist/database/ReadingListTable;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/database/ReadingListTable;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/database/ReadingList;->DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListTable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/List;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 38
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 42
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    return-void
.end method

.method static synthetic lambda$sort$0(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$1(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 0

    .line 143
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$2(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 2

    .line 146
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$3(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/database/ReadingListPage;)I
    .locals 2

    .line 149
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$4(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;)I
    .locals 0

    .line 159
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$5(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;)I
    .locals 0

    .line 162
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$6(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;)I
    .locals 2

    .line 165
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sort$7(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;)I
    .locals 2

    .line 168
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortGenericList$10(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 209
    instance-of v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$sortGenericList$11(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 218
    instance-of v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    .line 219
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v0

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$sortGenericList$8(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 191
    instance-of v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    .line 192
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$sortGenericList$9(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 200
    instance-of v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_0

    .line 201
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sort(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$pEVUpxlGEOZ37nofzAcNoNAsOWA;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$pEVUpxlGEOZ37nofzAcNoNAsOWA;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$RbS9fpVD47CzHqvclxKIHOCuuCA;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$RbS9fpVD47CzHqvclxKIHOCuuCA;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 162
    :cond_2
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$LwlzpnDgpmzKxgP25iSgQcswaqk;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 159
    :cond_3
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$tJL3ibxwjlEQ0WQYSgu3kR7_cnA;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$tJL3ibxwjlEQ0WQYSgu3kR7_cnA;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 p1, 0x0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 176
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p1, v1

    :cond_5
    if-eqz p1, :cond_6

    .line 182
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 183
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public static sort(Lorg/wikipedia/readinglist/database/ReadingList;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$6UemwKDh1vW79o8857tTrcRa12o;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$6UemwKDh1vW79o8857tTrcRa12o;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$B3vjbZVsjHLVV0xwK0q3684vc7k;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$B3vjbZVsjHLVV0xwK0q3684vc7k;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$Hs87wnMFN4_R2qGwbsLbU-wyZWA;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$Hs87wnMFN4_R2qGwbsLbU-wyZWA;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$P-jZyUgZc7FwDVxWY7OD3WSisFc;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$P-jZyUgZc7FwDVxWY7OD3WSisFc;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-void
.end method

.method public static sortGenericList(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$zUrHOqoJlWIVgyCACEUOSUi8vrc;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$zUrHOqoJlWIVgyCACEUOSUi8vrc;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$cudPv4_nZ2urxt-tUa4nGjuQnNc;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$cudPv4_nZ2urxt-tUa4nGjuQnNc;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 199
    :cond_2
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$4XxrknoUeJq5JfclFj4X9OKPN-A;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 190
    :cond_3
    sget-object p1, Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$xbVL2vT1OyZkYZagnipSgSvXam0;->INSTANCE:Lorg/wikipedia/readinglist/database/-$$Lambda$ReadingList$xbVL2vT1OyZkYZagnipSgSvXam0;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 p1, 0x0

    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 231
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p1, v1

    :cond_5
    if-eqz p1, :cond_6

    .line 237
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 238
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public accentAndCaseInvariantTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->accentAndCaseInvariantTitle:Ljava/lang/String;

    return-object v0
.end method

.method public atime()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    return-wide v0
.end method

.method public atime(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    return-void
.end method

.method public dbTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    return-object v0
.end method

.method public description(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    return-void
.end method

.method public dirty(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    return-void
.end method

.method public dirty()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    return v0
.end method

.method public id()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    return-wide v0
.end method

.method public id(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    return-void
.end method

.method public isDefault()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public mtime()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    return-wide v0
.end method

.method public mtime(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    return-void
.end method

.method public numPagesOffline()I
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 52
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public pages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/List;

    return-object v0
.end method

.method public remoteId()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    return-wide v0
.end method

.method public remoteId(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    return-void
.end method

.method public sizeBytes()J
    .locals 7

    .line 114
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 115
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public sizeBytes(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes:J

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const v1, 0x7f10008e

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public title(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingList;->title:Ljava/lang/String;

    return-void
.end method

.method public touch()V
    .locals 2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    return-void
.end method
