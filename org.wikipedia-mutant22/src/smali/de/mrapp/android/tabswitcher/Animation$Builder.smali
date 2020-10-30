.class public abstract Lde/mrapp/android/tabswitcher/Animation$Builder;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimationType:",
        "Ljava/lang/Object;",
        "BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected duration:J

.field protected interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 68
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/tabswitcher/Animation$Builder;->setDuration(J)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/Animation$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final self()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    return-object p0
.end method

.method public final setDuration(J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TBuilderType;"
        }
    .end annotation

    .line 92
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, -0x1

    const-string v5, "The duration must be at least -1"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 93
    iput-wide p1, p0, Lde/mrapp/android/tabswitcher/Animation$Builder;->duration:J

    .line 94
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/Animation$Builder;->self()Ljava/lang/Object;

    return-object p0
.end method

.method public final setInterpolator(Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Interpolator;",
            ")TBuilderType;"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Animation$Builder;->interpolator:Landroid/view/animation/Interpolator;

    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/Animation$Builder;->self()Ljava/lang/Object;

    return-object p0
.end method
