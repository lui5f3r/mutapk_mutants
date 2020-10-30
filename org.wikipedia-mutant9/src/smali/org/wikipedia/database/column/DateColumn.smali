.class public Lorg/wikipedia/database/column/DateColumn;
.super Lorg/wikipedia/database/column/Column;
.source "DateColumn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/column/Column<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/database/column/Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic val(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/DateColumn;->val(Landroid/database/Cursor;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public val(Landroid/database/Cursor;)Ljava/util/Date;
    .locals 3

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/Column;->getLong(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
