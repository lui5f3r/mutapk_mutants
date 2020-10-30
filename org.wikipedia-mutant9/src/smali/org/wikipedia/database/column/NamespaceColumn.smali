.class public Lorg/wikipedia/database/column/NamespaceColumn;
.super Lorg/wikipedia/database/column/CodeEnumColumn;
.source "NamespaceColumn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/database/column/CodeEnumColumn<",
        "Lorg/wikipedia/page/Namespace;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    sget-object v0, Lorg/wikipedia/page/Namespace;->CODE_ENUM:Lorg/wikipedia/model/CodeEnum;

    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/database/column/CodeEnumColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/model/CodeEnum;)V

    return-void
.end method
