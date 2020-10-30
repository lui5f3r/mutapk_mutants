.class public final enum Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;
.super Ljava/lang/Enum;
.source "SwipeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/SwipeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

.field public static final enum LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

.field public static final enum RIGHT_OR_BOTTOM:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    const-string v1, "LEFT_OR_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    .line 47
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    const-string v1, "RIGHT_OR_BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->RIGHT_OR_BOTTOM:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    const/4 v1, 0x2

    new-array v1, v1, [Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    .line 35
    sget-object v4, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->LEFT_OR_TOP:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->$VALUES:[Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;
    .locals 1

    .line 35
    const-class v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;
    .locals 1

    .line 35
    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->$VALUES:[Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    invoke-virtual {v0}, [Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    return-object v0
.end method
