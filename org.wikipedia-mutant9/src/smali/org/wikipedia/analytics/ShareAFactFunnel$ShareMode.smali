.class public final enum Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;
.super Ljava/lang/Enum;
.source "ShareAFactFunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/analytics/ShareAFactFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

.field public static final enum image:Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

.field public static final enum text:Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    new-instance v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    const-string v1, "image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->image:Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    .line 81
    new-instance v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    const-string v1, "text"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->text:Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    .line 79
    sget-object v4, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->image:Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->$VALUES:[Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;
    .locals 1

    .line 79
    const-class v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;
    .locals 1

    .line 79
    sget-object v0, Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->$VALUES:[Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    invoke-virtual {v0}, [Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;

    return-object v0
.end method
