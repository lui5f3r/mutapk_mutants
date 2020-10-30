.class public final Lorg/wikipedia/offline/OfflineObjectTable;
.super Lorg/wikipedia/database/DatabaseTable;
.source "OfflineObjectTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/DatabaseTable<",
        "Lorg/wikipedia/offline/OfflineObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

.field private static final DB_VER_INTRODUCED:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/wikipedia/offline/OfflineObjectTable;

    invoke-direct {v0}, Lorg/wikipedia/offline/OfflineObjectTable;-><init>()V

    sput-object v0, Lorg/wikipedia/offline/OfflineObjectTable;->DATABASE_TABLE:Lorg/wikipedia/offline/OfflineObjectTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract;->URI:Landroid/net/Uri;

    const-string v1, "offlineobject"

    invoke-direct {p0, v1, v0}, Lorg/wikipedia/database/DatabaseTable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/wikipedia/offline/OfflineObjectTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;

    move-result-object p1

    return-object p1
.end method

.method public fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/offline/OfflineObject;
    .locals 7

    .line 26
    new-instance v0, Lorg/wikipedia/offline/OfflineObject;

    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 27
    invoke-virtual {v2, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->PATH:Lorg/wikipedia/database/column/StrColumn;

    .line 28
    invoke-virtual {v3, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->STATUS:Lorg/wikipedia/database/column/IntColumn;

    .line 29
    invoke-virtual {v4, p1}, Lorg/wikipedia/database/column/IntColumn;->val(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/wikipedia/offline/OfflineObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->USEDBY:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 33
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lorg/wikipedia/database/DatabaseTable;->getColumnsAdded(I)[Lorg/wikipedia/database/column/Column;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->PATH:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->USEDBY:Lorg/wikipedia/database/column/StrColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->STATUS:Lorg/wikipedia/database/column/IntColumn;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
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

    const/16 v0, 0x14

    return v0
.end method

.method protected bridge synthetic getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/offline/OfflineObjectTable;->getPrimaryKeySelection(Lorg/wikipedia/offline/OfflineObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPrimaryKeySelection(Lorg/wikipedia/offline/OfflineObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    sget-object p2, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnfilteredPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {p0, p1}, Lorg/wikipedia/offline/OfflineObjectTable;->getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/offline/OfflineObject;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnfilteredPrimaryKeySelectionArgs(Lorg/wikipedia/offline/OfflineObject;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {p0, p1}, Lorg/wikipedia/offline/OfflineObjectTable;->toContentValues(Lorg/wikipedia/offline/OfflineObject;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected toContentValues(Lorg/wikipedia/offline/OfflineObject;)Landroid/content/ContentValues;
    .locals 4

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->URL:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->PATH:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->STATUS:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    sget-object v1, Lorg/wikipedia/database/contract/OfflineObjectContract$Col;->USEDBY:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/offline/OfflineObject;->getUsedBy()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
