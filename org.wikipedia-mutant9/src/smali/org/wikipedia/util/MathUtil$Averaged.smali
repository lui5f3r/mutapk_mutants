.class public Lorg/wikipedia/util/MathUtil$Averaged;
.super Ljava/lang/Object;
.source "MathUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/util/MathUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Averaged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private sampleSize:I

.field private sampleSum:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(Ljava/lang/Number;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    iget-wide v0, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    .line 17
    iget p1, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    return-void
.end method

.method public getAverage()D
    .locals 5

    .line 21
    iget v0, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    int-to-double v3, v0

    div-double v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSum:D

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/wikipedia/util/MathUtil$Averaged;->sampleSize:I

    return-void
.end method
