.class public Lorg/wikipedia/history/HistoryEntryDatabaseTable;
.super Lorg/wikipedia/database/DatabaseTable;
.source "HistoryEntryDatabaseTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/DatabaseTable<",
        "Lorg/wikipedia/history/HistoryEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VER_DISPLAY_TITLE_ADDED:I = 0x13

.field private static final DB_VER_LANG_ADDED:I = 0xa

.field private static final DB_VER_NAMESPACE_ADDED:I = 0x6

.field private static final DB_VER_TIME_SPENT_ADDED:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$Page;->URI:Landroid/net/Uri;

    const-string v1, "history"

    invoke-direct {p0, v1, v0}, Lorg/wikipedia/database/DatabaseTable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/history/HistoryEntry;
    .locals 4

    .line 29
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v2, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    sget-object v2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v2, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v3, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 31
    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/DateColumn;->val(Landroid/database/Cursor;)Ljava/util/Date;

    move-result-object v0

    .line 32
    sget-object v2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SOURCE:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v2, p1}, Lorg/wikipedia/database/column/IntColumn;->val(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 33
    sget-object v3, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v3, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    invoke-direct {p1, v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;I)V

    return-object p1
.end method

.method public getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/wikipedia/database/column/Column<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0xf

    if-eq p1, v2, :cond_1

    const/16 v2, 0x13

    if-eq p1, v2, :cond_0

    .line 66
    invoke-super {p0, p1}, Lorg/wikipedia/database/DatabaseTable;->getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v1, [Lorg/wikipedia/database/column/Column;

    .line 64
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v1, p1, v0

    return-object p1

    :cond_1
    new-array p1, v1, [Lorg/wikipedia/database/column/Column;

    .line 62
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIME_SPENT:Lorg/wikipedia/database/column/IntColumn;

    aput-object v1, p1, v0

    return-object p1

    :cond_2
    new-array p1, v1, [Lorg/wikipedia/database/column/Column;

    .line 60
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    aput-object v1, p1, v0

    return-object p1

    :cond_3
    new-array p1, v1, [Lorg/wikipedia/database/column/Column;

    .line 58
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v1, p1, v0

    return-object p1

    :cond_4
    const/4 p1, 0x5

    new-array p1, p1, [Lorg/wikipedia/database/column/Column;

    .line 56
    sget-object v2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->ID:Lorg/wikipedia/database/column/LongColumn;

    aput-object v2, p1, v0

    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v0, p1, v1

    const/4 v0, 0x2

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SOURCE:Lorg/wikipedia/database/column/IntColumn;

    aput-object v1, p1, v0

    return-object p1
.end method

.method protected getDBVersionIntroducedAt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;->getPrimaryKeySelection(Lorg/wikipedia/history/HistoryEntry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimaryKeySelection(Lorg/wikipedia/history/HistoryEntry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    sget-object p2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnfilteredPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;->getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/history/HistoryEntry;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/history/HistoryEntry;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 80
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 81
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;->toContentValues(Lorg/wikipedia/history/HistoryEntry;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected toContentValues(Lorg/wikipedia/history/HistoryEntry;)Landroid/content/ContentValues;
    .locals 4

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SOURCE:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIME_SPENT:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTimeSpentSec()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
