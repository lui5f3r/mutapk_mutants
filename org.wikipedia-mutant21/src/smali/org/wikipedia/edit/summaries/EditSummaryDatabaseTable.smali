.class public Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;
.super Lorg/wikipedia/database/DatabaseTable;
.source "EditSummaryDatabaseTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/DatabaseTable<",
        "Lorg/wikipedia/edit/summaries/EditSummary;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VER_INTRODUCED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    sget-object v0, Lorg/wikipedia/database/contract/EditHistoryContract$Summary;->URI:Landroid/net/Uri;

    const-string v1, "editsummaries"

    invoke-direct {p0, v1, v0}, Lorg/wikipedia/database/DatabaseTable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/edit/summaries/EditSummary;

    move-result-object p1

    return-object p1
.end method

.method public fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/edit/summaries/EditSummary;
    .locals 2

    .line 25
    sget-object v0, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SUMMARY:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->LAST_USED:Lorg/wikipedia/database/column/DateColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/DateColumn;->val(Landroid/database/Cursor;)Ljava/util/Date;

    move-result-object p1

    .line 27
    new-instance v1, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-direct {v1, v0, p1}, Lorg/wikipedia/edit/summaries/EditSummary;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v1
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

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lorg/wikipedia/database/DatabaseTable;->getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Lorg/wikipedia/database/column/Column;

    const/4 v1, 0x0

    .line 48
    sget-object v2, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->ID:Lorg/wikipedia/database/column/LongColumn;

    aput-object v2, p1, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SUMMARY:Lorg/wikipedia/database/column/StrColumn;

    aput-object v2, p1, v1

    sget-object v1, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->LAST_USED:Lorg/wikipedia/database/column/DateColumn;

    aput-object v1, p1, v0

    return-object p1
.end method

.method protected getDBVersionIntroducedAt()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected bridge synthetic getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;->getPrimaryKeySelection(Lorg/wikipedia/edit/summaries/EditSummary;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimaryKeySelection(Lorg/wikipedia/edit/summaries/EditSummary;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    sget-object p2, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnfilteredPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;->getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/edit/summaries/EditSummary;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/edit/summaries/EditSummary;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummary;->getSummary()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;->toContentValues(Lorg/wikipedia/edit/summaries/EditSummary;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected toContentValues(Lorg/wikipedia/edit/summaries/EditSummary;)Landroid/content/ContentValues;
    .locals 4

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    sget-object v1, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SUMMARY:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummary;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->LAST_USED:Lorg/wikipedia/database/column/DateColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummary;->getLastUsed()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
