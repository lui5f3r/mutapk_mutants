.class public interface abstract Lorg/wikipedia/database/contract/SearchHistoryContract$Col;
.super Ljava/lang/Object;
.source "SearchHistoryContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/database/contract/SearchHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Col"
.end annotation


# static fields
.field public static final ID:Lorg/wikipedia/database/column/LongColumn;

.field public static final SELECTION:[Ljava/lang/String;

.field public static final TEXT:Lorg/wikipedia/database/column/StrColumn;

.field public static final TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v1, "recentsearches"

    const-string v2, "_id"

    const-string v3, "integer primary key"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->ID:Lorg/wikipedia/database/column/LongColumn;

    .line 17
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "text"

    const-string v3, "string"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->TEXT:Lorg/wikipedia/database/column/StrColumn;

    .line 18
    new-instance v0, Lorg/wikipedia/database/column/DateColumn;

    const-string v2, "timestamp"

    const-string v3, "integer"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/DateColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/wikipedia/database/column/Column;

    .line 20
    sget-object v1, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->TEXT:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/wikipedia/database/DbUtil;->qualifiedNames([Lorg/wikipedia/database/column/Column;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    return-void
.end method
