.class public final Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;
.super Ljava/lang/Object;
.source "JavaScriptActionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/bridge/JavaScriptActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageHitInfo"
.end annotation


# instance fields
.field private final centerCrop:Z

.field private final height:F

.field private final left:F

.field private final src:Ljava/lang/String;

.field private final top:F

.field private final width:F


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;-><init>(FFFFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;Z)V
    .locals 1

    const-string v0, "src"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    iput p2, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    iput p3, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    iput p4, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    iput-object p5, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p8, 0x0

    goto :goto_0

    :cond_0
    move p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const-string p5, ""

    :cond_4
    move-object v3, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    const/4 p6, 0x0

    const/4 p7, 0x0

    goto :goto_4

    :cond_5
    move p7, p6

    :goto_4
    move-object p1, p0

    move p2, p8

    move p3, v1

    move p4, v2

    move p5, v0

    move-object p6, v3

    .line 164
    invoke-direct/range {p1 .. p7}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;-><init>(FFFFLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;FFFFLjava/lang/String;ZILjava/lang/Object;)Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->copy(FFFFLjava/lang/String;Z)Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    return v0
.end method

.method public final copy(FFFFLjava/lang/String;Z)Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;
    .locals 8

    const-string v0, "src"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;-><init>(FFFFLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    iget v1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    iget v1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    iget v1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    iget v1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    iget-object v1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    iget-boolean p1, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCenterCrop()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    return v0
.end method

.method public final getHeight()F
    .locals 1

    .line 163
    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    return v0
.end method

.method public final getLeft()F
    .locals 1

    .line 163
    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    return v0
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()F
    .locals 1

    .line 163
    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .line 163
    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageHitInfo(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", centerCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->centerCrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
