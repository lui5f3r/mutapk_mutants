.class public Lorg/wikipedia/database/column/CodeEnumColumn;
.super Lorg/wikipedia/database/column/Column;
.source "CodeEnumColumn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/wikipedia/database/column/Column<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final codeEnum:Lorg/wikipedia/model/CodeEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/CodeEnum<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/model/CodeEnum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/wikipedia/model/CodeEnum<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "integer not null"

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/database/column/Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p3, p0, Lorg/wikipedia/database/column/CodeEnumColumn;->codeEnum:Lorg/wikipedia/model/CodeEnum;

    return-void
.end method


# virtual methods
.method public val(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/wikipedia/database/column/CodeEnumColumn;->codeEnum:Lorg/wikipedia/model/CodeEnum;

    invoke-virtual {p0, p1}, Lorg/wikipedia/database/column/Column;->getInt(Landroid/database/Cursor;)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/wikipedia/model/CodeEnum;->enumeration(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
