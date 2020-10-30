.class final enum Lorg/wikipedia/media/State$LoadState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/media/State$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/media/State$LoadState;

.field public static final enum DEINIT:Lorg/wikipedia/media/State$LoadState;

.field public static final enum INIT:Lorg/wikipedia/media/State$LoadState;

.field public static final enum LOADED:Lorg/wikipedia/media/State$LoadState;

.field public static final enum LOADING:Lorg/wikipedia/media/State$LoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lorg/wikipedia/media/State$LoadState;

    const-string v1, "DEINIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/media/State$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$LoadState;->DEINIT:Lorg/wikipedia/media/State$LoadState;

    new-instance v0, Lorg/wikipedia/media/State$LoadState;

    const-string v1, "INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/media/State$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$LoadState;->INIT:Lorg/wikipedia/media/State$LoadState;

    new-instance v0, Lorg/wikipedia/media/State$LoadState;

    const-string v1, "LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/media/State$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$LoadState;->LOADING:Lorg/wikipedia/media/State$LoadState;

    new-instance v0, Lorg/wikipedia/media/State$LoadState;

    const-string v1, "LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/wikipedia/media/State$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/media/State$LoadState;->LOADED:Lorg/wikipedia/media/State$LoadState;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/wikipedia/media/State$LoadState;

    .line 9
    sget-object v6, Lorg/wikipedia/media/State$LoadState;->DEINIT:Lorg/wikipedia/media/State$LoadState;

    aput-object v6, v1, v2

    sget-object v2, Lorg/wikipedia/media/State$LoadState;->INIT:Lorg/wikipedia/media/State$LoadState;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/media/State$LoadState;->LOADING:Lorg/wikipedia/media/State$LoadState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/wikipedia/media/State$LoadState;->$VALUES:[Lorg/wikipedia/media/State$LoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/media/State$LoadState;
    .locals 1

    .line 9
    const-class v0, Lorg/wikipedia/media/State$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/media/State$LoadState;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/media/State$LoadState;
    .locals 1

    .line 9
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->$VALUES:[Lorg/wikipedia/media/State$LoadState;

    invoke-virtual {v0}, [Lorg/wikipedia/media/State$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/media/State$LoadState;

    return-object v0
.end method
