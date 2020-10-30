.class public final enum Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;
.super Ljava/lang/Enum;
.source "DescriptionEditFunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/analytics/DescriptionEditFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

.field public static final enum EXISTING:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

.field public static final enum NEW:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;


# instance fields
.field private logString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    const-string v1, "NEW"

    const/4 v2, 0x0

    const-string v3, "new"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->NEW:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 14
    new-instance v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    const-string v1, "EXISTING"

    const/4 v3, 0x1

    const-string v4, "existing"

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->EXISTING:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 12
    sget-object v4, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->NEW:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->$VALUES:[Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->logString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;
    .locals 1

    .line 12
    const-class v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;
    .locals 1

    .line 12
    sget-object v0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->$VALUES:[Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    invoke-virtual {v0}, [Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    return-object v0
.end method


# virtual methods
.method public toLogString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->logString:Ljava/lang/String;

    return-object v0
.end method
