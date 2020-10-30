.class public Lde/mrapp/android/tabswitcher/SwipeAnimation;
.super Lde/mrapp/android/tabswitcher/Animation;
.source "SwipeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;,
        Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;
    }
.end annotation


# instance fields
.field private final direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

.field private final relocateAnimationDuration:J


# direct methods
.method private constructor <init>(JLandroid/view/animation/Interpolator;Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;J)V
    .locals 6

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/Animation;-><init>(JLandroid/view/animation/Interpolator;)V

    .line 152
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string p2, "The direction may not be null"

    invoke-virtual {p1, p4, p2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, -0x1

    const-string v5, "The relocate animation duration must be at least -1"

    move-wide v1, p5

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 155
    iput-object p4, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation;->direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    .line 156
    iput-wide p5, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation;->relocateAnimationDuration:J

    return-void
.end method

.method synthetic constructor <init>(JLandroid/view/animation/Interpolator;Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;JLde/mrapp/android/tabswitcher/SwipeAnimation$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p6}, Lde/mrapp/android/tabswitcher/SwipeAnimation;-><init>(JLandroid/view/animation/Interpolator;Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;J)V

    return-void
.end method


# virtual methods
.method public final getDirection()Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;
    .locals 1

    .line 167
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation;->direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    return-object v0
.end method

.method public final getRelocateAnimationDuration()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation;->relocateAnimationDuration:J

    return-wide v0
.end method
