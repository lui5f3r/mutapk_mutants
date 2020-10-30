.class public Lorg/wikipedia/database/column/LongColumn;
.super Lorg/wikipedia/database/column/Column;
.source "LongColumn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/column/Column<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/database/column/Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public val(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 14
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/Column;->getLong(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic val(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/LongColumn;->val(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
