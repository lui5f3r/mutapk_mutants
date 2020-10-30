.class public Lorg/wikipedia/database/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "wikipedia.db"

.field private static final DATABASE_VERSION:I = 0x15


# instance fields
.field private final databaseTables:[Lorg/wikipedia/database/DatabaseTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/wikipedia/database/DatabaseTable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "wikipedia.db"

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/16 p1, 0x8

    new-array p1, p1, [Lorg/wikipedia/database/DatabaseTable;

    .line 22
    sget-object v0, Lorg/wikipedia/history/HistoryEntry;->DATABASE_TABLE:Lorg/wikipedia/history/HistoryEntryDatabaseTable;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/pageimages/PageImage;->DATABASE_TABLE:Lorg/wikipedia/pageimages/PageImageDatabaseTable;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/search/RecentSearch;->DATABASE_TABLE:Lorg/wikipedia/search/RecentSearchDatabaseTable;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/edit/summaries/EditSummary;->DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/readinglist/database/ReadingList;->DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListTable;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListPageTable;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->INSTANCE:Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    iput-object p1, p0, Lorg/wikipedia/database/Database;->databaseTables:[Lorg/wikipedia/database/DatabaseTable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 39
    iget-object v0, p0, Lorg/wikipedia/database/Database;->databaseTables:[Lorg/wikipedia/database/DatabaseTable;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/16 v5, 0x15

    .line 40
    invoke-virtual {v4, p1, v2, v5}, Lorg/wikipedia/database/DatabaseTable;->upgradeSchema(Landroid/database/sqlite/SQLiteDatabase;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->i(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromDatabaseVersion"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/wikipedia/database/Database;->databaseTables:[Lorg/wikipedia/database/DatabaseTable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3, p1, p2, p3}, Lorg/wikipedia/database/DatabaseTable;->upgradeSchema(Landroid/database/sqlite/SQLiteDatabase;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
