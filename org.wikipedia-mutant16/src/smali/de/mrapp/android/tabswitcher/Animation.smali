.class public abstract Lde/mrapp/android/tabswitcher/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/Animation$Builder;
    }
.end annotation


# instance fields
.field private final duration:J

.field private final interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method protected constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 6

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, -0x1

    const-string v5, "The duration must be at least -1"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 137
    iput-wide p1, p0, Lde/mrapp/android/tabswitcher/Animation;->duration:J

    .line 138
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/Animation;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/Animation;->duration:J

    return-wide v0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 159
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Animation;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method
