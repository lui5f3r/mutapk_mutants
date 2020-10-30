.class public Lorg/wikipedia/database/column/IdColumn;
.super Lorg/wikipedia/database/column/LongColumn;
.source "IdColumn.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_id"

    const-string v1, "integer primary key autoincrement"

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
