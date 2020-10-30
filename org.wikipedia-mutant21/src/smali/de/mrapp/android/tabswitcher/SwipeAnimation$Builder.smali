.class public Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;
.super Lde/mrapp/android/tabswitcher/Animation$Builder;
.source "SwipeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/SwipeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/tabswitcher/Animation$Builder<",
        "Lde/mrapp/android/tabswitcher/SwipeAnimation;",
        "Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

.field private relocateAnimationDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Animation$Builder;-><init>()V

    .line 73
    sget-object v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;->RIGHT_OR_BOTTOM:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->setDirection(Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    const-wide/16 v0, -0x1

    .line 74
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->setRelocateAnimationDuration(J)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    return-void
.end method


# virtual methods
.method public final create()Lde/mrapp/android/tabswitcher/SwipeAnimation;
    .locals 9

    .line 115
    new-instance v8, Lde/mrapp/android/tabswitcher/SwipeAnimation;

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/Animation$Builder;->duration:J

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/Animation$Builder;->interpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    iget-wide v5, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->relocateAnimationDuration:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/SwipeAnimation;-><init>(JLandroid/view/animation/Interpolator;Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;JLde/mrapp/android/tabswitcher/SwipeAnimation$1;)V

    return-object v8
.end method

.method public final setDirection(Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;
    .locals 2

    .line 89
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The direction may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->direction:Lde/mrapp/android/tabswitcher/SwipeAnimation$SwipeDirection;

    .line 91
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/Animation$Builder;->self()Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    return-object p1
.end method

.method public final setRelocateAnimationDuration(J)Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;
    .locals 6

    .line 106
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, -0x1

    const-string v5, "The relocate animation duration must be at least -1"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 108
    iput-wide p1, p0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->relocateAnimationDuration:J

    .line 109
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/Animation$Builder;->self()Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    return-object p1
.end method
