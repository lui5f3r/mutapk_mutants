.class public final enum Lde/mrapp/util/datastructure/ListenerList$CompareMethod;
.super Ljava/lang/Enum;
.source "ListenerList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/util/datastructure/ListenerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/util/datastructure/ListenerList$CompareMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

.field public static final enum EQUALITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

.field public static final enum IDENTITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    new-instance v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    const-string v2, "EQUALITY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->EQUALITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    aput-object v1, v0, v3

    new-instance v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    const-string v2, "IDENTITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->IDENTITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    aput-object v1, v0, v3

    sput-object v0, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->$VALUES:[Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/util/datastructure/ListenerList$CompareMethod;
    .locals 1

    const-class v0, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    return-object p0
.end method

.method public static values()[Lde/mrapp/util/datastructure/ListenerList$CompareMethod;
    .locals 1

    sget-object v0, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->$VALUES:[Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    invoke-virtual {v0}, [Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    return-object v0
.end method
