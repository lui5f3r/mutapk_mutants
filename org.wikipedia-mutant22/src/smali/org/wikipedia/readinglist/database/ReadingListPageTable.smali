.class public Lorg/wikipedia/readinglist/database/ReadingListPageTable;
.super Lorg/wikipedia/database/DatabaseTable;
.source "ReadingListPageTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/DatabaseTable<",
        "Lorg/wikipedia/readinglist/database/ReadingListPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VER_API_TITLE_ADDED:I = 0x13

.field private static final DB_VER_INTRODUCED:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract;->URI:Landroid/net/Uri;

    const-string v1, "localreadinglistpage"

    invoke-direct {p0, v1, v0}, Lorg/wikipedia/database/DatabaseTable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private createDefaultList(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 121
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 126
    :cond_1
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->createDefaultList(Landroid/database/sqlite/SQLiteDatabase;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private renameListsWithIdenticalNameAsDefault(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 131
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->dbTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const v3, 0x7f10008e

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    const v2, 0x7f100348

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->dbTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/database/ReadingList;->title(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v5}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateList(Landroid/database/sqlite/SQLiteDatabase;Lorg/wikipedia/readinglist/database/ReadingList;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    return-object p1
.end method

.method public fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 10

    .line 28
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v9, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v2, v1, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :goto_0
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/NamespaceColumn;

    .line 31
    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/CodeEnumColumn;->val(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/wikipedia/page/Namespace;

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 32
    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 33
    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LISTID:Lorg/wikipedia/database/column/LongColumn;

    .line 34
    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id(J)V

    .line 36
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->THUMBNAIL_URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime(J)V

    .line 39
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime(J)V

    .line 40
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REVID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId(J)V

    .line 41
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->OFFLINE:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline(Z)V

    .line 42
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->STATUS:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status(J)V

    .line 43
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes(J)V

    .line 44
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V

    .line 45
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang(Ljava/lang/String;)V

    return-object v9
.end method

.method public getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/wikipedia/database/column/Column<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Lorg/wikipedia/database/DatabaseTable;->getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lorg/wikipedia/database/column/Column;

    const/4 v0, 0x0

    .line 70
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v1, p1, v0

    return-object p1

    .line 52
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LISTID:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/NamespaceColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->THUMBNAIL_URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REVID:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->OFFLINE:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->STATUS:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
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

    .line 19
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->getPrimaryKeySelection(Lorg/wikipedia/readinglist/database/ReadingListPage;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimaryKeySelection(Lorg/wikipedia/readinglist/database/ReadingListPage;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    sget-object p2, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnfilteredPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 19
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/readinglist/database/ReadingListPage;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/readinglist/database/ReadingListPage;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public onUpgradeSchema(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/16 p2, 0x12

    if-ne p3, p2, :cond_0

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->createDefaultList(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->renameListsWithIdenticalNameAsDefault(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 19
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;->toContentValues(Lorg/wikipedia/readinglist/database/ReadingListPage;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected toContentValues(Lorg/wikipedia/readinglist/database/ReadingListPage;)Landroid/content/ContentValues;
    .locals 4

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LISTID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/NamespaceColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/Namespace;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->THUMBNAIL_URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REVID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->OFFLINE:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->STATUS:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    sget-object v1, Lorg/wikipedia/database/contract/ReadingListPageContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
