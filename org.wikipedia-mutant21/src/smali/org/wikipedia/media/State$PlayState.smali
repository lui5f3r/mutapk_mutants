.class final enum Lorg/wikipedia/media/State$PlayState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/media/State$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/media/State$PlayState;

.field public static final enum PAUSED:Lorg/wikipedia/media/State$PlayState;

.field public static final enum PLAYING:Lorg/wikipedia/media/State$PlayState;

.field public static final enum STOPPED:Lorg/wikipedia/media/State$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lorg/wikipedia/media/State$PlayState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/media/State$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    new-instance v0, Lorg/wikipedia/media/State$PlayState;

    const-string v1, "PLAYING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/media/State$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$PlayState;->PLAYING:Lorg/wikipedia/media/State$PlayState;

    new-instance v0, Lorg/wikipedia/media/State$PlayState;

    const-string v1, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/media/State$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$PlayState;->PAUSED:Lorg/wikipedia/media/State$PlayState;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/wikipedia/media/State$PlayState;

    .line 13
    sget-object v5, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    aput-object v5, v1, v2

    sget-object v2, Lorg/wikipedia/media/State$PlayState;->PLAYING:Lorg/wikipedia/media/State$PlayState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/wikipedia/media/State$PlayState;->$VALUES:[Lorg/wikipedia/media/State$PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/media/State$PlayState;
    .locals 1

    .line 13
    const-class v0, Lorg/wikipedia/media/State$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/media/State$PlayState;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/media/State$PlayState;
    .locals 1

    .line 13
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->$VALUES:[Lorg/wikipedia/media/State$PlayState;

    invoke-virtual {v0}, [Lorg/wikipedia/media/State$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/media/State$PlayState;

    return-object v0
.end method
