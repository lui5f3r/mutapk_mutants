.class public final Lorg/wikipedia/util/BatchUtil;
.super Ljava/lang/Object;
.source "BatchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/util/BatchUtil$Callback;,
        Lorg/wikipedia/util/BatchUtil$Handler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeBatches(Ljava/util/List;Lorg/wikipedia/util/BatchUtil$Handler;Lorg/wikipedia/util/BatchUtil$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Lorg/wikipedia/util/BatchUtil$Handler<",
            "TT;>;",
            "Lorg/wikipedia/util/BatchUtil$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lorg/wikipedia/util/BatchUtil$1;

    invoke-direct {v4, p2}, Lorg/wikipedia/util/BatchUtil$1;-><init>(Lorg/wikipedia/util/BatchUtil$Callback;)V

    .line 30
    invoke-interface {p1, v1, v3, v4}, Lorg/wikipedia/util/BatchUtil$Handler;->handleBatch(Ljava/util/List;ILorg/wikipedia/util/BatchUtil$Callback;)V

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
