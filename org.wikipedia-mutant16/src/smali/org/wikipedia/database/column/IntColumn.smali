.class public Lorg/wikipedia/database/column/IntColumn;
.super Lorg/wikipedia/database/column/Column;
.source "IntColumn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/column/Column<",
        "Ljava/lang/Integer;",
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
.method public val(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/Column;->getInt(Landroid/database/Cursor;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic val(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/IntColumn;->val(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
