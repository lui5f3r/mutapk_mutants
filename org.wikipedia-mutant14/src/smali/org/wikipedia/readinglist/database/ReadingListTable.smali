.class public Lorg/wikipedia/readinglist/database/ReadingListTable;
.super Lorg/wikipedia/database/DatabaseTable;
.source "ReadingListTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/DatabaseTable<",
        "Lorg/wikipedia/readinglist/database/ReadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VER_INTRODUCED:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract;->URI:Landroid/net/Uri;

    const-string v1, "localreadinglist"

    invoke-direct {p0, v1, v0}, Lorg/wikipedia/database/DatabaseTable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object p1

    return-object p1
.end method

.method public fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/readinglist/database/ReadingList;
    .locals 3

    .line 23
    new-instance v0, Lorg/wikipedia/readinglist/database/ReadingList;

    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    .line 24
    invoke-virtual {v2, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->id(J)V

    .line 26
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->atime(J)V

    .line 27
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime(J)V

    .line 28
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes(J)V

    .line 29
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DIRTY:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/IntColumn;->val(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty(Z)V

    .line 30
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId(J)V

    return-object v0
.end method

.method public getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/wikipedia/database/column/Column<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lorg/wikipedia/database/DatabaseTable;->getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DIRTY:Lorg/wikipedia/database/column/IntColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/wikipedia/database/column/Column;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/wikipedia/database/column/Column;

    return-object p1
.end method

.method protected getDBVersionIntroducedAt()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected bridge synthetic getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListTable;->getPrimaryKeySelection(Lorg/wikipedia/readinglist/database/ReadingList;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimaryKeySelection(Lorg/wikipedia/readinglist/database/ReadingList;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    sget-object p2, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnfilteredPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListTable;->getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/readinglist/database/ReadingList;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/readinglist/database/ReadingList;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->dbTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListTable;->toContentValues(Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected toContentValues(Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/ContentValues;
    .locals 4

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->dbTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->mtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->atime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DIRTY:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
