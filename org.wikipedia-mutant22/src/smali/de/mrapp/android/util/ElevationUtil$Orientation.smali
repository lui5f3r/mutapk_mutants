.class public final enum Lde/mrapp/android/util/ElevationUtil$Orientation;
.super Ljava/lang/Enum;
.source "ElevationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/ElevationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/ElevationUtil$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum BOTTOM_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

.field public static final enum TOP_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 58
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "TOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 63
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 68
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 73
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "TOP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 78
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "TOP_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 83
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "BOTTOM_LEFT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 88
    new-instance v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lde/mrapp/android/util/ElevationUtil$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    const/16 v1, 0x8

    new-array v1, v1, [Lde/mrapp/android/util/ElevationUtil$Orientation;

    .line 48
    sget-object v10, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v10, v1, v2

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v3

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v4

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v5

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v6

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP_RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v7

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM_LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lde/mrapp/android/util/ElevationUtil$Orientation;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 5

    .line 124
    invoke-static {}, Lde/mrapp/android/util/ElevationUtil$Orientation;->values()[Lde/mrapp/android/util/ElevationUtil$Orientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 125
    invoke-virtual {v3}, Lde/mrapp/android/util/ElevationUtil$Orientation;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 1

    .line 48
    const-class v0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 1

    .line 48
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$Orientation;->$VALUES:[Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-virtual {v0}, [Lde/mrapp/android/util/ElevationUtil$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 111
    iget v0, p0, Lde/mrapp/android/util/ElevationUtil$Orientation;->value:I

    return v0
.end method
