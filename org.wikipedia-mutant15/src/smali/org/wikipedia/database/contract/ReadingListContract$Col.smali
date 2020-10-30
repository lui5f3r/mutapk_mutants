.class public interface abstract Lorg/wikipedia/database/contract/ReadingListContract$Col;
.super Ljava/lang/Object;
.source "ReadingListContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/database/contract/ReadingListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Col"
.end annotation


# static fields
.field public static final ALL:[Ljava/lang/String;

.field public static final ATIME:Lorg/wikipedia/database/column/LongColumn;

.field public static final DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

.field public static final DIRTY:Lorg/wikipedia/database/column/IntColumn;

.field public static final ID:Lorg/wikipedia/database/column/IdColumn;

.field public static final MTIME:Lorg/wikipedia/database/column/LongColumn;

.field public static final REMOTEID:Lorg/wikipedia/database/column/LongColumn;

.field public static final SELECTION:[Ljava/lang/String;

.field public static final SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

.field public static final TITLE:Lorg/wikipedia/database/column/StrColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lorg/wikipedia/database/column/IdColumn;

    const-string v1, "localreadinglist"

    invoke-direct {v0, v1}, Lorg/wikipedia/database/column/IdColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    .line 18
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "readingListTitle"

    const-string v3, "text not null"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 19
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v2, "readingListMtime"

    const-string v3, "integer not null"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    .line 20
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v2, "readingListAtime"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    .line 21
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "readingListDescription"

    const-string v4, "text"

    invoke-direct {v0, v1, v2, v4}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    .line 22
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v2, "readingListSizeBytes"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    .line 23
    new-instance v0, Lorg/wikipedia/database/column/IntColumn;

    const-string v2, "readingListDirty"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/IntColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DIRTY:Lorg/wikipedia/database/column/IntColumn;

    .line 24
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v2, "readingListRemoteId"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/wikipedia/database/column/Column;

    .line 26
    sget-object v2, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/wikipedia/database/DbUtil;->qualifiedNames([Lorg/wikipedia/database/column/Column;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SELECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Lorg/wikipedia/database/column/Column;

    .line 27
    sget-object v2, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ID:Lorg/wikipedia/database/column/IdColumn;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/database/contract/ReadingListContract$Col;->TITLE:Lorg/wikipedia/database/column/StrColumn;

    aput-object v2, v1, v0

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->MTIME:Lorg/wikipedia/database/column/LongColumn;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ATIME:Lorg/wikipedia/database/column/LongColumn;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DESCRIPTION:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->SIZEBYTES:Lorg/wikipedia/database/column/LongColumn;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->DIRTY:Lorg/wikipedia/database/column/IntColumn;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->REMOTEID:Lorg/wikipedia/database/column/LongColumn;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/wikipedia/database/DbUtil;->qualifiedNames([Lorg/wikipedia/database/column/Column;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract$Col;->ALL:[Ljava/lang/String;

    return-void
.end method
