.class public Lorg/wikipedia/offline/OfflineObjectDbHelper;
.super Ljava/lang/Object;
.source "OfflineObjectDbHelper.java"


# static fields
.field private static INSTANCE:Lorg/wikipedia/offline/OfflineObjectDbHelper; = null

.field public static final OFFLINE_PATH:Ljava/lang/String; = "offline_files"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFilesForObject(Lorg/wikipedia/offline/OfflineObject;)V
    .locals 3

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".1"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 195
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getDatabase()Lorg/wikipedia/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 199
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getDatabase()Lorg/wikipedia/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lorg/wikipedia/offline/OfflineObjectDbHelper;
    .locals 1

    .line 27
    sget-object v0, Lorg/wikipedia/offline/OfflineObjectDbHelper;->INSTANCE:Lorg/wikipedia/offline/OfflineObjectDbHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lorg/wikipedia/offline/OfflineObjectDbHelper;

    invoke-direct {v0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;-><init>()V

    sput-object v0, Lorg/wikipedia/offline/OfflineObjectDbHelper;->INSTANCE:Lorg/wikipedia/offline/OfflineObjectDbHelper;

    .line 30
    :cond_0
    sget-object v0, Lorg/wikipedia/offline/OfflineObjectDbHelper;->INSTANCE:Lorg/wikipedia/offline/OfflineObjectDbHelper;

    return-object v0
.end method


# virtual methods
.method public addObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, " = ?"

    const-string v4, " = ? AND "

    .line 66
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 67
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v6, "offlineobject"

    const/4 v7, 0x0

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 72
    invoke-virtual {v8}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 73
    invoke-virtual {v8}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x2

    new-array v9, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v0, v9, v15

    const/4 v12, 0x1

    aput-object v1, v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v5, v13

    move-object/from16 v12, v16

    .line 71
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 76
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 77
    sget-object v6, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {v6, v5}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v5, :cond_1

    .line 79
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v6, :cond_2

    .line 82
    new-instance v6, Lorg/wikipedia/offline/OfflineObject;

    invoke-direct {v6, v0, v1, v2, v15}, Lorg/wikipedia/offline/OfflineObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 87
    :goto_1
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v5

    new-instance v8, Lorg/wikipedia/page/PageTitle;

    .line 88
    invoke-static/range {p2 .. p2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v9

    move-object/from16 v10, p4

    invoke-direct {v8, v10, v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-virtual {v5, v8}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {v6}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 90
    invoke-virtual {v6}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    const-string v5, "offlineobject"

    if-eqz v12, :cond_4

    .line 94
    :try_start_3
    sget-object v0, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    .line 95
    invoke-virtual {v0, v6}, Lorg/wikipedia/offline/OfflineObjectTable;->toContentValues(Lorg/wikipedia/offline/OfflineObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 94
    invoke-virtual {v13, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v6}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Existing offline object path is inconsistent."

    .line 98
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    .line 100
    :cond_5
    sget-object v2, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {v2, v6}, Lorg/wikipedia/offline/OfflineObjectTable;->toContentValues(Lorg/wikipedia/offline/OfflineObject;)Landroid/content/ContentValues;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 101
    invoke-virtual {v7}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 102
    invoke-virtual {v4}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/String;

    aput-object v0, v4, v15

    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 100
    invoke-virtual {v13, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update db entry for object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    .line 107
    :cond_6
    :goto_2
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 71
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_7

    .line 79
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 109
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    throw v0
.end method

.method public deleteObjectsForPageId(J)V
    .locals 10

    .line 114
    invoke-direct {p0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 115
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "offlineobject"

    const/4 v2, 0x0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->USEDBY:Lorg/wikipedia/database/column/StrColumn;

    .line 119
    invoke-virtual {v3}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIKE \'%|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    .line 118
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 121
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget-object v1, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {v1, v0}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v1}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 129
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/offline/OfflineObject;

    .line 132
    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, " = ?"

    const-string v4, " = ? AND "

    const-string v5, "offlineobject"

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 134
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 135
    invoke-virtual {v7}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 136
    invoke-virtual {v4}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 137
    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getLang()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 134
    invoke-virtual {v8, v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_4

    const-string v0, "Failed to delete item from database."

    .line 138
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    .line 140
    :cond_4
    invoke-static {p2}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->deleteFilesForObject(Lorg/wikipedia/offline/OfflineObject;)V

    goto :goto_1

    .line 142
    :cond_5
    sget-object v0, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {v0, p2}, Lorg/wikipedia/offline/OfflineObjectTable;->toContentValues(Lorg/wikipedia/offline/OfflineObject;)Landroid/content/ContentValues;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 143
    invoke-virtual {v9}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 144
    invoke-virtual {v4}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    .line 145
    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getLang()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v6

    .line 142
    invoke-virtual {v8, v5, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_3

    const-string p2, "Failed to update item in database."

    .line 146
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 150
    :cond_6
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 152
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_7

    .line 129
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 152
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    throw p1
.end method

.method public findObject(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/offline/OfflineObject;
    .locals 12

    .line 34
    invoke-direct {p0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " = ?"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v2}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 37
    invoke-virtual {v2}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v2}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v0, :cond_1

    new-array p2, v9, [Ljava/lang/String;

    aput-object p1, p2, v10

    move-object v4, p2

    goto :goto_1

    :cond_1
    new-array v0, v11, [Ljava/lang/String;

    aput-object p1, v0, v10

    aput-object p2, v0, v9

    move-object v4, v0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "offlineobject"

    const/4 v2, 0x0

    move-object v0, v8

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 40
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    sget-object p1, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {p1, p2}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p2, :cond_2

    .line 43
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p2, "/commons/thumb/"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "/"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 48
    array-length p2, p1

    if-le p2, v11, :cond_8

    .line 49
    array-length p2, p1

    sub-int/2addr p2, v11

    aget-object p1, p1, p2

    const-string p2, "\'"

    const-string v0, "%27"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    const-string v1, "offlineobject"

    const/4 v2, 0x0

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LIKE \'%/\' || ? || \'/%\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    .line 50
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 54
    sget-object p2, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {p2, p1}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 56
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p2

    :cond_6
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 50
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_7

    .line 56
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return-object p1

    :catchall_3
    move-exception p1

    .line 35
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p2, :cond_9

    .line 43
    :try_start_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v0
.end method

.method public getTotalBytesForPageId(J)J
    .locals 9

    .line 157
    invoke-direct {p0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->USEDBY:Lorg/wikipedia/database/column/StrColumn;

    .line 160
    invoke-virtual {v2}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE \'%|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "offlineobject"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 159
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-virtual {v1, v0}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 p1, 0x0

    .line 173
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/offline/OfflineObject;

    .line 174
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    :cond_3
    return-wide p1

    :catchall_0
    move-exception p1

    .line 159
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 169
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
.end method
